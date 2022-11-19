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
	public partial class Lesson
	{
		#region Properties
		/// <summary>
		///  LessonId (System.Guid? )
		/// </summary>
		public System.Guid? LessonId { get; set; }
		/// <summary>
		///  ClientId (System.Guid? )
		/// </summary>
		public System.Guid? ClientId { get; set; }
		/// <summary>
		///  InstructorStaffId (System.Guid? )
		/// </summary>
		public System.Guid? InstructorStaffId { get; set; }
		/// <summary>
		///  LessonStatusCode (System.Guid? )
		/// </summary>
		public System.Guid? LessonStatusCode { get; set; }
		/// <summary>
		///  VehicleRegNumber (System.Guid? )
		/// </summary>
		public System.Guid? VehicleRegNumber { get; set; }
		/// <summary>
		///  LessonDate (System.DateTime? )
		/// </summary>
		public System.DateTime? LessonDate { get; set; }
		/// <summary>
		///  LessonTime (System.TimeSpan )
		/// </summary>
		public System.TimeSpan LessonTime { get; set; }
		/// <summary>
		///  Fee (System.Decimal? )
		/// </summary>
		public System.Decimal? Fee { get; set; }
		/// <summary>
		///  ClientProgressMade (System.String )
		/// </summary>
		public System.String ClientProgressMade { get; set; }
		/// <summary>
		///  MileasgeUsed (System.Decimal? )
		/// </summary>
		public System.Decimal? MileasgeUsed { get; set; }
		/// <summary>
		///  Total Record (int)
		///  For serach result count
		/// </summary>
		public int TotalRecord { get; set; }
		#endregion
		
	}
}

