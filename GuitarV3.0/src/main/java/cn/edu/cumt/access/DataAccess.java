package cn.edu.cumt.access;

import cn.edu.cumt.dao.GuitarDao;
import cn.edu.cumt.dao.GuitarSpecDao;
import cn.edu.cumt.sqliteDao.impl.GuitarDaoImpl;
import cn.edu.cumt.sqliteDao.impl.GuitarSpecDaoImpl;

public class DataAccess {

//	private static String daoName = "mysqlDao";
	private static String daoName = "sqliteDao";
	
	/**
	 * 创造GuitarDao
	 * @return
	 */
	public static GuitarDao createGuitarDao(){
		
		GuitarDao guitarDao = null;
		
			try {
				Object o = Class.forName("cn.edu.cumt." + daoName + ".impl.GuitarDaoImpl").newInstance();
				guitarDao = (GuitarDaoImpl) o;
			} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e ) {
				e.printStackTrace();
			}
		return guitarDao;
		
	}
	/**
	 * 创造GuitarSpecDao
	 * @return
	 */
	public static GuitarSpecDao createGuitarSpecDao(){
			
		GuitarSpecDao guitarSpecDao = null;
		
		try {
			Object o = Class.forName("cn.edu.cumt." + daoName + ".impl.GuitarSpecDaoImpl").newInstance();
			
			guitarSpecDao = (GuitarSpecDaoImpl) o;
			
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return guitarSpecDao;
		
	}
	
}
