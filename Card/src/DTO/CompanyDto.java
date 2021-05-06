package DTO;

public class CompanyDto {
	
	private String card_company;
	private String card_name;
	private int card_category;
	
	public CompanyDto(String card_company, String card_name, int card_category) {
		this.card_company = card_company;
		this.card_name = card_name;
		this.card_category = card_category;
	}
	
	
	public String getCard_company() {
		return card_company;
	}
	public void setCard_company(String card_company) {
		this.card_company = card_company;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public int getCard_category() {
		return card_category;
	}
	public void setCard_category(int card_category) {
		this.card_category = card_category;
	}
	
	

}
