package web;

import java.util.ArrayList;
import java.util.List;

import metier.entities.Pet;

public class PetModel {
	private List<Pet> pet=new ArrayList<Pet>();

	public PetModel() {
		super();
	}

	public List<Pet> getPet() {
		return pet;
	}

	public void setPet(List<Pet> pet) {
		this.pet = pet;
	}

}
