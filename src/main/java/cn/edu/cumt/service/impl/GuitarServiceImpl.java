package cn.edu.cumt.service.impl;

import java.util.List;

import cn.edu.cumt.dao.GuitarDao;
import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.service.GuitarService;

public class GuitarServiceImpl implements GuitarService {

	private GuitarDao guitarDao;
	
	@Override
	public void setGuitarDao(GuitarDao guitarDao) {
		this.guitarDao = guitarDao;
	}

	@Override
	public boolean add(Guitar guitar) {
		return guitarDao.add(guitar);
	}

	@Override
	public List<Guitar> getAll() {
		return guitarDao.getAll();
	}

	@Override
	public Guitar getBySerialNumber(String serialNumber) {
		return guitarDao.getBySerialNumber(serialNumber);
	}
	
}
