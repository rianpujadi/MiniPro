package com.rian.pujadi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AssetService {
	@Autowired
	private AssetRepository repo;
	
	public List<Asset> listAll() {
		return repo.findAll();
	}
	
	public void save(Asset user) {
		repo.save(user);
	}
	
	public Asset get(Integer id) {
		return repo.findById(id).get();
	}
	
	public void delete(Integer id) {
		repo.deleteById(id);
	}
}
