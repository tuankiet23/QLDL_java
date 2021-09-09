package Demo.Controller;

import Demo.Model.DatTour;
import Demo.Model.Tour;
import Demo.Service.ITour;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import static java.lang.Integer.parseInt;

@Controller
@RequestMapping("/admin/tour")
public class TourController {
    @Autowired
    ITour iTour;

    @RequestMapping(value = "index")
    public ModelAndView index(){
        ModelAndView modelAndView=new ModelAndView("Tour/index");
        modelAndView.addObject("items", iTour.getAll());
        return modelAndView;
    }

    }
