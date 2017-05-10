package cn.edu.cumt.action;

import java.util.LinkedList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.cumt.dao.GuitarDao;
import cn.edu.cumt.dao.impl.GuitarDaoImpl;
import cn.edu.cumt.entity.Builder;
import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.entity.GuitarSpec;
import cn.edu.cumt.entity.Type;
import cn.edu.cumt.entity.Wood;
import cn.edu.cumt.service.GuitarService;
import cn.edu.cumt.service.impl.GuitarServiceImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GuitarAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Builder builder;
	private String model;
	private Type type;
	private int numStrings;
	private Wood backWood;
	private Wood topWood;
	private List<Guitar> matchingGuitars = new LinkedList<Guitar>();
	private JSONObject jsonObject = new JSONObject();
	
	/**
	 * À—À˜
	 * @return
	 */
	public String search(){
		GuitarDao guitarDao = new GuitarDaoImpl();
		
		GuitarService guitarService = new GuitarServiceImpl();
		
		guitarService.setGuitarDao(guitarDao);
		
		Inventory inventory = new Inventory();
		//guitars÷–∏≥÷µ
		inventory.setGuitars(guitarService.getAll());
		
		GuitarSpec whatErinLikes = 
			      new GuitarSpec(builder, model, 
		                     type, numStrings, backWood, topWood);
		//≤‚ ‘”√¿˝
//	    GuitarSpec whatErinLikes = 
//	    	      new GuitarSpec(Builder.FENDER, "Stratocastor", 
//	    	                     Type.ELECTRIC, 6, Wood.ALDER, Wood.ALDER);
		
		if( model != null && !model.equals("") ){
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
		//jsonObject.put("recordsTotal", matchingGuitars.size());
		return SUCCESS;
	}
	
	public Builder getBuilder() {
		return builder;
	}
	public void setBuilder(Builder builder) {
		this.builder = builder;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public int getNumStrings() {
		return numStrings;
	}
	public void setNumStrings(int numStrings) {
		this.numStrings = numStrings;
	}
	public Wood getBackWood() {
		return backWood;
	}
	public void setBackWood(Wood backWood) {
		this.backWood = backWood;
	}
	public Wood getTopWood() {
		return topWood;
	}
	public void setTopWood(Wood topWood) {
		this.topWood = topWood;
	}

	public List<Guitar> getMatchingGuitars() {
		return matchingGuitars;
	}

	public void setMatchingGuitars(List<Guitar> matchingGuitars) {
		this.matchingGuitars = matchingGuitars;
	}

	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	
}
