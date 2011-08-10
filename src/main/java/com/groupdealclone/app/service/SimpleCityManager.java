package com.groupdealclone.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.groupdealclone.app.dao.CityDao;
import com.groupdealclone.app.domain.City;

@Service
public class SimpleCityManager implements CityManager {
	
	@Autowired 
	private CityDao cityDao;

	public City getCity(Long id) {
		return cityDao.getCity(id);
	}

	@Transactional
	public void saveCity(City city) {
		cityDao.saveCity(city);
		
	}

	public List<City> getCity() {
		return cityDao.getCities();
	}

	@Override
	public void updateCity(City city) {
		cityDao.updateCity(city);
	}

	public void setCityDao(CityDao cityDao) {
		this.cityDao = cityDao;
	}

}