package dao;

import exception.AddException;
import exception.DeleteException;
import exception.FindException;
import exception.UpdateException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import vo.User;

import java.util.ArrayList;

/**
 * Created by heeseoknoh on 9/2/16.
 */

@Repository("userDao")
public class userDaoOracle implements userDao {


    @Autowired
    private SqlSession session;

    @Override
    public User selectById(String id) throws FindException {
        return null;
    }

    @Override
    public ArrayList<User> selectByAll() throws Exception {
        return null;
    }

    @Override
    public void insert(User user) throws AddException {
        session.insert("UserMapper.insert",user);
    }

    @Override
    public void update(String email) throws UpdateException {

    }

    @Override
    public void delete(String email) throws DeleteException {

    }
}
