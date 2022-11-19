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
	public partial interface IVehicleRepository
	{
		Task<Vehicle> Get(System.Guid? vehicleRegNumber);
		Task<Vehicle> Get(System.Guid? vehicleRegNumber,int DrivingSchoolAPI);
		Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring);
		
		Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI);
		Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI);
		Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring,int DrivingSchoolAPI);
		Task<IEnumerable<Vehicle>> Search(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color);
		Task<int> Delete(System.Guid? vehicleRegNumber);
		Task<int> Insert(Vehicle model);
		Task<int> Insert(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color);
		Task<int> Update(Vehicle model);
		Task<int> Update(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color);
		
	}
}

