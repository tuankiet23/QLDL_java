package Demo.Service;

import Demo.Model.Tour;
import Demo.ViewModel.TourViewModel;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class TourService extends BaseService implements ITour{

    public List<TourViewModel> getAll() {
        List<TourViewModel> tours=new ArrayList<>();
        query ="Execute SP_Tour_SelectAll";
        try{
            ResultSet resultSet=db.getTable(query, paramters);
            InitInfo initInfo=new InitInfo();

            while (resultSet.next()){
                tours.add(initInfo.initTour(resultSet));
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        db.closeConnection();
        return tours;
    }




    public List<TourViewModel> getTourVip() {
        List<TourViewModel> tours=new ArrayList<>();
        query ="Execute SP_Tour_TheLoai 1";
        try{
            ResultSet resultSet=db.getTable(query, paramters);
            InitInfo initInfo=new InitInfo();

            while (resultSet.next()){
                tours.add(initInfo.initTour(resultSet));
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        db.closeConnection();
        return tours;
    }
    public List<TourViewModel> getTourThuong() {
        List<TourViewModel> tours=new ArrayList<>();
        query ="Execute SP_Tour_TheLoai 2";
        try{
            ResultSet resultSet=db.getTable(query, paramters);
            InitInfo initInfo=new InitInfo();

            while (resultSet.next()){
                tours.add(initInfo.initTour(resultSet));
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        db.closeConnection();
        return tours;
    }


    @Override
    public TourViewModel getByID(String id) {

            paramters = new ArrayList<>();
            TourViewModel tourViewModel = new TourViewModel();
            query = "execute SP_Tour_Select_SingleByID ?";
            paramters.add(id);
            try {
                ResultSet resultSet = db.getTable(query, paramters);
                InitInfo initInfo = new InitInfo();
                while (resultSet.next()) {
                    tourViewModel = initInfo.initTour((resultSet));
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            return tourViewModel;

    }


    public List<TourViewModel> getByIDTinh(String idTL) {

        List<TourViewModel> tours=new ArrayList<>();
        TourViewModel tourViewModel = new TourViewModel();
        query = "Execute SP_Tour_Select_SingleByIDTinh ?";
        paramters.add(idTL);
        try{
            ResultSet resultSet=db.getTable(query, paramters);
            InitInfo initInfo=new InitInfo();

            while (resultSet.next()){
                tours.add(initInfo.initTour(resultSet));
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        db.closeConnection();
        return tours;
    }

    @Override
    public List<TourViewModel> getTourHot() {
        List<TourViewModel> tours=new ArrayList<>();
        query ="Execute SP_Tour_SelectAll";
        try{
            ResultSet resultSet=db.getTable(query, paramters);
            InitInfo initInfo=new InitInfo();

            while (resultSet.next()){
                tours.add(initInfo.initTour(resultSet));
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        db.closeConnection();
        return tours;
    }


    @Override
    public List<TourViewModel> getByKeyworf(String keyword) {
        return null;
    }

    @Override
    public boolean add(Tour info) {

        paramters = new ArrayList<>();
        query = "execute SP_Tour_Insert ?,?,?,?,?,?,?,?,?,?,?,?";
        paramters.add(Integer.toString ( info.getMaTinhtrang()));
        paramters.add(Integer.toString ( info.getMaLt()));
        paramters.add(Integer.toString ( info.getMaPhuongtien()));
        paramters.add(info.getTenTour());
        paramters.add(info.getLichTrinh());
        paramters.add(Integer.toString ( info.getGiaTrecon()));
        paramters.add(Integer.toString ( info.getGiaNguoilon()));;
        paramters.add(info.getThongTinct());
        paramters.add(info.getImages());
        paramters.add(info.getThoiLuong());
        paramters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getNgayDi()));
        paramters.add(new SimpleDateFormat("yyyy-MM-dd").format(info.getNgayCapnhat()));

        boolean result = db.executeNonQuery(query, paramters);
        db.closeConnection();
        return result;
    }


    @Override
    public boolean update(Tour info) {
        return false;
    }

    @Override
    public boolean delete(Tour info) {
        return false;
    }
}
