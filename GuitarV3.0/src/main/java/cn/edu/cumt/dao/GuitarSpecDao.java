package cn.edu.cumt.dao;

import cn.edu.cumt.entity.GuitarSpec;

public interface GuitarSpecDao {

	/**
	 * ��������
	 * @param guitarSpec
	 * @return
	 */
	public boolean add(GuitarSpec guitarSpec);
	/**
	 * ��������
	 * @param guitarSpec
	 * @return
	 */
	public GuitarSpec queryGuitarSpec(GuitarSpec guitarSpec);
	/**
	 * ���ݱ�Ų�������
	 * @param serialNumber
	 * @return
	 */
	public GuitarSpec queryGuitarSpecByserialNumber(String serialNumber);
	
}
