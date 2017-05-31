package cn.edu.cumt.test;

import java.util.List;

import org.junit.Test;

import cn.edu.cumt.dao.Inventory;
import cn.edu.cumt.entity.Builder;
import cn.edu.cumt.entity.Guitar;
import cn.edu.cumt.entity.GuitarSpec;
import cn.edu.cumt.entity.Type;
import cn.edu.cumt.entity.Wood;
import cn.edu.cumt.service.GuitarService;
import cn.edu.cumt.service.impl.GuitarServiceImpl;

public class QueryAddDeleteTest {

	@Test
	public void query() {
	    // Set up Rick's guitar inventory
	    Inventory inventory = new Inventory();
	    /**
	     * 初始化inventory添加数据
	     */
	    initializeInventory(inventory);
	    
	    GuitarSpec whatErinLikes = 
	      new GuitarSpec(Builder.FENDER, "Stratocastor", 
	                     Type.ELECTRIC, 6, Wood.ALDER, Wood.ALDER);
	    List<Guitar> matchingGuitars = inventory.search(whatErinLikes);
	    if (!matchingGuitars.isEmpty()) {
	      System.out.println("Erin, you might like these guitars:");
	      for ( Guitar guitar : matchingGuitars ) {
	        GuitarSpec spec = guitar.getSpec();
	        System.out.println("  We have a " +
	          spec.getBuilder() + " " + spec.getModel() + " " +
	          spec.getType() + " guitar:\n     " +
	          spec.getBackWood() + " back and sides,\n     " +
	          spec.getTopWood() + " top.\n  You can have it for only $" +
	          guitar.getPrice() + "!\n  ----");
	      }
	    } else {
	      System.out.println("Sorry, Erin, we have nothing for you.");
	    }
	  }

	@Test
	public void addDataToDB(){
		try{
			Inventory inventory = new Inventory();
			/**
			 * 初始化添加数据库数据
			 */
			initializeGuitarAction(inventory);
			System.out.println("向数据库添加数据成功！");
		}catch(Exception e){
			System.err.println("向数据库添加数据失败！");
			
		}
	}
	@Test
	public void delete(){
		try{
			GuitarService guitarService = new GuitarServiceImpl();
			guitarService.delete("123456");
			System.out.println("数据库删除数据成功！");
		}catch(Exception e){
			System.err.println("数据库删除数据失败！");
			
		}
	}
	/**
	 * 初始化向数据库添加数据
	 * @param inventory
	 */
	  public static void initializeGuitarAction(Inventory inventory) {
	    inventory.addDBGuitar("123456", 3999.95, 
	      new GuitarSpec(Builder.COLLINGS, "CJ", Type.ACOUSTIC, 6,
	                     Wood.INDIAN_ROSEWOOD, Wood.SITKA));
	  }
	
	/**
	 * inventory 初始化数据
	 * @param inventory
	 */
	  private static void initializeInventory(Inventory inventory) {
	    inventory.addGuitar("11277", 3999.95, 
	      new GuitarSpec(Builder.COLLINGS, "CJ", Type.ACOUSTIC, 6,
	                     Wood.INDIAN_ROSEWOOD, Wood.SITKA));
	    inventory.addGuitar("V95693", 1499.95, 
	      new GuitarSpec(Builder.FENDER, "Stratocastor", Type.ELECTRIC, 6,
	                     Wood.ALDER, Wood.ALDER));
	    inventory.addGuitar("V9512", 1549.95, 
	      new GuitarSpec(Builder.FENDER, "Stratocastor", Type.ELECTRIC, 6,
	                     Wood.ALDER, Wood.ALDER));
	    inventory.addGuitar("122784", 5495.95, 
	      new GuitarSpec(Builder.MARTIN, "D-18", Type.ACOUSTIC, 6,
	                     Wood.MAHOGANY, Wood.ADIRONDACK));
	    inventory.addGuitar("76531", 6295.95, 
	      new GuitarSpec(Builder.MARTIN, "OM-28", Type.ACOUSTIC, 6,
	                     Wood.BRAZILIAN_ROSEWOOD, Wood.ADIRONDACK));
	    inventory.addGuitar("70108276", 2295.95, 
	      new GuitarSpec(Builder.GIBSON, "Les Paul", Type.ELECTRIC, 6,
	                     Wood.MAHOGANY, Wood.MAHOGANY));
	    inventory.addGuitar("82765501", 1890.95, 
	      new GuitarSpec(Builder.GIBSON, "SG '61 Reissue", Type.ELECTRIC, 6,
	                     Wood.MAHOGANY, Wood.MAHOGANY));
	    inventory.addGuitar("77023", 6275.95, 
	      new GuitarSpec(Builder.MARTIN, "D-28", Type.ACOUSTIC, 6,
	                     Wood.BRAZILIAN_ROSEWOOD, Wood.ADIRONDACK));
	    inventory.addGuitar("1092", 12995.95, 
	      new GuitarSpec(Builder.OLSON, "SJ", Type.ACOUSTIC, 12,
	                     Wood.INDIAN_ROSEWOOD, Wood.CEDAR));
	    inventory.addGuitar("566-62", 8999.95, 
	      new GuitarSpec(Builder.RYAN, "Cathedral", Type.ACOUSTIC, 12,
	                     Wood.COCOBOLO, Wood.CEDAR));
	    inventory.addGuitar("6 29584", 2100.95, 
	      new GuitarSpec(Builder.PRS, "Dave Navarro Signature", Type.ELECTRIC, 
	                     6, Wood.MAHOGANY, Wood.MAPLE));
	  }
	
}
