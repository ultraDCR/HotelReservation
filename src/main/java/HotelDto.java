public class HotelDto {
    private String hname;
	private String haddress;
	private String hid;
	private String hdescription;

	public String getHid() {
        return hid;
    }
    public String getHname() {
        return hname;
    }

    public String getHaddress() {
        return haddress;
    }
    public String getHdescription() {
        return hdescription;
    }
	 
    public void setHid(String hid) {
        this.hid = hid;
    }    

    public void setHname(String hname) {
        this.hname = hname;
    }


    public void setHaddress(String haddress) {
        this.haddress = haddress;
    }

     public void setHdescription(String hdescription) {
        this.hdescription = hdescription;
    }
   
}
