package Demo.Service;

import Demo.Model.DatTour;
import Demo.ViewModel.DatTourViewModel;
import Demo.ViewModel.TourViewModel;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Service
public class DatTourService extends BaseService implements IDatTour{


    @Override
    public List<DatTourViewModel> getAll() {
        List<DatTourViewModel> dattous=new ArrayList<>();
        query ="Execute SP_DatTour_SelectAll";
        try{
            ResultSet resultSet=db.getTable(query, paramters);
            InitInfo initInfo=new InitInfo();

            while (resultSet.next()){
                dattous.add(initInfo.initDatTour(resultSet));
            }
        }
        catch (Exception ex){
            ex.printStackTrace();
        }
        db.closeConnection();
        return dattous ;

    }

    @Override
    public List<DatTourViewModel> getTourVip() {
        return null;
    }

    @Override
    public List<DatTourViewModel> getTourThuong() {
        return null;
    }

    @Override
    public List<DatTourViewModel> getByIDTinh(String id) {
        return null;
    }

    @Override
    public List<DatTourViewModel> getTourHot() {
        return null;
    }

    @Override
    public DatTourViewModel getByID(String id) {
        return null;
    }

    @Override
    public List<DatTourViewModel> getByKeyworf(String keyword) {
        return null;
    }

    @Override
    public boolean add(DatTour info) {
            paramters = new ArrayList<>();
            query = "execute SP_DatTour_Insert ?,?,?,?,?,?,?,?,?,?";
            paramters.add(Integer.toString(info.getMaTour()));
            paramters.add(Integer.toString(info.getMaKd()));
            paramters.add(info.getTenKh());

            paramters.add(info.getSdt());
            paramters.add(info.getDiaChi());
            paramters.add(info.getEmail());
            paramters.add(Integer.toString(info.getSoNguoilon()));
            paramters.add(Integer.toString(info.getSoTreem()));
            paramters.add(info.getGhiChu());
            paramters.add(Integer.toString(info.getMaTinhTrang()));
            boolean result = db.executeNonQuery(query, paramters);
            db.closeConnection();
            return result;

    }

    @Override
    public boolean update(DatTour info) {
        return false;
    }

    @Override
    public boolean delete(DatTour info) {
        return false;
    }
}
