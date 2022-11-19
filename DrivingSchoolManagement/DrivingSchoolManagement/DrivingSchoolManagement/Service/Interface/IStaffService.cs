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


namespace MapogoSoft.DrivingSchoolAPI.Data.Service
{
	public partial interface IStaffService
	{
		Task<Staff> Get(System.Guid? staffId);
		Task<Staff> Get(System.Guid? staffId,int DrivingSchoolAPI);
		Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize, int DrivingSchoolAPI);
		Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, int DrivingSchoolAPI);
		Task<IEnumerable<Staff>> Search(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff);
		Task<int> Delete(System.Guid? staffId);
		Task<int> Insert(Staff model);
		Task<int> Insert(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff);
		Task<int> Update(Staff model);
		Task<int> Update(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff);
	}
}

