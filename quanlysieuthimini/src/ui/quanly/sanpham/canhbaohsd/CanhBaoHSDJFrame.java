/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ui.quanly.sanpham.canhbaohsd;

import dao.DonViTinhDAO;
import dao.NhaCungCapDAO;
import dao.NhomHangDAO;
import dao.SanPhamDAO;
import helper.DateHelper;
import helper.DialogHelper;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Dimension;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.table.DefaultTableModel;
import model.DonViTinh;
import model.NhomHang;
import model.SanPham;

/**
 *
 * @author Admin
 */
public class CanhBaoHSDJFrame extends javax.swing.JFrame {

    /**
     * Creates new form CanhBaoHSDJFrame
     */
    public CanhBaoHSDJFrame() {
        initComponents();
        inIt();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        pnl_CotTrai = new javax.swing.JPanel();
        lbl_TuyChinh = new javax.swing.JLabel();
        cmb_NgayHetHan = new javax.swing.JComboBox<>();
        cmb_NhomHang = new javax.swing.JComboBox<>();
        chk_SPNgungBan = new javax.swing.JCheckBox();
        btn_Loc = new javax.swing.JButton();
        lbl_NgayHetHan = new javax.swing.JLabel();
        lbl_NgayHetHan1 = new javax.swing.JLabel();
        btn_HuyThietLap = new javax.swing.JButton();
        pnl_CotPhai = new javax.swing.JPanel();
        lbl_TieuDe = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_DanhSachSanPham = new javax.swing.JTable();
        btn_XuatHuy = new javax.swing.JButton();
        btn_NgungBan = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("CẢNH BÁO HÀNG HẾT HSD");

        pnl_CotTrai.setBackground(new java.awt.Color(255, 255, 255));

        lbl_TuyChinh.setBackground(new java.awt.Color(102, 102, 255));
        lbl_TuyChinh.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lbl_TuyChinh.setForeground(new java.awt.Color(255, 255, 255));
        lbl_TuyChinh.setText("   TUỲ CHỈNH");
        lbl_TuyChinh.setOpaque(true);

        cmb_NgayHetHan.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        cmb_NgayHetHan.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "3 ngày tới", "7 ngày tới", "Tháng này", "Tháng tới", "Đã hết hạn" }));

        cmb_NhomHang.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        chk_SPNgungBan.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        chk_SPNgungBan.setText("Sản phẩm đã ngưng bán");

        btn_Loc.setBackground(new java.awt.Color(51, 51, 255));
        btn_Loc.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btn_Loc.setForeground(new java.awt.Color(255, 255, 255));
        btn_Loc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/iconLoc.png"))); // NOI18N
        btn_Loc.setText("LỌC");
        btn_Loc.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btn_LocMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_LocMouseExited(evt);
            }
        });
        btn_Loc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_LocActionPerformed(evt);
            }
        });

        lbl_NgayHetHan.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lbl_NgayHetHan.setText("Ngày hết hạn:");

        lbl_NgayHetHan1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lbl_NgayHetHan1.setText("Nhóm hàng:");

        btn_HuyThietLap.setBackground(new java.awt.Color(255, 255, 204));
        btn_HuyThietLap.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btn_HuyThietLap.setForeground(new java.awt.Color(255, 255, 255));
        btn_HuyThietLap.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/refreshGioHang.png"))); // NOI18N
        btn_HuyThietLap.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btn_HuyThietLapMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_HuyThietLapMouseExited(evt);
            }
        });
        btn_HuyThietLap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_HuyThietLapActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnl_CotTraiLayout = new javax.swing.GroupLayout(pnl_CotTrai);
        pnl_CotTrai.setLayout(pnl_CotTraiLayout);
        pnl_CotTraiLayout.setHorizontalGroup(
            pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(lbl_TuyChinh, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(pnl_CotTraiLayout.createSequentialGroup()
                .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnl_CotTraiLayout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(chk_SPNgungBan)
                            .addGroup(pnl_CotTraiLayout.createSequentialGroup()
                                .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lbl_NgayHetHan)
                                    .addComponent(lbl_NgayHetHan1))
                                .addGap(65, 65, 65)
                                .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(cmb_NhomHang, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cmb_NgayHetHan, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addGroup(pnl_CotTraiLayout.createSequentialGroup()
                        .addGap(67, 67, 67)
                        .addComponent(btn_Loc, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btn_HuyThietLap, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(14, Short.MAX_VALUE))
        );
        pnl_CotTraiLayout.setVerticalGroup(
            pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_CotTraiLayout.createSequentialGroup()
                .addComponent(lbl_TuyChinh, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_NgayHetHan, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_NgayHetHan, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_NgayHetHan1, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cmb_NhomHang, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(chk_SPNgungBan)
                .addGap(20, 20, 20)
                .addGroup(pnl_CotTraiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_HuyThietLap, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_Loc, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 0, Short.MAX_VALUE))
        );

        lbl_TieuDe.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        lbl_TieuDe.setForeground(new java.awt.Color(51, 51, 255));
        lbl_TieuDe.setText("DANH SÁCH HÀNG SẮP HẾT HSD");

        tbl_DanhSachSanPham.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        tbl_DanhSachSanPham.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "", "Mã SP", "Tên sản phẩm", "HSD gần nhất", "HSD mới", "Tồn kho"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Boolean.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class, java.lang.Object.class
            };
            boolean[] canEdit = new boolean [] {
                true, false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tbl_DanhSachSanPham.setRowHeight(35);
        tbl_DanhSachSanPham.setRowMargin(3);
        jScrollPane1.setViewportView(tbl_DanhSachSanPham);

        btn_XuatHuy.setBackground(new java.awt.Color(255, 51, 0));
        btn_XuatHuy.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btn_XuatHuy.setForeground(new java.awt.Color(255, 255, 255));
        btn_XuatHuy.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/themKhachHang.png"))); // NOI18N
        btn_XuatHuy.setText("XUẤT HUỶ");
        btn_XuatHuy.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btn_XuatHuyMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_XuatHuyMouseExited(evt);
            }
        });
        btn_XuatHuy.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_XuatHuyActionPerformed(evt);
            }
        });

        btn_NgungBan.setBackground(new java.awt.Color(51, 51, 255));
        btn_NgungBan.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btn_NgungBan.setForeground(new java.awt.Color(255, 255, 255));
        btn_NgungBan.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icons/iconPause.png"))); // NOI18N
        btn_NgungBan.setText("NGƯNG BÁN");
        btn_NgungBan.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btn_NgungBanMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btn_NgungBanMouseExited(evt);
            }
        });
        btn_NgungBan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_NgungBanActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnl_CotPhaiLayout = new javax.swing.GroupLayout(pnl_CotPhai);
        pnl_CotPhai.setLayout(pnl_CotPhaiLayout);
        pnl_CotPhaiLayout.setHorizontalGroup(
            pnl_CotPhaiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_CotPhaiLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnl_CotPhaiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addGroup(pnl_CotPhaiLayout.createSequentialGroup()
                        .addComponent(lbl_TieuDe, javax.swing.GroupLayout.PREFERRED_SIZE, 475, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btn_NgungBan)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btn_XuatHuy, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        pnl_CotPhaiLayout.setVerticalGroup(
            pnl_CotPhaiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnl_CotPhaiLayout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(pnl_CotPhaiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(lbl_TieuDe)
                    .addGroup(pnl_CotPhaiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btn_XuatHuy, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btn_NgungBan, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 680, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(pnl_CotTrai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(pnl_CotPhai, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnl_CotTrai, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(pnl_CotPhai, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_XuatHuyMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_XuatHuyMouseEntered
        // TODO add your handling code here:
        btn_XuatHuy.setBackground(Color.yellow);
        btn_XuatHuy.setForeground(Color.blue);
        btn_XuatHuy.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_btn_XuatHuyMouseEntered

    private void btn_XuatHuyMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_XuatHuyMouseExited
        // TODO add your handling code here:
        btn_XuatHuy.setBackground(new Color(255, 51, 0));
        btn_XuatHuy.setForeground(Color.white);
    }//GEN-LAST:event_btn_XuatHuyMouseExited

    private void btn_XuatHuyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_XuatHuyActionPerformed
        // TODO add your handling code here:
        
    }//GEN-LAST:event_btn_XuatHuyActionPerformed

    private void btn_NgungBanMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_NgungBanMouseEntered
        // TODO add your handling code here:
        btn_NgungBan.setBackground(Color.yellow);
        btn_NgungBan.setForeground(Color.blue);
        btn_NgungBan.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_btn_NgungBanMouseEntered

    private void btn_NgungBanMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_NgungBanMouseExited
        // TODO add your handling code here:
        btn_NgungBan.setBackground(new Color(51, 51, 255));
        btn_NgungBan.setForeground(Color.white);
    }//GEN-LAST:event_btn_NgungBanMouseExited

    private void btn_NgungBanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_NgungBanActionPerformed
        // TODO add your handling code here:
        // ngungGiaoDich();
    }//GEN-LAST:event_btn_NgungBanActionPerformed

    private void btn_LocMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_LocMouseEntered
        // TODO add your handling code here:
        btn_Loc.setBackground(Color.yellow);
        btn_Loc.setForeground(Color.blue);
        btn_Loc.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_btn_LocMouseEntered

    private void btn_LocMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_LocMouseExited
        // TODO add your handling code here:
        btn_Loc.setBackground(new Color(51, 51, 255));
        btn_Loc.setForeground(Color.white);
    }//GEN-LAST:event_btn_LocMouseExited

    private void btn_LocActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_LocActionPerformed
        // TODO add your handling code here:
        locSanPham();
    }//GEN-LAST:event_btn_LocActionPerformed

    private void btn_HuyThietLapMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_HuyThietLapMouseEntered
        // TODO add your handling code here:
        btn_HuyThietLap.setBackground(Color.yellow);
        btn_HuyThietLap.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_btn_HuyThietLapMouseEntered

    private void btn_HuyThietLapMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btn_HuyThietLapMouseExited
        // TODO add your handling code here:
        btn_HuyThietLap.setBackground(new Color(255, 255, 204));
    }//GEN-LAST:event_btn_HuyThietLapMouseExited

    private void btn_HuyThietLapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_HuyThietLapActionPerformed
        // TODO add your handling code here:
        capnhatDuLieu();
    }//GEN-LAST:event_btn_HuyThietLapActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(CanhBaoHSDJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(CanhBaoHSDJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(CanhBaoHSDJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(CanhBaoHSDJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new CanhBaoHSDJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_HuyThietLap;
    private javax.swing.JButton btn_Loc;
    private javax.swing.JButton btn_NgungBan;
    private javax.swing.JButton btn_XuatHuy;
    private javax.swing.JCheckBox chk_SPNgungBan;
    private javax.swing.JComboBox<String> cmb_NgayHetHan;
    private javax.swing.JComboBox<String> cmb_NhomHang;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbl_NgayHetHan;
    private javax.swing.JLabel lbl_NgayHetHan1;
    private javax.swing.JLabel lbl_TieuDe;
    private javax.swing.JLabel lbl_TuyChinh;
    private javax.swing.JPanel pnl_CotPhai;
    private javax.swing.JPanel pnl_CotTrai;
    private javax.swing.JTable tbl_DanhSachSanPham;
    // End of variables declaration//GEN-END:variables

    NhomHangDAO NhomHangDAO = new NhomHangDAO();
    NhaCungCapDAO NCCDAO = new NhaCungCapDAO();
    SanPhamDAO SanPhamDAO = new SanPhamDAO();
    DonViTinhDAO DVTDAO = new DonViTinhDAO();
    
    // Định dạng hiển thị số tiền:
    DecimalFormat dcf = new DecimalFormat("###,###,###.###");
    
    // list chua maSP duoc chon de ngung kinh doanh
    static List<String> listNgungKD = new ArrayList<>();
    
    /*
     * Hàm khởi tạo các giá trị ban đầu cho JFrame
     */
    void inIt() {
        this.setSize(1366, 768);
        this.setMinimumSize(new Dimension(1366, 768));
        this.setMaximumSize(new Dimension(1366, 768));
        setResizable(false);
        setLocationRelativeTo(null);
        doNhomHang();
        capnhatDuLieu();
    }
    
    /*
     * Hàm này đổ danh sách nhóm hàng vào combobox ở tab DanhSachSanPham
     */
    void doNhomHang() {
        DefaultComboBoxModel dcm = (DefaultComboBoxModel) cmb_NhomHang.getModel();
        dcm.removeAllElements();
        try {
            List<NhomHang> ListNH = NhomHangDAO.select();
            dcm.addElement("Tất cả");
            for (NhomHang NH : ListNH) {
                dcm.addElement(NH);
            }
        } catch (Exception e) {
            DialogHelper.alert(this, "Lỗi truy vấn: " + e.toString());
        }
    }
    
    /*
     * Hàm cập nhật dữ liệu Sản Phẩm
     */
    void capnhatDuLieu(){
        try {
            List<SanPham> listSP = SanPhamDAO.select();
            doDuLieuVaoBang(listSP);
        } catch (Exception e) {
            DialogHelper.alert(this, "Có lỗi: " + e.toString());
        }
    }
    
    /*
     * Hàm đổ dữ liệu vào bảng
     */
    void doDuLieuVaoBang(List<SanPham> listSP) throws SQLException{
        DefaultTableModel dtm = (DefaultTableModel) tbl_DanhSachSanPham.getModel();
        dtm.setRowCount(0);
        for(SanPham SP : listSP){
            String HSDTruoc = "";
            String HSDMoiNhat = "";
            if (SP.getHSDTruoc() != null) {
                HSDTruoc = DateHelper.toString(SP.getHSDTruoc(), "dd-MM-yyyy");
            }
            if (SP.getHSDMoiNhat() != null) {
                HSDMoiNhat = DateHelper.toString(SP.getHSDMoiNhat(), "dd-MM-yyyy");
            }
            Object[] row = {false, 
                            SP.getMaSanPham(),
                            SP.getTenSanPham(),
                            HSDTruoc,
                            HSDMoiNhat,
                            SP.getTonKho()
                            };
            dtm.addRow(row);
        }
    }
    
    /*
     * Hàm lọc sản phẩm theo các tuỳ chỉnh
     */
    void locSanPham() {
        String MaNH; 
        // lấy mã nhóm hàng:
        if (cmb_NhomHang.getSelectedIndex() != 0)
            MaNH = ((NhomHang) cmb_NhomHang.getSelectedItem()).getMaNhomHang();
        else
            MaNH = "0";
        // lấy trạng thái:
        boolean TrangThai = !chk_SPNgungBan.isSelected();
        // lấy tuỳ chọn ngày hết hạn:
        int chonNgayHetHan = cmb_NgayHetHan.getSelectedIndex();
        // 0: 3 ngày || 1: 7 ngày || 2: tháng này || 3: tháng tới || 4: đã hết hạn
        try {
            List<SanPham> listSP;
            switch (chonNgayHetHan) {
                case 0:
                    listSP = SanPhamDAO.locHSD3NgayToi(MaNH, TrangThai);
                    break;
                case 1:
                    listSP = SanPhamDAO.locHSD7NgayToi(MaNH, TrangThai);
                    break;
                case 2:
                    listSP = SanPhamDAO.locHSDThangNay(MaNH, TrangThai);
                    break;
                case 3:
                    listSP = SanPhamDAO.locHSDThangToi(MaNH, TrangThai);
                    break;
                case 4:
                    listSP = SanPhamDAO.locHetHSD(MaNH, TrangThai);
                    break;
                default:
                    listSP = SanPhamDAO.select();
            }
            doDuLieuVaoBang(listSP);
        } catch (Exception e) {
            DialogHelper.alert(this, "Có lỗi: " + e.toString());
        }
    }
    
}
