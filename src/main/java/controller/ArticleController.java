package controller;

import bean.Article;
import com.google.common.collect.ImmutableMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jony
 * Article controller
 */
@Controller
@RequestMapping("/article")
public class ArticleController {

    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public Object postArticle(Article article) {
        return ImmutableMap.of("status", "success");
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String getArticle(@PathVariable String id, ModelAndView modelAndView) {
        return "";
    }

}
