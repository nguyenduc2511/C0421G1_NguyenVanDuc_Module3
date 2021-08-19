package model.repository.Imp;

import model.bean.SanPham;
import model.repository.SanPhamRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SanPhamRepositoryImp implements SanPhamRepository {
    private BaseRepository baseRepository;

    @Override
    public List<SanPham> getList() {
        List<SanPham> sanphamList = new ArrayList<>();
        baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        if (connection != null) {
            try {
                statement = connection.prepareStatement("select sanPham_id ,sanPham_name ,sanPham_gia ,sanPham_soluong ,sanPham_color ,sanPham_infor,category_name \n" +
                        "from sanpham s inner join category c on s.category_id=c.category_id;");
                resultSet = statement.executeQuery();
                SanPham sanPham = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("sanPham_id");
                    String name = resultSet.getString("sanPham_name");
                    Double gia = resultSet.getDouble("sanPham_gia");
                    int soluong = resultSet.getInt("sanPham_soluong");
                    String mausac = resultSet.getString("sanPham_color");
                    String thongtin = resultSet.getString("sanPham_infor");
                    String danhmuc = resultSet.getString("category_name");
                    sanPham = new SanPham( name, gia, soluong, mausac, thongtin, danhmuc);
                    sanphamList.add(sanPham);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return sanphamList;
    }

    @Override
    public boolean createSanPham(SanPham sanPham) {
        baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("insert into sanPham (sanPham_name,sanPham_gia ,sanPham_soluong,sanPham_color,sanPham_infor,category_id)\n" +
                        "values (?, ?, ?, ?, ?, ?),");
                statement.setString(1, sanPham.getTen());
                statement.setDouble(2, sanPham.getGia());
                statement.setInt(3, sanPham.getSoluong());
                statement.setString(4, sanPham.getMauSac());
                statement.setString(5, sanPham.getThongTin());
                statement.setString(6, sanPham.getDanhMuc());
                statement.executeUpdate();
                return true;
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public boolean editSanPham(SanPham sanPham) {
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("update sanpham     \n" +
                    " set  sanPham_name = ?, sanPham_gia =?, sanPham_soluong =?, sanPham_color =?,\n" +
                    "\t sanPham_infor =?,category_id =? \n" +
                    "where sanPham_id = ?;");
            preparedStatement.setString(1, sanPham.getTen());
            preparedStatement.setDouble(2, sanPham.getGia());
            preparedStatement.setInt(3, sanPham.getSoluong());
            preparedStatement.setString(4, sanPham.getMauSac());
            preparedStatement.setString(5, sanPham.getThongTin());
            preparedStatement.setString(6, sanPham.getDanhMuc());
            preparedStatement.setInt(7, sanPham.getId());
            preparedStatement.executeUpdate();
            return true;

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteSanPham(int id) {
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("delete from sanpham \n" +
                    "where sanPham_id = ?;");

            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public SanPham findById(int id) {
        SanPham sanPham = null;
        baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        PreparedStatement statement = null;
        ResultSet resultSet = null;

        if (connection != null) {
            try {
                statement = connection.prepareStatement("select sanPham_id ,sanPham_name ,sanPham_gia ,sanPham_soluong ,sanPham_color ,sanPham_infor,category_name \n" +
                        "from sanpham s inner join category c on s.category_id=c.category_id\n" +
                        "where sanPham_id = ?;");

                statement.setInt(1, id);
                resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    String name = resultSet.getString("sanPham_name");
                    Double gia = resultSet.getDouble("sanPham_gia");
                    int soluong = resultSet.getInt("sanPham_soluong");
                    String mausac = resultSet.getString("sanPham_color");
                    String thongtin = resultSet.getString("sanPham_infor");
                    String danhmuc = resultSet.getString("category_name");
                    sanPham = new SanPham(id, name, gia, soluong, mausac, thongtin, danhmuc);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return sanPham;
    }
}