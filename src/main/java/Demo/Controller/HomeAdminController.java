package Demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin/homeadmin")
public class HomeAdminController {
    String dir = "/Homeadmin/";

    @RequestMapping(value="index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView(dir + "/index");

        return modelAndView;
    }

}