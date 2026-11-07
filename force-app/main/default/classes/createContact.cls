/**
* @File Name : createContact.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : June 21, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | June 21, 2025 |   | Initial Version
**/

public class createContact {
	@AuraEnabled
	public static id createContactOnAccount( string fname, string lname, Id AccountId){
		Contact con = new Contact(
			firstName = fname,
			LastName = lname,
			AccountId = AccountId
		);
		insert con;
		return con.Id;
	}
}