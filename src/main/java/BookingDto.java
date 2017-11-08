public class BookingDto {
    private String hname;
	private String uname;
	private String bno;
	

	public String getBno() {
        return bno;
    }
    public String getHname() {
        return hname;
    }

    
    public String getUname() {
        return uname;
    }
	 
    public void setBno(String bno) {
        this.bno = bno;
    }    

    public void setHname(String hname) {
        this.hname = hname;
    }


    public void setUname(String uname) {
        this.uname = uname;
    }
   
}
