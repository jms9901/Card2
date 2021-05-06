package DTO;

public class CardDto {
	
	private int card_number; // 카드번호
	private String card_name; // 카드이름
	private String card_company; // 카드사
	private int recommendation; // 추천수
	private int membership_fee; // 연회비
	private String images; // 이미지
	private String bank_link; // 카드사 링크
	
	public CardDto(String card_name, String card_company, int membership_fee,
			String images, String bank_link) {
		this.card_name = card_name;
		this.card_company = card_company;
		this.membership_fee = membership_fee;
		this.images = images;
		this.bank_link = bank_link;
	}
	
	
	public int getCard_number() {
		return card_number;
	}
	public void setCard_number(int card_number) {
		this.card_number = card_number;
	}
	public String getCard_name() {
		return card_name;
	}
	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}
	public String getCard_company() {
		return card_company;
	}
	public void setCard_company(String card_company) {
		this.card_company = card_company;
	}
	public int getRecommendation() {
		return recommendation;
	}
	public void setRecommendation(int recommendation) {
		this.recommendation = recommendation;
	}
	public int getMembership_fee() {
		return membership_fee;
	}
	public void setMembership_fee(int membership_fee) {
		this.membership_fee = membership_fee;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getBank_link() {
		return bank_link;
	}
	public void setBank_link(String bank_link) {
		this.bank_link = bank_link;
	}

}
