package Vishnu.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Supplier {

	
	@Id
 
	int supplierId;
	String supplierName,supplierAdd;
	
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierAdd() {
		return supplierAdd;
	}
	public void setSupplierAdd(String supplierAdd) {
		this.supplierAdd = supplierAdd;
	}
}
