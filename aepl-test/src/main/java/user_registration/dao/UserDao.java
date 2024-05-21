package user_registration.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import user_registration.dto.UserDto;

@Component
public class UserDao {

	EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public void insert(UserDto userDto) {
		System.out.println("dao 1 line");
		entityTransaction.begin();
		entityManager.persist(userDto);
		entityTransaction.commit();
		

		System.out.println("dao last line");
		
	}
}
