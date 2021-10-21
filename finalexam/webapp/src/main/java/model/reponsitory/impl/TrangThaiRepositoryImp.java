package model.reponsitory.impl;

import model.bean.MatBang.TrangThai;
import model.reponsitory.TrangThaiRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TrangThaiRepositoryImp implements TrangThaiRepository {
    private BaseRepository baseRepository;

    @Override
    public List<TrangThai> getList() {
        List<TrangThai> trangThaiList = new ArrayList<>();
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        PreparedStatement statement = null;
        ResultSet resultSet = null;

        if (connection != null) {
            try {
                statement = connection.prepareStatement("select trang_thai_id, trang_thai_name\n" +
                        "from trang_thai;");
                resultSet = statement.executeQuery();

                TrangThai trangThai = null;
                while (resultSet.next()) {

                    int id = resultSet.getInt("trang_thai_id");
                    String name = resultSet.getString("trang_thai_name");

                    trangThai = new TrangThai(id, name);
                    trangThaiList.add(trangThai);
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
        return trangThaiList;
    }
}
