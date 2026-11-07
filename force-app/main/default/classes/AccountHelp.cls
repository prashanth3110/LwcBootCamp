/**
* @File Name : AccountHelp.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : May 28, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | May 28, 2025 |   | Initial Version
**/

public class AccountHelp {
	@AuraEnabled(cacheable=true)
	public static List<Account> getAccountData( string recordID){
		return[
			SELECT ID,Name,Industry,Rating
			FROM Account
			WITH User_MODE
		];
	}
	@AuraEnabled(cacheable=true)
	public static List<Account> getParentAccounts(){
			return [
				SELECT ID,Name,Industry
				FROM Account
				WHERE AnnualRevenue != null WITH User_MODE
			];
		
	}
}