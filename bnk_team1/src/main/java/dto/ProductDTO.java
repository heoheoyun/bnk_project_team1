package dto;

public class ProductDTO {
	private String pcode, pname;
	private int cost, ten, fif;
	
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
	
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
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
		return "ProductDTO [pcode=" + pcode + ", pname=" + pname + ", cost=" + cost + ", ten=" + ten + ", fif=" + fif
				+ "]";
	}	
}