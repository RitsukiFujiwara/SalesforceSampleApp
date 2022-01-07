public class ContactUser {
        //ログイン状態
    public User__c inputUser {get; set;}    
    public User__c loginUser {get; set;} 
    public String UserId{get; set;} 
    public String UserName {get; set;} 
    public boolean render {get; set;} 
    public String CookieId ;
    public String objectId {get; set;}
    	//新規ユーザ
        public String inputNewName {get; set;}
        public String inputNewEmail{get; set;}
        public String inputNewPassword {get; set;}

        /********************************
         * 　　会員登録
         * *******************************/
        public PageReference ContactUser(){
          User__c user = new User__c();
            user.Name  = inputNewName;
            user.email__c  = inputNewEmail;
            user.password__c = inputNewPassword;
            insert user;
            return page.home;
        }

        public List<product2> nameList {
          get {
              List<product2> nameList = new List<product2>();
              nameList = [select Id,Name,price__c, Description,img__c from product2 order by LastModifiedDate desc];
              return nameList;
          }set;}
          
    
}