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
	public partial interface IAddressRepository
	{
		Task<Address> Get(System.Guid? addressId);
		Task<Address> Get(System.Guid? addressId,int DrivingSchoolAPI);
		Task<IEnumerable<Address>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring);
		
		Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI);
		Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI);
		Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring,int DrivingSchoolAPI);
		Task<IEnumerable<Address>> Search(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country);
		Task<int> Delete(System.Guid? addressId);
		Task<int> Insert(Address model);
		Task<int> Insert(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country);
		Task<int> Update(Address model);
		Task<int> Update(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country);
		
	}
}

