<<<<<<< HEAD
package cn.ccsu.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import cn.ccsu.entity.User;

@Repository
public interface UserMapper {

	public void addUser(User user);

	public User queryUserByName(@Param("name")  String name);

}
=======
package cn.ccsu.dao;

import org.springframework.stereotype.Repository;
import cn.ccsu.entity.User;

@Repository
public interface UserMapper {

	public void addUser(User user);

	public User queryUserByName(String name);

}
>>>>>>> 4c95842e54af405a20c2d0efa74e5f0893824e2a
