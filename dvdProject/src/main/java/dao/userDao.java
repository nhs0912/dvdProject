package dao;

import exception.AddException;
import exception.DeleteException;
import exception.FindException;
import exception.UpdateException;
import vo.User;

import java.util.ArrayList;

/**
 * Created by heeseoknoh on 9/2/16.
 */

public interface userDao {




    public User selectById(String id) throws FindException; // 회원 찾기

    public ArrayList<User> selectByAll() throws Exception; //모두 검색

    public void insert(User user) throws AddException; // 회원 추가

    public void update(String email) throws UpdateException;//회원정보 수정

    public void delete(String email) throws DeleteException; //회원 삭제
}
