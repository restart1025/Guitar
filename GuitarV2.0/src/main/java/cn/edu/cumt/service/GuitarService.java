package cn.edu.cumt.service;

import java.util.List;

import cn.edu.cumt.dao.GuitarDao;
import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.entity.GuitarSpec;
import net.sf.json.JSONObject;

public interface GuitarService {

	/**
	 * 增加数据
	 * @param guitar
	 * @return
	 */
	public boolean add(Guitar guitar);
	/**
	 * 查询所有数据
	 * @return
	 */
	public List<Guitar> getAll();
	/**
	 * 根据编号查询数据
	 * @param serialNumber
	 * @return
	 */
	public Guitar getBySerialNumber(String serialNumber);
	/**
	 * 注入
	 * @param guitarDao
	 */
	void setGuitarDao(GuitarDao guitarDao);
	/**
	 * 搜索吉他
	 * @param whatErinLikes
	 * @return
	 */
	public JSONObject searchGuitar(GuitarSpec whatErinLikes);
	
}
