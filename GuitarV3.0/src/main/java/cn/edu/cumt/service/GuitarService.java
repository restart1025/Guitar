package cn.edu.cumt.service;

import java.util.List;

import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.entity.GuitarSpec;
import net.sf.json.JSONObject;

public interface GuitarService {

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
	 * ��������
	 * @param whatErinLikes
	 * @return
	 */
	public JSONObject searchGuitar(GuitarSpec whatErinLikes);
	/**
	 * ɾ������
	 * @param serialNumber
	 */
	public boolean delete(String serialNumber);
	
}
