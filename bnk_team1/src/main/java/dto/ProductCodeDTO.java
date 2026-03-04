package dto;

public class ProductCodeDTO {
	private String pcode, pname;
	private int price, ten, fif;
	
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getTen() {
		return ten;
	}
	public void setTen(int ten) {
		this.ten = ten;
	}
	
	public int getFif() {
		return fif;
	}
	public void setFif(int fif) {
		this.fif = fif;
	}
	
	@Override
	public String toString() {
		return "ProductCodeDTO [pcode=" + pcode + ", pname=" + pname + ", price=" + price + ", ten=" + ten + ", fif="
				+ fif + "]";
	}
}
