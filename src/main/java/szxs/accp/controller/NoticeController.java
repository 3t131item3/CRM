package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.NoticeBiz;
import szxs.accp.entity.Notice;

import javax.annotation.Resource;
@Controller
@RequestMapping("/crm")
public class NoticeController {
    @Resource
    private NoticeBiz noticeBiz;
    /**
     * 跳转至公告管理界面
     * @param title
     * @param model
     * @return
     */
    @RequestMapping("/listNoticeAll")
    public String listNoticeAll(String title,Model model){
        model.addAttribute("notice",noticeBiz.listNoticAll(title));
        return "system/notice/notice";
    }

    /**
     * 跳转至公告添加页面
     * @return
     */
    @RequestMapping("/addNotice")
    public String addNotice(Model model,Notice notice){
        model.addAttribute("list",noticeBiz.selecttype(notice));
        return "system/notice/addnotice";
    }

    @RequestMapping("/addNoticeSave")
    public String addNoticeSave(Notice notice,Model model){

        if (noticeBiz.addNotice(notice)){
            return "redirect:/crm/listNoticeAll";
        }else {
            return "redirect:/crm/addnotice";
        }
    }
}
