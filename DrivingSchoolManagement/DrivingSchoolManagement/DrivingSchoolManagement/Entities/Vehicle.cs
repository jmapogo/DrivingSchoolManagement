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
	public partial class Vehicle
	{
		#region Properties
		/// <summary>
		///  VehicleRegNumber (System.Guid? )
		/// </summary>
		public System.Guid? VehicleRegNumber { get; set; }
		/// <summary>
		///  OfficeId (System.Guid? )
		/// </summary>
		public System.Guid? OfficeId { get; set; }
		/// <summary>
		///  Make (System.String )
		/// </summary>
		public System.String Make { get; set; }
		/// <summary>
		///  Model (System.String )
		/// </summary>
		public System.String Model { get; set; }
		/// <summary>
		///  Year (System.Decimal? )
		/// </summary>
		public System.Decimal? Year { get; set; }
		/// <summary>
		///  Color (System.String )
		/// </summary>
		public System.String Color { get; set; }
		/// <summary>
		///  Total Record (int)
		///  For serach result count
		/// </summary>
		public int TotalRecord { get; set; }
		#endregion
		
	}
}

