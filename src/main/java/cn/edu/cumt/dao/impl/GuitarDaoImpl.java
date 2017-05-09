package cn.edu.cumt.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import cn.edu.cumt.dao.GuitarDao;
import cn.edu.cumt.dao.GuitarSpecDao;
import cn.edu.cumt.dbutil.DbUtil;
import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.entity.GuitarSpec;

public class GuitarDaoImpl implements GuitarDao {

	GuitarSpecDao guitarSpecDao = new GuitarSpecDaoImpl();
	
	@Override
	public boolean add(Guitar guitar) {
		
		GuitarSpec guitarSpec = guitarSpecDao.queryGuitarSpec(guitar.getSpec());
		if( guitarSpec == null ){
			guitarSpecDao.add(guitar.getSpec());
		}
		return DbUtil.executeUpdate("INSERT INTO GUITAR VALUES (?, ?, ?);",
				new Object[]{guitar.getSerialNumber(), guitar.getPrice(), guitar.getSpec().getSerialNumber()});
	}

	@Override
	public List<Guitar> getAll() {
		List<Guitar> guitarList = new LinkedList<Guitar>();
		ResultSet rs = DbUtil.executeQuery("SELECT * FROM GUITAR", new Object[]{ });
		try{
			while(rs.next()){
				GuitarSpec guitarSpec = guitarSpecDao.queryGuitarSpecByserialNumber( rs.getString(3) );
				Guitar guitar = new Guitar(rs.getString(1), rs.getDouble(2), guitarSpec);
				guitarList.add(guitar);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return guitarList;
	}

	@Override
	public Guitar getBySerialNumber(String serialNumber) {
		Guitar guitar = null;
		ResultSet rs = DbUtil.executeQuery("SELECT * FROM GUITAR WHERE serialNumber=?",
						new Object[]{ serialNumber });
		try{
			while(rs.next()){
				GuitarSpec guitarSpec = guitarSpecDao.queryGuitarSpecByserialNumber( rs.getString(3) );
				guitar = new Guitar(rs.getString(1), rs.getDouble(2), guitarSpec);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return guitar;
	}

	

}
