package dao;

import java.util.List;

import metier.entities.Pet;

public class TestPet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PetDao metierPet =new PetDao();
		List<Pet> pets = metierPet.getPets();
	
		for(Pet p :pets) {
			System.out.println(p.getId_p());
	 		
		}

	}

}
