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
	public partial class AddressService : IAddressService
	{
		IUnitOfWork _unitOfWork;
		public AddressService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<Address> Get(System.Guid? addressId)
		{
			return await _unitOfWork.AddressRepository.Get(addressId);
		}
		public async Task<Address> Get(System.Guid? addressId,int DrivingSchoolAPI)
		{
			return await _unitOfWork.AddressRepository.Get(addressId,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? addressId)
		{
			return await _unitOfWork.AddressRepository.Delete(addressId);
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.AddressRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.AddressRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.AddressRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.AddressRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Address>> Search(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country)
		{
			return await _unitOfWork.AddressRepository.Search(addressId, building, street, town, city, postalCode, province, country);
		}
		public async Task<int> Insert(Address usermodel)
		{
			return await _unitOfWork.AddressRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country)
		{
			return await _unitOfWork.AddressRepository.Insert(addressId, building, street, town, city, postalCode, province, country);
		}
		public async Task<int> Update(Address usermodel)
		{
			return await _unitOfWork.AddressRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country)
		{
			return await _unitOfWork.AddressRepository.Update(addressId, building, street, town, city, postalCode, province, country);
		}
	}
}

