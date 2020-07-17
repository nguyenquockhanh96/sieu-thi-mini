/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ui.banhang;

import helper.ShareHelper;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.Frame;

/**
 *
 * @author Administrator
 */
public class ChietKhauJFrame extends javax.swing.JFrame {
    
    static String GiaTriDonHang;
    
    /**
     * Creates new form ChietKhauJFrame
     */
    public ChietKhauJFrame(String GiaTriDonHang) {
        initComponents();
        // start code setSize cố định không cho co giãn lung tung:
        this.setSize(500,300);
        this.setMinimumSize(new Dimension(500,345));
        this.setMaximumSize(new Dimension(500,345));
        // end code setSize
        setResizable(false);
        setLocationRelativeTo(null);
        this.GiaTriDonHang = GiaTriDonHang;
        this.getContentPane().setBackground(Color.white);
        txt_TenKhachHang.setText(ShareHelper.KhachGiaoDich.getHoTen());
        lbl_MaKhachHang.setText(ShareHelper.KhachGiaoDich.getMaKhachHang() + " - " + ShareHelper.KhachGiaoDich.getDienThoai());
        txt_GiaTriDonHang.setText(this.GiaTriDonHang);
        txt_DiemThuongHienCo.setText(ShareHelper.KhachGiaoDich.getDiemThuong()+"");
        xetDieuKienCK();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btg_MucChietKhau = new javax.swing.ButtonGroup();
        txt_TenKhachHang = new javax.swing.JTextField();
        lbl_MaKhachHang = new javax.swing.JLabel();
        txt_DiemThuongHienCo = new javax.swing.JTextField();
        lbl_GiaTriDonHang = new javax.swing.JLabel();
        txt_GiaTriDonHang = new javax.swing.JTextField();
        lbl_ChonMucChietKhau = new javax.swing.JLabel();
        chk_3 = new javax.swing.JCheckBox();
        chk_5 = new javax.swing.JCheckBox();
        chk_7 = new javax.swing.JCheckBox();
        chk_10 = new javax.swing.JCheckBox();
        chk_14 = new javax.swing.JCheckBox();
        chk_17 = new javax.swing.JCheckBox();
        chk_20 = new javax.swing.JCheckBox();
        lbl_Huy = new javax.swing.JLabel();
        lbl_XemQuyDinhCK = new javax.swing.JLabel();
        lbl_ApDung = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("CHIẾT KHẤU ĐƠN HÀNG");
        setMaximumSize(new java.awt.Dimension(500, 345));
        setMinimumSize(new java.awt.Dimension(500, 345));
        setPreferredSize(new java.awt.Dimension(500, 345));
        setResizable(false);
        setSize(new java.awt.Dimension(500, 345));

        txt_TenKhachHang.setEditable(false);
        txt_TenKhachHang.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        lbl_MaKhachHang.setFont(new java.awt.Font("Tahoma", 2, 18)); // NOI18N
        lbl_MaKhachHang.setForeground(new java.awt.Color(153, 153, 153));

        txt_DiemThuongHienCo.setEditable(false);
        txt_DiemThuongHienCo.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        lbl_GiaTriDonHang.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lbl_GiaTriDonHang.setText("Giá trị đơn hàng");

        txt_GiaTriDonHang.setEditable(false);
        txt_GiaTriDonHang.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        lbl_ChonMucChietKhau.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lbl_ChonMucChietKhau.setText("Chọn mức chiết khấu:");

        btg_MucChietKhau.add(chk_3);
        chk_3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_3.setForeground(new java.awt.Color(0, 204, 0));
        chk_3.setText("3đ - 30,000VNĐ");
        chk_3.setEnabled(false);

        btg_MucChietKhau.add(chk_5);
        chk_5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_5.setForeground(new java.awt.Color(0, 51, 255));
        chk_5.setText("5đ - 50,000VNĐ");
        chk_5.setEnabled(false);

        btg_MucChietKhau.add(chk_7);
        chk_7.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_7.setForeground(new java.awt.Color(0, 51, 255));
        chk_7.setText("7đ - 70,000VNĐ");
        chk_7.setEnabled(false);

        btg_MucChietKhau.add(chk_10);
        chk_10.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_10.setForeground(new java.awt.Color(255, 204, 51));
        chk_10.setText("10đ - 100,000VNĐ");
        chk_10.setEnabled(false);

        btg_MucChietKhau.add(chk_14);
        chk_14.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_14.setForeground(new java.awt.Color(255, 204, 51));
        chk_14.setText("14đ - 150,000VNĐ");
        chk_14.setEnabled(false);

        btg_MucChietKhau.add(chk_17);
        chk_17.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_17.setForeground(new java.awt.Color(255, 0, 51));
        chk_17.setText("17đ - 200,000VNĐ");
        chk_17.setEnabled(false);

        btg_MucChietKhau.add(chk_20);
        chk_20.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        chk_20.setForeground(new java.awt.Color(255, 0, 51));
        chk_20.setText("20đ - 250,000VNĐ");
        chk_20.setEnabled(false);

        lbl_Huy.setBackground(new java.awt.Color(153, 0, 0));
        lbl_Huy.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lbl_Huy.setForeground(new java.awt.Color(255, 255, 255));
        lbl_Huy.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_Huy.setText("HUỶ");
        lbl_Huy.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED, new java.awt.Color(204, 204, 204), new java.awt.Color(102, 0, 0)));
        lbl_Huy.setOpaque(true);
        lbl_Huy.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_HuyMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl_HuyMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl_HuyMouseExited(evt);
            }
        });

        lbl_XemQuyDinhCK.setFont(new java.awt.Font("Tahoma", 2, 14)); // NOI18N
        lbl_XemQuyDinhCK.setForeground(new java.awt.Color(153, 153, 255));
        lbl_XemQuyDinhCK.setText("<html><u><i>(Xem quy định chiết khấu)</i></u></html>");
        lbl_XemQuyDinhCK.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_XemQuyDinhCKMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl_XemQuyDinhCKMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl_XemQuyDinhCKMouseExited(evt);
            }
        });

        lbl_ApDung.setBackground(new java.awt.Color(102, 102, 255));
        lbl_ApDung.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        lbl_ApDung.setForeground(new java.awt.Color(255, 255, 255));
        lbl_ApDung.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbl_ApDung.setText("ÁP DỤNG");
        lbl_ApDung.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED, new java.awt.Color(204, 204, 204), new java.awt.Color(51, 0, 153)));
        lbl_ApDung.setOpaque(true);
        lbl_ApDung.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbl_ApDungMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                lbl_ApDungMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                lbl_ApDungMouseExited(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lbl_ChonMucChietKhau)
                        .addGap(18, 18, 18)
                        .addComponent(lbl_XemQuyDinhCK, javax.swing.GroupLayout.PREFERRED_SIZE, 179, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(chk_7, javax.swing.GroupLayout.DEFAULT_SIZE, 126, Short.MAX_VALUE)
                            .addComponent(chk_3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(chk_5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(chk_14)
                                .addGap(36, 36, 36)
                                .addComponent(chk_20))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(chk_10)
                                .addGap(36, 36, 36)
                                .addComponent(chk_17))))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_TenKhachHang, javax.swing.GroupLayout.PREFERRED_SIZE, 300, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lbl_MaKhachHang, javax.swing.GroupLayout.PREFERRED_SIZE, 212, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txt_DiemThuongHienCo))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lbl_GiaTriDonHang)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(txt_GiaTriDonHang, javax.swing.GroupLayout.PREFERRED_SIZE, 290, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(lbl_Huy, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(lbl_ApDung, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txt_DiemThuongHienCo)
                    .addComponent(txt_TenKhachHang, javax.swing.GroupLayout.DEFAULT_SIZE, 35, Short.MAX_VALUE))
                .addGap(0, 0, 0)
                .addComponent(lbl_MaKhachHang, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(lbl_GiaTriDonHang, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(txt_GiaTriDonHang, javax.swing.GroupLayout.DEFAULT_SIZE, 35, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_ChonMucChietKhau, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_XemQuyDinhCK))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addComponent(chk_3)
                        .addGap(18, 18, 18)
                        .addComponent(chk_5)
                        .addGap(18, 18, 18)
                        .addComponent(chk_7))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(chk_10)
                            .addComponent(chk_17))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(chk_14)
                            .addComponent(chk_20))))
                .addGap(3, 3, 3)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_Huy, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_ApDung, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(21, 21, 21))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void lbl_HuyMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_HuyMouseEntered
        // TODO add your handling code here:
        lbl_Huy.setBackground(Color.yellow);
        lbl_Huy.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_lbl_HuyMouseEntered

    private void lbl_HuyMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_HuyMouseExited
        // TODO add your handling code here:
        lbl_Huy.setBackground(new Color(153,0,0));
    }//GEN-LAST:event_lbl_HuyMouseExited

    private void lbl_XemQuyDinhCKMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_XemQuyDinhCKMouseEntered
        // TODO add your handling code here:
        lbl_XemQuyDinhCK.setForeground(Color.red);
        lbl_XemQuyDinhCK.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_lbl_XemQuyDinhCKMouseEntered

    private void lbl_XemQuyDinhCKMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_XemQuyDinhCKMouseExited
        // TODO add your handling code here:
        lbl_XemQuyDinhCK.setForeground(new Color(153,153,255));
    }//GEN-LAST:event_lbl_XemQuyDinhCKMouseExited

    private void lbl_XemQuyDinhCKMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_XemQuyDinhCKMouseClicked
        // TODO add your handling code here:
        new QuyDinhChietKhauJDialog(this, true).setVisible(true);
    }//GEN-LAST:event_lbl_XemQuyDinhCKMouseClicked

    private void lbl_ApDungMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_ApDungMouseEntered
        // TODO add your handling code here:
        lbl_ApDung.setBackground(Color.yellow);
        lbl_ApDung.setCursor(new Cursor(Cursor.HAND_CURSOR));
    }//GEN-LAST:event_lbl_ApDungMouseEntered

    private void lbl_ApDungMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_ApDungMouseExited
        // TODO add your handling code here:
        lbl_ApDung.setBackground(new Color(102,102,255));
    }//GEN-LAST:event_lbl_ApDungMouseExited

    private void lbl_HuyMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_HuyMouseClicked
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_lbl_HuyMouseClicked

    private void lbl_ApDungMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbl_ApDungMouseClicked
        // TODO add your handling code here:
        luuChietKhau();
    }//GEN-LAST:event_lbl_ApDungMouseClicked

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
            java.util.logging.Logger.getLogger(ChietKhauJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ChietKhauJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ChietKhauJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ChietKhauJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ChietKhauJFrame(GiaTriDonHang).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup btg_MucChietKhau;
    private javax.swing.JCheckBox chk_10;
    private javax.swing.JCheckBox chk_14;
    private javax.swing.JCheckBox chk_17;
    private javax.swing.JCheckBox chk_20;
    private javax.swing.JCheckBox chk_3;
    private javax.swing.JCheckBox chk_5;
    private javax.swing.JCheckBox chk_7;
    private javax.swing.JLabel lbl_ApDung;
    private javax.swing.JLabel lbl_ChonMucChietKhau;
    private javax.swing.JLabel lbl_GiaTriDonHang;
    private javax.swing.JLabel lbl_Huy;
    private javax.swing.JLabel lbl_MaKhachHang;
    private javax.swing.JLabel lbl_XemQuyDinhCK;
    private javax.swing.JTextField txt_DiemThuongHienCo;
    private javax.swing.JTextField txt_GiaTriDonHang;
    private javax.swing.JTextField txt_TenKhachHang;
    // End of variables declaration//GEN-END:variables
    
    /*
     * Hàm xét điều kiện chọn chiết khấu phù hợp
     *    chỉ cho chọn những mức chiết khấu đáp ứng tiêu chuẩn
     */
    void xetDieuKienCK(){
        float GiaTriDonHang = Float.parseFloat(txt_GiaTriDonHang.getText());
        int DiemThuong = Integer.parseInt(txt_DiemThuongHienCo.getText());
        if(GiaTriDonHang >= 150000 && DiemThuong >= 3){
            chk_3.setEnabled(true);
        }
        if(GiaTriDonHang >= 200000 && DiemThuong >= 5){
            chk_5.setEnabled(true);
        }
        if(GiaTriDonHang >= 200000 && DiemThuong >= 7){
            chk_7.setEnabled(true);
        }
        if(GiaTriDonHang >= 400000 && DiemThuong >= 10){
            chk_10.setEnabled(true);
        }
        if(GiaTriDonHang >= 400000 && DiemThuong >= 14){
            chk_14.setEnabled(true);
        }
        if(GiaTriDonHang >= 800000 && DiemThuong >= 17){
            chk_17.setEnabled(true);
        }
        if(GiaTriDonHang >= 800000 && DiemThuong >= 20){
            chk_20.setEnabled(true);
        }
    }
    
    /*
     * Hàm lưu giá trị chiết khấu vào hoá đơn tạm
           và chuyển giá trị này qua BanHangJFrame
     */
    void luuChietKhau(){
        int DiemThuong = ShareHelper.KhachGiaoDich.getDiemThuong();
        if(chk_3.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(30000);
            DiemThuong = DiemThuong - 3;
        }
        if(chk_5.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(50000);
            DiemThuong = DiemThuong - 5;
        }
        if(chk_7.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(70000);
            DiemThuong = DiemThuong - 7;
        }
        if(chk_10.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(100000);
            DiemThuong = DiemThuong - 10;
        }
        if(chk_14.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(150000);
            DiemThuong = DiemThuong - 14;
        }
        if(chk_17.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(200000);
            DiemThuong = DiemThuong - 17;
        }
        if(chk_20.isSelected()){
            ShareHelper.HoaDonGiaoDich.setChietKhau(250000);
            DiemThuong = DiemThuong - 20;
        }
        ShareHelper.DiemThuongMoi = DiemThuong;
        this.dispose();
        chuyenThongTinVeFrameBanHang();
    }
    
    /*
     * Hàm này tìm các frame đang mở và duyệt đến frame BanHang
     *    Reload lại frame BanHang để hiển thị thông tin khách đang giao dịch
     */
    void chuyenThongTinVeFrameBanHang(){
        Frame[] listFrames = Frame.getFrames();
        for (Frame fr : listFrames) {
            String tenFrame = fr.getClass().getName();
            if (tenFrame.equalsIgnoreCase("ui.banhang.BanHangJFrame")) {
                fr.dispose();
            }
        }
        new BanHangJFrame().setVisible(true);
    }
}