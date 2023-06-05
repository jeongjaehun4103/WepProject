package storage;

import java.util.ArrayList;

public class ProductRepository {
	private ArrayList<Product> listOfProduct = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		if(instance == null) {
			instance = new ProductRepository();
		}
		return instance;
	}
	
	public ArrayList<Product> setList(Product pro) {
		
		listOfProduct.add(pro);		
		return listOfProduct;		
	}

	public ArrayList<Product> getList() {
		return listOfProduct;
	}


	public ProductRepository () {
		Product phone1 = new Product("p0001", "iPhone14", 1700000);
		
		phone1.setDescription("6.1인치");
		phone1.setCategory("스마트폰");
		phone1.setManufacturer("Apple");
		phone1.setUnitsInStock(20);
		phone1.setCondition("new");
		phone1.setImageFile("images/iphone14.jpg");
		listOfProduct.add(phone1);
		
		Product phone2 = new Product("p0002", "S23", 1250000);
		
		phone2.setDescription("6.1인치");
		phone2.setCategory("스마트폰");
		phone2.setManufacturer("Samsung");
		phone2.setUnitsInStock(40);
		phone2.setCondition("new");
		phone2.setImageFile("images/s23.jpg");
		listOfProduct.add(phone2);
		
		Product phone3 = new Product("p0003", "P40", 800000);
		
		phone3.setDescription("6.1인치");
		phone3.setCategory("스마트폰");
		phone3.setManufacturer("Huawei");
		phone3.setUnitsInStock(24);
		phone3.setCondition("new");
		phone3.setImageFile("images/hwa.jpg");
		listOfProduct.add(phone3);
	}

}
