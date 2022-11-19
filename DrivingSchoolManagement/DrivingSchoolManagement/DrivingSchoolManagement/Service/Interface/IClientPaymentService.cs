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
	public partial interface IClientPaymentService
	{
		Task<ClientPayment> Get(System.Guid? paymentId);
		Task<ClientPayment> Get(System.Guid? paymentId,int DrivingSchoolAPI);
		Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize, int DrivingSchoolAPI);
		Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, int DrivingSchoolAPI);
		Task<IEnumerable<ClientPayment>> Search(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode);
		Task<int> Delete(System.Guid? paymentId);
		Task<int> Insert(ClientPayment model);
		Task<int> Insert(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode);
		Task<int> Update(ClientPayment model);
		Task<int> Update(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode);
	}
}

