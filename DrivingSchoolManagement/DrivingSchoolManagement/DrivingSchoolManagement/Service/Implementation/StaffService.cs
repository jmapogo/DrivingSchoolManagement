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
	public partial class StaffService : IStaffService
	{
		IUnitOfWork _unitOfWork;
		public StaffService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<Staff> Get(System.Guid? staffId)
		{
			return await _unitOfWork.StaffRepository.Get(staffId);
		}
		public async Task<Staff> Get(System.Guid? staffId,int DrivingSchoolAPI)
		{
			return await _unitOfWork.StaffRepository.Get(staffId,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? staffId)
		{
			return await _unitOfWork.StaffRepository.Delete(staffId);
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.StaffRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.StaffRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.StaffRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.StaffRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Staff>> Search(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff)
		{
			return await _unitOfWork.StaffRepository.Search(staffId, homeAddressId, officeId, firstName, middleName, lastName, dateOfBirth, dateJoinedStaff, dateLeftStaff);
		}
		public async Task<int> Insert(Staff usermodel)
		{
			return await _unitOfWork.StaffRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff)
		{
			return await _unitOfWork.StaffRepository.Insert(staffId, homeAddressId, officeId, firstName, middleName, lastName, dateOfBirth, dateJoinedStaff, dateLeftStaff);
		}
		public async Task<int> Update(Staff usermodel)
		{
			return await _unitOfWork.StaffRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff)
		{
			return await _unitOfWork.StaffRepository.Update(staffId, homeAddressId, officeId, firstName, middleName, lastName, dateOfBirth, dateJoinedStaff, dateLeftStaff);
		}
	}
}

