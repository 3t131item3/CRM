package szxs.accp.biz.Impl;

import org.springframework.stereotype.Service;
import szxs.accp.biz.UserBiz;
import szxs.accp.dao.UserDao;
import szxs.accp.entity.User;

import javax.annotation.Resource;
import java.security.MessageDigest;
import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz{

    @Resource(name = "userDao")
    private UserDao userDao;

    /**
     * 登录功能
     * @param user
     * @return
     */
    public User login(User user)
    {
        return userDao.login(user);
    }

    public User queryId(int id) {
        return userDao.queryId(id);
    }


    /**
     * 查询所有
     * @param userName
     * @return
     */
    public List<User> listAll(String userName) {
        return userDao.listAll(userName);
    }

    /**
     *
     * @param userCode 验证userCode是否存在
     * @return
     */
    public User check(String userCode) {
        return userDao.check(userCode);
    }

    /**
     * 添加
     * @param user
     * @return
     */

    public boolean add(User user) {
        return userDao.add(user)>0;
    }

    /**
     * 修改
     * @param user
     * @return
     */
    public boolean modify(User user) {
        return userDao.modify(user)>0;
    }

    /**
     * 删除
     * @param id
     * @return
     */
    public boolean remove(int id) {
        return userDao.remove(id)>0;
    }

    public User queryIdAndPwd(int id, String pwd) {
        return userDao.queryIdAndPwd(id,string2MD5(pwd));
    }

    /***
     * MD5加码 生成32位md5码
     */
    public static String string2MD5(String inStr){
        MessageDigest md5 = null;
        try{
            md5 = MessageDigest.getInstance("MD5");
        }catch (Exception e){
            System.out.println(e.toString());
            e.printStackTrace();
            return "";
        }
        char[] charArray = inStr.toCharArray();
        byte[] byteArray = new byte[charArray.length];


        for (int i = 0; i < charArray.length; i++)
            byteArray[i] = (byte) charArray[i];
        byte[] md5Bytes = md5.digest(byteArray);
        StringBuffer hexValue = new StringBuffer();
        for (int i = 0; i < md5Bytes.length; i++){
            int val = ((int) md5Bytes[i]) & 0xff;
            if (val < 16)
                hexValue.append("0");
            hexValue.append(Integer.toHexString(val));
        }
        return hexValue.toString();
    }
}
