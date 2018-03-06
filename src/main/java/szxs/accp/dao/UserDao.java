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
     * @param userCode 根据userCode查找
     * @return
     */
    User check(@Param("userCode") String userCode);

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
