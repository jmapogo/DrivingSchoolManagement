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
	public partial class RefPaymentMethodService : IRefPaymentMethodService
	{
		IUnitOfWork _unitOfWork;
		public RefPaymentMethodService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<RefPaymentMethod> Get(System.Int32? paymentMethodCode)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Get(paymentMethodCode);
		}
		public async Task<RefPaymentMethod> Get(System.Int32? paymentMethodCode,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Get(paymentMethodCode,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Int32? paymentMethodCode)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Delete(paymentMethodCode);
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(System.Int32? paymentMethodCode, System.String description)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Search(paymentMethodCode, description);
		}
		public async Task<System.Int32> Insert(RefPaymentMethod usermodel)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Insert(usermodel);
		}
		public async Task<System.Int32> Insert(System.String description)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Insert(description);
		}
		public async Task<int> Update(RefPaymentMethod usermodel)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Int32? paymentMethodCode, System.String description)
		{
			return await _unitOfWork.RefPaymentMethodRepository.Update(paymentMethodCode, description);
		}
	}
}

