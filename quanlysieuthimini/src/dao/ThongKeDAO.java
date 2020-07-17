/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import helper.DateHelper;
import helper.jdbcHelper;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class ThongKeDAO {
    
    /*
     * Hàm tính doanh thu của nhân viên theo mã nhân viên
     */
    public double tinhDoanhThuNV(String MaNV) throws SQLException {
        double DoanhThu = 0;
        String sql = "SELECT SUM(ThanhTien) AS 'DoanhThu' FROM HoaDon "
                + "WHERE MaNhanVien = ? "
                + "GROUP BY MaNhanVien";
        ResultSet rs = jdbcHelper.executeQuery(sql, MaNV);
        while(rs.next()) {
            DoanhThu = rs.getDouble("DoanhThu");
        }
        return DoanhThu;
    }
    
    /*
     * Hàm thống kê tổng tiền nhập và tổng tiền trả của nhà cung cấp
     */
    public List<Object[]> tongGiaoDichNCC(String MaNCC) throws SQLException{
        List<Object[]> list = new ArrayList<>();
        try {
            ResultSet rs = null;
            try{
                String sql = "{call sp_tonggiaodich_ncc(?)}";
                rs = jdbcHelper.executeQuery(sql, MaNCC);
                while(rs.next()){
                    Object[] model = {rs.getString(1), rs.getFloat(2), rs.getFloat(3)};
                    list.add(model);
                }
            }
            finally{
                rs.getStatement().getConnection().close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    
    /*
     * Hàm thống kê tổng giao dịch của khách hàng theo mã khách hàng
     */
    public float tongGiaoDichKH(String MaKhachHang) throws SQLException{
        float TongGiaoDich = 0;
        String sql = "SELECT SUM(ThanhTien) FROM HoaDon HD "
                + "JOIN KhachHang KH ON HD.MaKhachHang = KH.MaKhachHang " 
                + "WHERE HD.MaKhachHang = ?";
        ResultSet rs = null;
        rs = jdbcHelper.executeQuery(sql, MaKhachHang);
        while(rs.next()){
            TongGiaoDich = rs.getFloat(1);
        }
        return TongGiaoDich;
    }
    
    /*
     * Tổng kết cuối ngày: danh sách sản phẩm bán ra, số lượng và giá trị
           Thống kê theo nhân viên
     */
    public List<Object[]> ThongKeCuoiNgay(String MaNhanVien){
        List<Object[]> list = new ArrayList<>();
        String NgayBan = DateHelper.toString(DateHelper.now(), "yyyy-MM-dd");
        try {
            ResultSet rs = null;
            try{
                String sql = "{call sp_tongketcuoingay(?, ?)}";
                rs = jdbcHelper.executeQuery(sql, MaNhanVien, NgayBan);
                while(rs.next()){
                    Object[] model = {rs.getString(1), rs.getInt(2), rs.getFloat(3)};
                    list.add(model);
                }
            }
            finally{
                rs.getStatement().getConnection().close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

}
