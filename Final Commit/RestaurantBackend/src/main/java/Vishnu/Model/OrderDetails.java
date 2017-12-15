 package Vishnu.Model;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

@Component
@Entity
public class OrderDetails implements Serializable  {
	
	private static final long serialVersionUID=7L;
	@Id
	@GeneratedValue
	int orderid;
	int sum;
	int cartit;
	String username;
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getCartit() {
		return cartit;
	}
	public void setCartit(int cartit) {
		this.cartit = cartit;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	
	

}
