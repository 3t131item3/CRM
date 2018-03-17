package szxs.accp.controller;

import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import szxs.accp.biz.NoticeBiz;
import szxs.accp.entity.Notice;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
        model.addAttribute("noticeList",noticeBiz.listNoticAll(title));
        model.addAttribute("title",title);
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
        String code="crm-"+ UUID.randomUUID().toString().replaceAll("\\d","").replaceAll("-","").substring(0,4);
        notice.setNoticeCode(code);
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

    /**
     * 根据id删除公告信息
     * @param id
     * @return
     */
    @RequestMapping("/deletenotice/{id}")
    @ResponseBody
    public String deletenoticeto(@PathVariable int id){
        Map<String,String> map = new HashMap<String, String>();
        if (noticeBiz.removeNotice(id)){
            map.put("delResult","true");
        }else {
            map.put("delResult","false");
        }
        return JSON.toJSONString(map);
    }

    /**
     * 查看公告单条信息
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("/noticeview/{id}")
    public String noticeview(Model model,@PathVariable int id){
        Notice notice = noticeBiz.selecttype(new Notice(id)).get(0);
        model.addAttribute("view",notice);
        return "system/notice/noticeview";
    }
}
