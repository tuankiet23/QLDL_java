package Demo.Model;

import javax.xml.crypto.Data;
import java.sql.Date;

public class Tour {
    private int maTour;
    private int maTinhtrang;
    private int maPhuongtien;
    private int maLt;
    private String tenTour;
    private String lichTrinh;

    public int getGiaNguoilon() {
        return giaNguoilon;
    }

    public void setGiaNguoilon(int giaNguoilon) {
        this.giaNguoilon = giaNguoilon;
    }

    private int giaNguoilon;
    private int giaTrecon;
    private String thongTinct;
    private String images;
    private String thoiLuong;
    private Date ngayDi;
    private Date ngayCapnhat;


    public String getTenTour() {
        return tenTour;
    }

    public void setTenTour(String tenTour) {
        this.tenTour = tenTour;
    }

    public int getMaTour() {
        return maTour;
    }

    public void setMaTour(int maTour) {
        this.maTour = maTour;
    }

    public int getMaTinhtrang() {
        return maTinhtrang;
    }

    public void setMaTinhtrang(int maTinhtrang) {
        this.maTinhtrang = maTinhtrang;
    }

    public int getMaPhuongtien() {
        return maPhuongtien;
    }

    public void setMaPhuongtien(int maPhuongtien) {
        this.maPhuongtien = maPhuongtien;
    }

    public int getMaLt() {
        return maLt;
    }

    public void setMaLt(int maLt) {
        this.maLt = maLt;
    }

    public String getLichTrinh() {
        return lichTrinh;
    }

    public void setLichTrinh(String lichTrinh) {
        this.lichTrinh = lichTrinh;
    }



    public int getGiaTrecon() {
        return giaTrecon;
    }

    public void setGiaTrecon(int giaTrecon) {
        this.giaTrecon = giaTrecon;
    }

    public String getThongTinct() {
        return thongTinct;
    }

    public void setThongTinct(String thongTinct) {
        this.thongTinct = thongTinct;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getThoiLuong() {
        return thoiLuong;
    }

    public void setThoiLuong(String thoiLuong) {
        this.thoiLuong = thoiLuong;
    }
    public Date getNgayDi() {
        return ngayDi;
    }

    public void setNgayDi(Date ngayDi) {
        this.ngayDi = ngayDi;
    }

    public Date getNgayCapnhat() {
        return ngayCapnhat;
    }

    public void setNgayCapnhat(Date ngayCapnhat) {
        this.ngayCapnhat = ngayCapnhat;
    }


}
