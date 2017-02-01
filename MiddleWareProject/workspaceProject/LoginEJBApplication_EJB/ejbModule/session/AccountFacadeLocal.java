package session;

import java.util.List;

import javax.ejb.Local;

import entity.Account;

@Local
public interface AccountFacadeLocal {

	
	void create (Account account);
	void edit (Account acount);
	void remove (Account account);
	Account find(Object id);
	List <Account>findAll();
	List <Account>findRange(int[]range);
	int count();
	boolean checkLogin (String u,String p);
}
