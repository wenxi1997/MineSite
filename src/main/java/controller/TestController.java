package controller;

import com.google.common.collect.ImmutableMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jony
 * Controller test
 */
@Controller
@RequestMapping("/test")
public class TestController {

    @RequestMapping(method = RequestMethod.GET)
    @ResponseBody
    public Object testResponseBody() {
        return ImmutableMap.of("key", "value", "you", "me");
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String returnIndexHtml(ModelAndView modelAndView) {
        return "index";
    }

}
