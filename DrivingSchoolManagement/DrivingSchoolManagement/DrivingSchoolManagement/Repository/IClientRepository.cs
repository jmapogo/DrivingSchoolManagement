/***************************************************************/
/* Code Writer (written by Anish M Mathew )                                 */
/*                                                                          */
/* This file was automatically generated using Code Writer                  */
/* Any manual changes to this file will be overwritten by a automated tool. */
/*                                                                          */
/* Date Generated : 17/11/2022 20:33:10                                      */
/*                                                                          */
/* More Details    --                                                       */
/*http://visualstudiogallery.msdn.microsoft.com/40d92d45-107e-4f83-b6c5-50a7e2419389*/
/****************************************************************************/
using System.Collections.Generic;
using System.Threading.Tasks;
using MapogoSoft.DrivingSchoolAPI.Data.Entities;


namespace MapogoSoft.DrivingSchoolAPI.Data.Repository
{
	public partial interface IClientRepository
	{
		Task<Client> Get(System.Guid? clientId);
		Task<Client> Get(System.Guid? clientId,int DrivingSchoolAPI);
		Task<IEnumerable<Client>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring);
		
		Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI);
		Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI);
		Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring,int DrivingSchoolAPI);
		Task<IEnumerable<Client>> Search(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber);
		Task<int> Delete(System.Guid? clientId);
		Task<int> Insert(Client model);
		Task<int> Insert(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber);
		Task<int> Update(Client model);
		Task<int> Update(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber);
		
	}
}

