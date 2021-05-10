package DTO;

public class MemberDto {

	int member_point;
	String member_id; 
	String member_password;
	String member_name;
	int member_resdentnum;
	String member_sex;
	String member_birth;
	String member_phone;
	String member_cardtype;
	String member_cardcompany;
	String member_cardbenefit;
	
	
	public MemberDto() {
		// TODO Auto-generated constructor stub
	}

	
	public MemberDto( String member_id, String member_password, String member_name,
			int member_resdentnum, String member_phone ) {
		
		this.member_id = member_id;
		this.member_password = member_password;
		this.member_name = member_name;
		this.member_resdentnum = member_resdentnum;
		this.member_phone = member_phone;
		
	}
	
	
	public int getMember_point() {
		return member_point;
	}
	public void setMember_point(int member_point) {
		this.member_point = member_point;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_password() {
		return member_password;
	}
	public void setMember_password(String member_password) {
		this.member_password = member_password;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public int getMember_resdentnum() {
		return member_resdentnum;
	}
	public void setMember_resdentnum(int member_resdentnum) {
		this.member_resdentnum = member_resdentnum;
	}
	public String getMember_sex() {
		return member_sex;
	}
	public void setMember_sex(String member_sex) {
		this.member_sex = member_sex;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_cardtype() {
		return member_cardtype;
	}
	public void setMember_cardtype(String member_cardtype) {
		this.member_cardtype = member_cardtype;
	}
	public String getMember_cardcompany() {
		return member_cardcompany;
	}
	public void setMember_cardcompany(String member_cardcompany) {
		this.member_cardcompany = member_cardcompany;
	}
	public String getMember_cardbenefit() {
		return member_cardbenefit;
	}
	public void setMember_cardbenefit(String member_cardbenefit) {
		this.member_cardbenefit = member_cardbenefit;
	}
	

}
