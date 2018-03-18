package szxs.accp.dao;


import org.apache.ibatis.annotations.Param;
import szxs.accp.entity.User;

import java.util.List;

public interface UserDao {
    /**
     * 根据id查询
     * @param id
     * @return
     */
    User queryId(int id);
    /**
     * 用户登录
     * @param user
     * @return
     */
    User login(User user);
    /**
     * 查询所有用户或根据条件查找
     * @return
     */
    List<User> listAll(@Param("userName") String userName);

    /**
     *
     * @param phone 根据phone查找
     * @return
     */
    User check(@Param("phone") String phone);

    /**
     * 根据名字和当前部门查询出他上级销售经理的名字
     * @param userName
     * @return
     */
    User getUserByUserName(@Param("userName") String userName);
    /**
     * 添加
     * @param user
     * @return
     */

    int add(User user);

    /**
     * 修改
     * @param user
     * @return
     */
    int modify(User user);

    /**
     * 删除
     * @param id
     * @return
     */

    int remove(int id);

    /**
     * 根据id和密码查询
     * @param id
     * @param userPassword
     * @return
     */
    User queryIdAndPwd(@Param("id") int id,@Param("userPassword")String userPassword);
}
