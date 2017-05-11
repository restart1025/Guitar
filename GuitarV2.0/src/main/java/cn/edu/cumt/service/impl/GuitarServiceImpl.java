package cn.edu.cumt.service.impl;

import java.util.LinkedList;
import java.util.List;

import cn.edu.cumt.dao.GuitarDao;
import cn.edu.cumt.dao.impl.Inventory;
import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.entity.GuitarSpec;
import cn.edu.cumt.service.GuitarService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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

	@Override
	public JSONObject searchGuitar(GuitarSpec whatErinLikes) {
		
		JSONObject jsonObject = new JSONObject();
		
		Inventory inventory = new Inventory();
		//guitars÷–∏≥÷µ
		inventory.setGuitars(this.getAll());
		
		List<Guitar> matchingGuitars = new LinkedList<Guitar>();
		
		//≤‚ ‘”√¿˝
//	    GuitarSpec whatErinLikes = 
//	    	      new GuitarSpec(Builder.FENDER, "Stratocastor", 
//	    	                     Type.ELECTRIC, 6, Wood.ALDER, Wood.ALDER);
		
		if( whatErinLikes.getModel() != null && !whatErinLikes.getModel().equals("") ){
			matchingGuitars = inventory.search(whatErinLikes);
		}else{
			matchingGuitars = inventory.getGuitars();
		}
		
		JSONArray ja = new JSONArray();
		for( Guitar guitar : matchingGuitars ){
			JSONObject jo = new JSONObject();
			jo.put("builder", guitar.getSpec().getBuilder().toString());
			jo.put("model", guitar.getSpec().getModel());
			jo.put("type", guitar.getSpec().getType().toString());
			jo.put("numStrings", guitar.getSpec().getNumStrings());
			jo.put("backWood", guitar.getSpec().getBackWood().toString());
			jo.put("topWood", guitar.getSpec().getTopWood().toString());
			jo.put("price", guitar.getPrice());
			ja.add(jo);
		}
		jsonObject.put("data", ja);
		jsonObject.put("recordsTotal", matchingGuitars.size());
		
		return jsonObject;
	}
	
}
