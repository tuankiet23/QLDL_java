package Demo.Controller;

import Demo.Service.IDatTour;
import Demo.Service.ITour;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/admin/dattour")
public class DatTourController {
    @Autowired
    IDatTour iDatTour;

    @RequestMapping(value = "index")
    public ModelAndView index(){
        ModelAndView modelAndView=new ModelAndView("DatTour/index");
        modelAndView.addObject("items", iDatTour.getAll());
        return modelAndView;
    }
}


