package Demo.ViewModel;
import Demo.Model.Tour;

public class TourViewModel extends Tour{
    public int viewMaTinh;
    private String viewTinh;
    public String viewNgayDi;
    public  String viewLoaiTour;
    public  String viewPhuongTien;


    public String getViewLoaiTour() {
        return viewLoaiTour;
    }

    public void setViewLoaiTour(String viewLoaiTour) {
        this.viewLoaiTour = viewLoaiTour;
    }

    public String getViewPhuongTien() {
        return viewPhuongTien;
    }

    public void setViewPhuongTien(String viewPhuongTien) {
        this.viewPhuongTien = viewPhuongTien;
    }



    public String getViewNgayDi() {
        return viewNgayDi;
    }

    public void setViewNgayDi(String viewNgayDi) {
        this.viewNgayDi = viewNgayDi;
    }


    public String getViewTinh(){return viewTinh;}
    public void setViewTinh(String viewTinh) {
        this.viewTinh = viewTinh;
    }

    public int getViewMaTinh(){return viewMaTinh;}
    public void setViewMaTinh(int viewMaTinh) {
        this.viewMaTinh = viewMaTinh;
    }



}
