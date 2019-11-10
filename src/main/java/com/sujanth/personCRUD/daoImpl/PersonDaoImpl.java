package com.sujanth.personCRUD.daoImpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import com.sujanth.personCRUD.model.Person;
import com.sujanth.personCRUD.dao.PersonDao;

@Repository
public class PersonDaoImpl implements PersonDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addPerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		//session.saveOrUpdate(p);//commented to follow JPA spec
		session.persist(p);
		System.out.println("Person saved successfully, Person Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Person> listPersons() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Person> personsList = session.createQuery("from Person").list();
		for(Person p : personsList){
			System.out.println("Person List::"+p);
		}
		return personsList;
	}

	@Override
	public void removePerson(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		System.out.println("Person deleted successfully, person details="+p);
	}
	
	@Override
	public void updatePerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		//session.update(p); //commented to follow JPA spec
		Person updatedPerson=(Person)session.merge(p);
		System.out.println("Person updated successfully, Person Details="+updatedPerson);
	}
	
	@Override
	public Person getPersonById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Person p = (Person) session.load(Person.class, new Integer(id));
		System.out.println("Person loaded successfully, Person details="+p);
		return p;
	}

}

