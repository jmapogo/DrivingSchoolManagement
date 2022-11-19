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
	public partial class Staff
	{
		#region Properties
		/// <summary>
		///  StaffId (System.Guid? )
		/// </summary>
		public System.Guid? StaffId { get; set; }
		/// <summary>
		///  HomeAddressId (System.Guid? )
		/// </summary>
		public System.Guid? HomeAddressId { get; set; }
		/// <summary>
		///  OfficeId (System.Guid? )
		/// </summary>
		public System.Guid? OfficeId { get; set; }
		/// <summary>
		///  FirstName (System.String )
		/// </summary>
		public System.String FirstName { get; set; }
		/// <summary>
		///  MiddleName (System.String )
		/// </summary>
		public System.String MiddleName { get; set; }
		/// <summary>
		///  LastName (System.String )
		/// </summary>
		public System.String LastName { get; set; }
		/// <summary>
		///  DateOfBirth (System.DateTime? )
		/// </summary>
		public System.DateTime? DateOfBirth { get; set; }
		/// <summary>
		///  DateJoinedStaff (System.DateTime? )
		/// </summary>
		public System.DateTime? DateJoinedStaff { get; set; }
		/// <summary>
		///  DateLeftStaff (System.DateTime? )
		/// </summary>
		public System.DateTime? DateLeftStaff { get; set; }
		/// <summary>
		///  Total Record (int)
		///  For serach result count
		/// </summary>
		public int TotalRecord { get; set; }
		#endregion
		
	}
}

