package com.sujanth.personCRUD.dao;

import java.util.List;
import com.sujanth.personCRUD.model.Person;

public interface PersonDao {

	public void addPerson(Person p);
	public List<Person> listPersons();
	public void removePerson(int id);
	public void updatePerson(Person p);
	public Person getPersonById(int id);
}
