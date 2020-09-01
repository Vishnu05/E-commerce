package Vishnu.Model;

import java.io.Serializable;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product implements Serializable {
	
	private static final long serialVersionUID=2L;
	@Id
	@GeneratedValue
	int productId;
	
	@NotNull
	String productName,productDesc;
	@NotNull(message="Enter the valid data")
	int catId,supplierId;
	float quantity,price;
	
	@Transient
	@Lob
	MultipartFile pimage;
	public Product() {

	}

	public Product(int productId, String productName, String productDesc, int catId, int supplierId, float quantity, float price, MultipartFile pimage) {
		this.productId = productId;
		this.productName = productName;
		this.productDesc = productDesc;
		this.catId = catId;
		this.supplierId = supplierId;
		this.quantity = quantity;
		this.price = price;
		this.pimage = pimage;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public int getCatId() {
		return catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public float getQuantity() {
		return quantity;
	}

	public void setQuantity(float quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public MultipartFile getPimage() {
		return pimage;
	}

	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
}
