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
	public partial interface ISchoolOfficeService
	{
		Task<SchoolOffice> Get(System.Guid? officeId);
		Task<SchoolOffice> Get(System.Guid? officeId,int DrivingSchoolAPI);
		Task<IEnumerable<SchoolOffice>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<SchoolOffice>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<SchoolOffice>> Search(int pageIndex, int pageSize, int DrivingSchoolAPI);
		Task<IEnumerable<SchoolOffice>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, int DrivingSchoolAPI);
		Task<IEnumerable<SchoolOffice>> Search(System.Guid? officeId, System.Guid? addressID, System.String name);
		Task<int> Delete(System.Guid? officeId);
		Task<int> Insert(SchoolOffice model);
		Task<int> Insert(System.Guid? officeId, System.Guid? addressID, System.String name);
		Task<int> Update(SchoolOffice model);
		Task<int> Update(System.Guid? officeId, System.Guid? addressID, System.String name);
	}
}

