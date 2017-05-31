package cn.edu.cumt.dao;

import java.util.List;

import cn.edu.cumt.entity.Guitar;

public interface GuitarDao {

	/**
	 * ��������
	 * @param guitar
	 * @return
	 */
	public boolean add(Guitar guitar);
	/**
	 * ��ѯ��������
	 * @return
	 */
	public List<Guitar> getAll();
	/**
	 * ���ݱ�Ų�ѯ����
	 * @param serialNumber
	 * @return
	 */
	public Guitar getBySerialNumber(String serialNumber);
	/**
	 * ɾ��Guitar
	 * @param serialNumber
	 */
	public boolean delete(String serialNumber);
	
}
