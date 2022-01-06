public class ContactUser {
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
            return page.Usercreated;
        }
}