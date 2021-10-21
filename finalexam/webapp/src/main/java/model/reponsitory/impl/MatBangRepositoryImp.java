package model.reponsitory.impl;

import model.bean.MatBang.Matbang;
import model.reponsitory.MatBangRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MatBangRepositoryImp implements MatBangRepository {
    private BaseRepository baseRepository;

    @Override
    public List<Matbang> getList() {
        List<Matbang> matbangList = new ArrayList<>();
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();
        PreparedStatement statement = null;
        if(connection != null){
            try {
                statement = connection.prepareStatement("select matBang_id, matBang_id_name, matBang_name, matBang_dien_tich, matBang_tang, loai_mat_bang_name,\n" +
                        " trang_thai_name, matBang_gia, ngay_bat_dau, ngay_ket_thuc\n" +
                        "from matBang c inner join loai_mat_bang ct on c.loai_mat_bang_id = ct.loai_mat_bang_id\n" +
                        "               inner join trang_thai s on c.trang_thai_id = s.trang_thai_id \n" +
                        "ORDER BY matBang_dien_tich;");

                ResultSet resultSet = statement.executeQuery();

                Matbang matbang = null;
                while (resultSet.next()){
                    int id = resultSet.getInt("matBang_id");
                    String id_name = resultSet.getString("matBang_id_name");
                    String name = resultSet.getString("matBang_name");
                    int dienTich = resultSet.getInt("matBang_dien_tich");
                    int tang = Integer.parseInt(resultSet.getString("matBang_tang"));
                    String loaiMatBangName = resultSet.getString("loai_mat_bang_name");
                    String trangThaiName = resultSet.getString("trang_thai_name");
                    Double matBangGia = Double.parseDouble(resultSet.getString("matBang_gia"));
                    String ngayBatDau = resultSet.getString("ngay_bat_dau");
                    String ngayKetThuc = resultSet.getString("ngay_ket_thuc");

                    matbang = new Matbang(id, id_name, name, dienTich, tang, loaiMatBangName, trangThaiName, matBangGia, ngayBatDau,ngayKetThuc);
                    matbangList.add(matbang);
                }
                connection.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return matbangList;
    }

    @Override
    public boolean createCustomer(Matbang matbang) {
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement("INSERT INTO matBang (matBang_id_name,matBang_name,matBang_dien_tich,loai_mat_bang_id,trang_thai_id,\n" +
                        "matBang_gia,ngay_bat_dau,ngay_ket_thuc)\n" +
                        "VALUES (?,?,?,?,?,?,?,?)");
                statement.setString(1, matbang.getId_name());
                statement.setString(2, matbang.getName());
                statement.setInt(3, matbang.getDienTich());
                statement.setString(4, matbang.getLoaiMatBang());
                statement.setString(5, matbang.getTrangThai());
                statement.setDouble(6, matbang.getGia());
                statement.setString(7, matbang.getNgayBatDau());
                statement.setString(8, matbang.getNgayKetThuc());
                statement.executeUpdate();
                return true;
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
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) {
        this.baseRepository = new BaseRepository();
        Connection connection = this.baseRepository.getConnection();

        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement("delete from matBang\n" +
                    "where matBang_id = ?;");

            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public Matbang findById(int id) {
        return null;
    }
}
