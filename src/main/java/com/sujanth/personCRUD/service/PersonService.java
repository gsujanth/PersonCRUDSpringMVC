package com.sujanth.personCRUD.service;

import java.util.List;
import com.sujanth.personCRUD.model.Person;

public interface PersonService {

	public void addPerson(Person p);
	public List<Person> listPersons();
	public void removePerson(int id);
	public void updatePerson(Person p);
	public Person getPersonById(int id);
}
