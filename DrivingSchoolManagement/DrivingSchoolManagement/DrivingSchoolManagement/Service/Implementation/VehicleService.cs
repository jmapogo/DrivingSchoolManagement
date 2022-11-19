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
using MapogoSoft.DrivingSchoolAPI.Data.Infrastructure;
using MapogoSoft.DrivingSchoolAPI.Data.UnitOfWork;
using MapogoSoft.DrivingSchoolAPI.Data.Entities;

namespace MapogoSoft.DrivingSchoolAPI.Data.Service
{
	public partial class VehicleService : IVehicleService
	{
		IUnitOfWork _unitOfWork;
		public VehicleService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<Vehicle> Get(System.Guid? vehicleRegNumber)
		{
			return await _unitOfWork.VehicleRepository.Get(vehicleRegNumber);
		}
		public async Task<Vehicle> Get(System.Guid? vehicleRegNumber,int DrivingSchoolAPI)
		{
			return await _unitOfWork.VehicleRepository.Get(vehicleRegNumber,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? vehicleRegNumber)
		{
			return await _unitOfWork.VehicleRepository.Delete(vehicleRegNumber);
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.VehicleRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.VehicleRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.VehicleRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.VehicleRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Vehicle>> Search(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color)
		{
			return await _unitOfWork.VehicleRepository.Search(vehicleRegNumber, officeId, make, model, year, color);
		}
		public async Task<int> Insert(Vehicle usermodel)
		{
			return await _unitOfWork.VehicleRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color)
		{
			return await _unitOfWork.VehicleRepository.Insert(vehicleRegNumber, officeId, make, model, year, color);
		}
		public async Task<int> Update(Vehicle usermodel)
		{
			return await _unitOfWork.VehicleRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color)
		{
			return await _unitOfWork.VehicleRepository.Update(vehicleRegNumber, officeId, make, model, year, color);
		}
	}
}

