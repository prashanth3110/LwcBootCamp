/**
* @File Name : AccountHelper.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : February 17, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modificatio
*==============================================================================
* 1.0 | February 17, 2025 |   | Initial Version
**/

public with sharing class AccountHelper {
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