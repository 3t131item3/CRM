package szxs.accp.biz;

import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.User;

import java.util.List;

public interface UserBiz {
    /**
     * 用户登录
     * @param user
     * @return
     */
    User login(User user);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    User queryId(int id);


    /**
     * 查询所有用户或根据条件模糊查找
     * @return
     */
    List<User> listAll(String userName);

    /**
     *
     * @param userCode 验证userCode是否存在
     * @return
     */
    User check(String userCode);

    /**
     * 添加
     * @param user
     * @return
     */

    boolean add(User user);

    /**
     * 修改
     * @param user
     * @return
     */
    boolean modify(User user);

    /**
     * 删除
     * @param id
     * @return
     */

    boolean remove(int id);
    /**
     * 根据id和密码查询
     * @param id
     * @param pwd
     * @return
     */
    User queryIdAndPwd(@Param("id") int id,String pwd);
}
