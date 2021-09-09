package Demo.Service;

import Demo.Model.DatTour;
import Demo.Model.Tour;
import Demo.ViewModel.DatTourViewModel;
import Demo.ViewModel.TourViewModel;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;

public class InitInfo {
    TourViewModel initTour(ResultSet resultSet){
        TourViewModel tour=new TourViewModel();
        try{
            tour.setMaTour(resultSet.getInt("MaTour"));
            tour.setMaTinhtrang(resultSet.getInt("MaTinhTrang"));
            tour.setMaLt(resultSet.getInt("MaLT"));
            tour.setMaPhuongtien(resultSet.getInt("MaPhuongTien"));
            tour.setTenTour(resultSet.getString("TenTour"));
            tour.setLichTrinh(resultSet.getString("LichTrinh"));
            tour.setGiaTrecon(resultSet.getInt("GiaTreCon"));
            tour.setGiaNguoilon(resultSet.getInt("GiaNguoiLon"));
            tour.setThongTinct(resultSet.getString("ThongTinCT"));
            tour.setImages(resultSet.getString("Images"));
            tour.setThoiLuong(resultSet.getString("ThoiLuong"));
            tour.setNgayDi(resultSet.getDate("NgayDi"));
            tour.setNgayCapnhat(resultSet.getDate("NgayCapNhat"));

            tour.setViewTinh(resultSet.getString("TenTinh"));
            tour.setViewMaTinh(resultSet.getInt("MaTinh"));
            tour.setViewLoaiTour(resultSet.getString("TenLT"));
            tour.setViewPhuongTien(resultSet.getString("TenPhuongTien"));
            tour.setViewNgayDi(new SimpleDateFormat("dd/MM/yyyy").format(tour.getNgayDi()));



        }catch (Exception ex){
            ex.printStackTrace();

        }
        return tour;
    }

    DatTourViewModel initDatTour(ResultSet resultSet){
        DatTourViewModel dattour=new DatTourViewModel();
        try{
            dattour.setMaDattour(resultSet.getInt("MaDatTour"));
            dattour.setMaTour(resultSet.getInt("MaTour"));
            dattour.setMaKd(resultSet.getInt("MaKD"));
            dattour.setTenKh(resultSet.getString("TenKH"));
            dattour.setDiaChi(resultSet.getString("DiaChi"));
            dattour.setSdt(resultSet.getString("SDT"));
            dattour.setEmail(resultSet.getString("Email"));
            dattour.setSoNguoilon(resultSet.getInt("SoNguoiLon"));
            dattour.setSoTreem(resultSet.getInt("SoTreEm"));
            dattour.setGhiChu(resultSet.getString("GhiChu "));
            dattour.setMaTinhTrang(resultSet.getInt("MaTinhTrang "));

        }catch (Exception ex){
            ex.printStackTrace();

        }
        return dattour;
    }
}
