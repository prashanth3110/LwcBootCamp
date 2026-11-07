/**
* @File Name : AccountController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : November 3, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | November 3, 2025 |   | Initial Version
**/

public class AccountController {
	@AuraEnabled(cacheable=true)
	public static List<Account> getAccounts(){
		return [select id,name,industry from account limit 5];
	
	}
	@AuraEnabled
	public static void insertAccount(string accName){
		account acc = new account(Name = accName);
		insert acc;
	}
}