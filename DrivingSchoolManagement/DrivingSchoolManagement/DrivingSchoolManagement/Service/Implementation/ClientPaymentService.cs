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
	public partial class ClientPaymentService : IClientPaymentService
	{
		IUnitOfWork _unitOfWork;
		public ClientPaymentService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<ClientPayment> Get(System.Guid? paymentId)
		{
			return await _unitOfWork.ClientPaymentRepository.Get(paymentId);
		}
		public async Task<ClientPayment> Get(System.Guid? paymentId,int DrivingSchoolAPI)
		{
			return await _unitOfWork.ClientPaymentRepository.Get(paymentId,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? paymentId)
		{
			return await _unitOfWork.ClientPaymentRepository.Delete(paymentId);
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.ClientPaymentRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.ClientPaymentRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.ClientPaymentRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.ClientPaymentRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<ClientPayment>> Search(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode)
		{
			return await _unitOfWork.ClientPaymentRepository.Search(paymentId, clientId, dateOfPayment, paymentAmount, paymentMethodCode);
		}
		public async Task<int> Insert(ClientPayment usermodel)
		{
			return await _unitOfWork.ClientPaymentRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode)
		{
			return await _unitOfWork.ClientPaymentRepository.Insert(paymentId, clientId, dateOfPayment, paymentAmount, paymentMethodCode);
		}
		public async Task<int> Update(ClientPayment usermodel)
		{
			return await _unitOfWork.ClientPaymentRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode)
		{
			return await _unitOfWork.ClientPaymentRepository.Update(paymentId, clientId, dateOfPayment, paymentAmount, paymentMethodCode);
		}
	}
}

