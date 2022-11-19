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
	public partial class ClientService : IClientService
	{
		IUnitOfWork _unitOfWork;
		public ClientService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<Client> Get(System.Guid? clientId)
		{
			return await _unitOfWork.ClientRepository.Get(clientId);
		}
		public async Task<Client> Get(System.Guid? clientId,int DrivingSchoolAPI)
		{
			return await _unitOfWork.ClientRepository.Get(clientId,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? clientId)
		{
			return await _unitOfWork.ClientRepository.Delete(clientId);
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.ClientRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.ClientRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.ClientRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.ClientRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Client>> Search(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber)
		{
			return await _unitOfWork.ClientRepository.Search(clientId, addressId, officeId, dateBecameCustomer, dateLastContact, dateOfBirth, firstName, middleName, lastName, emailAddress, homePhoneNumber, cellMobilePhoneNumber);
		}
		public async Task<int> Insert(Client usermodel)
		{
			return await _unitOfWork.ClientRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber)
		{
			return await _unitOfWork.ClientRepository.Insert(clientId, addressId, officeId, dateBecameCustomer, dateLastContact, dateOfBirth, firstName, middleName, lastName, emailAddress, homePhoneNumber, cellMobilePhoneNumber);
		}
		public async Task<int> Update(Client usermodel)
		{
			return await _unitOfWork.ClientRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber)
		{
			return await _unitOfWork.ClientRepository.Update(clientId, addressId, officeId, dateBecameCustomer, dateLastContact, dateOfBirth, firstName, middleName, lastName, emailAddress, homePhoneNumber, cellMobilePhoneNumber);
		}
	}
}

