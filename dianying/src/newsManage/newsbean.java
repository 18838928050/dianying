package newsManage;

public class newsbean implements java.io.Serializable {
	private String newsname;
	private String basefee;
	private String ratefee;
	private String newsdesc;

	public String getnewsname() {
		return newsname;
	}

	public void setnewsname(String newsname) {
		this.newsname = newsname;
	}

	public String getBasefee() {
		return basefee;
	}

	public void setBasefee(String basefee) {
		this.basefee = basefee;
	}

	public String getRatefee() {
		return ratefee;
	}

	public void setRatefee(String ratefee) {
		this.ratefee = ratefee;
	}

	public String getnewsdesc() {
		return newsdesc;
	}

	public void setnewsdesc(String newsdesc) {
		this.newsdesc = newsdesc;
	}

}
