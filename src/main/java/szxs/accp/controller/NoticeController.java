package szxs.accp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import szxs.accp.biz.NoticeBiz;
import szxs.accp.entity.Notice;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

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

    /**
     * 跳转至公告修改界面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/modifyNotice/{id}")
    public String modifyMotice(@PathVariable int id,Model model){
        List<Notice> selecttype = noticeBiz.selecttype(null);
        model.addAttribute("list1",noticeBiz.selecttype(null));
        Notice notice1 = noticeBiz.selecttype( new Notice(id)).get(0);
        model.addAttribute("notice",notice1);
        return "system/notice/modifynotice";
    }

    /**
     * 修改公告信息
     * @param notice
     * @return
     */
    @RequestMapping("/modifynotice")
    public String modifyNoticeto(Notice notice){
        if (noticeBiz.modifyNotice(notice)>0){
            return "redirect:/crm/listNoticeAll";
        }else{
            return "redirect:/crm/modifynotice";
        }
    }

    @RequestMapping("/deletenotice/{id}")
    public String deletenoticeto(Model model,Notice notice,@PathVariable int id){
        if (noticeBiz.removeNotice(id)){
            return "redirect:/crm/listNoticeAll";
        }else {
            return "redirect:/crm/listNoticeAll";
        }
    }
}
