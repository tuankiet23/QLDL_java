package Demo.Controller;

import Demo.Model.DatTour;
import Demo.Service.ICommonService;
import Demo.Service.ITour;
import Demo.Service.IDatTour;
import Demo.ViewModel.TourViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.List;

import static java.lang.Boolean.parseBoolean;
import static java.lang.Integer.parseInt;

@Controller
@RequestMapping("home")
public class HomeController {
    @Autowired
    ITour iTour;
    String dir="/Home/";
    @RequestMapping(value = "index")
    public ModelAndView  index(){
       ModelAndView modelAndView=new ModelAndView(dir+"/index");

       modelAndView.addObject("items", iTour.getTourVip());
        modelAndView.addObject("all", iTour.getTourHot());

       return modelAndView;
    }

    @RequestMapping(value = "listtourvip")
    public ModelAndView  listtourvip(){
        ModelAndView modelAndView=new ModelAndView("Home/listtourvip");
        modelAndView.addObject("items", iTour.getTourVip());
        return modelAndView;
    }

    @RequestMapping(value = "listtourthuong")
    public ModelAndView  listtourthuong(){
        ModelAndView modelAndView=new ModelAndView("Home/listtourthuong");
        modelAndView.addObject("items1", iTour.getTourThuong());
        return modelAndView;
    }

    @RequestMapping(value = "detailtour/{id}/{idTL}")
    public ModelAndView detailTour(@PathVariable(value = "id") String id, @PathVariable(value = "idTL") String idTL){
        ModelAndView modelAndView=new ModelAndView("Home/detailtour");
        modelAndView.addObject("item", iTour.getByID(id));
        modelAndView.addObject("items", iTour.getByIDTinh(idTL));
        return modelAndView;
    }



}
