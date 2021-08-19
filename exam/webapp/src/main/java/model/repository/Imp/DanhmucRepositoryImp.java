package model.repository.Imp;

import model.bean.DanhMuc;
import model.repository.DanhMucRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DanhmucRepositoryImp implements DanhMucRepository {
    private BaseRepository baseRepository;

    @Override
    public List<DanhMuc> getList() {
        List<DanhMuc> danhMucList = new ArrayList<>();
        baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        PreparedStatement statement = null;
        ResultSet resultSet = null;

        if (connection != null) {
            try {
                statement = connection.prepareStatement("select category_id,category_name\n" +
                        "from category;");
                resultSet = statement.executeQuery();
                DanhMuc danhMuc = null;
                while (resultSet.next()){
                    int id = resultSet.getInt("category_id");
                    String name = resultSet.getString("category_name");
                    danhMuc = new DanhMuc(id,name);
                    danhMucList.add(danhMuc);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return danhMucList;
    }
}
