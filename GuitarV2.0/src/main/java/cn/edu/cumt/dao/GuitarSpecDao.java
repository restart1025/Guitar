package cn.edu.cumt.dao;

import cn.edu.cumt.entity.GuitarSpec;

public interface GuitarSpecDao {

	/**
	 * 新增数据
	 * @param guitarSpec
	 * @return
	 */
	public boolean add(GuitarSpec guitarSpec);
	/**
	 * 查找数据
	 * @param guitarSpec
	 * @return
	 */
	public GuitarSpec queryGuitarSpec(GuitarSpec guitarSpec);
	/**
	 * 根据编号查找数据
	 * @param serialNumber
	 * @return
	 */
	public GuitarSpec queryGuitarSpecByserialNumber(String serialNumber);
	
}
