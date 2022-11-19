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
	public partial interface IRefPaymentMethodRepository
	{
		Task<RefPaymentMethod> Get(System.Int32? paymentMethodCode);
		Task<RefPaymentMethod> Get(System.Int32? paymentMethodCode,int DrivingSchoolAPI);
		Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring);
		
		Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI);
		Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI);
		Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring,int DrivingSchoolAPI);
		Task<IEnumerable<RefPaymentMethod>> Search(System.Int32? paymentMethodCode, System.String description);
		Task<int> Delete(System.Int32? paymentMethodCode);
		Task<System.Int32> Insert(RefPaymentMethod model);
		Task<System.Int32> Insert(System.String description);
		Task<int> Update(RefPaymentMethod model);
		Task<int> Update(System.Int32? paymentMethodCode, System.String description);
		
	}
}

