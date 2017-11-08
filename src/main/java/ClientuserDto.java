public class ClientuserDto {
    private String cid;
	private String fname;
	private String mname;
	private String lname;
        private String gender;
        private String uname;
        private String pass;
        
        
	public String getCid() {
        return cid;
    }
    public String getFname() {
        return fname;
    }
    
    public String getMname() {
        return mname;
    }
    
    public String getlname() {
        return lname;
    }
    

    public String getGender() {
        return gender;
    }
    public String getUname() {
        return uname;
    }
    
    public String getPass() {
        return pass;
    }
	 
    public void setCid(String cid) {
        this.cid = cid;
    }    

    public void setFname(String fname) {
        this.fname = fname;
    }
    
    public void setMname(String mname) {
        this.mname = mname;
    }
    
    public void setLname(String lname) {
        this.lname = lname;
    }


    public void setGender(String gender) {
        this.gender = gender;
    }

     public void setUname(String uname) {
        this.uname = uname;
    }
     
     public void setPass(String pass) {
        this.pass = pass;
    }
     
     
   
}
