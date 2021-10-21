package model.reponsitory.impl;

import model.bean.MatBang.LoaiMatbang;
import model.reponsitory.LoaiMatBangRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiMatBangRepositoryImp implements LoaiMatBangRepository {
    private BaseRepository baseRepository;
    @Override
    public List<LoaiMatbang> getList() {
        List<LoaiMatbang> loaiMatbangList = new ArrayList<>();
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        PreparedStatement statement = null;
        ResultSet resultSet = null;

        if (connection != null) {
            try {
                statement = connection.prepareStatement("select loai_mat_bang_id, loai_mat_bang_name\n" +
                        "from loai_mat_bang;");
                resultSet = statement.executeQuery();

                LoaiMatbang loaiMatbang = null;
                while (resultSet.next()) {

                    int id = resultSet.getInt("loai_mat_bang_id");
                    String name = resultSet.getString("loai_mat_bang_name");

                    loaiMatbang = new LoaiMatbang(id, name);
                    loaiMatbangList.add(loaiMatbang);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
        }
        return loaiMatbangList;

    }
}
