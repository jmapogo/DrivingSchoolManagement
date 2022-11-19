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
namespace MapogoSoft.DrivingSchoolAPI.Data.Entities
{
	public partial class ClientPayment
	{
		#region Properties
		/// <summary>
		///  PaymentId (System.Guid? )
		/// </summary>
		public System.Guid? PaymentId { get; set; }
		/// <summary>
		///  ClientId (System.Guid? )
		/// </summary>
		public System.Guid? ClientId { get; set; }
		/// <summary>
		///  DateOfPayment (System.DateTime? )
		/// </summary>
		public System.DateTime? DateOfPayment { get; set; }
		/// <summary>
		///  PaymentAmount (System.Decimal? )
		/// </summary>
		public System.Decimal? PaymentAmount { get; set; }
		/// <summary>
		///  PaymentMethodCode (System.Int32? )
		/// </summary>
		public System.Int32? PaymentMethodCode { get; set; }
		/// <summary>
		///  Total Record (int)
		///  For serach result count
		/// </summary>
		public int TotalRecord { get; set; }
		#endregion
		
	}
}

