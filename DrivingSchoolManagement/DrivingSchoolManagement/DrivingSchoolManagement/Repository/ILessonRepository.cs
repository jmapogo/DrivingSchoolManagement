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
	public partial interface ILessonRepository
	{
		Task<Lesson> Get(System.Guid? lessonId);
		Task<Lesson> Get(System.Guid? lessonId,int DrivingSchoolAPI);
		Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring);
		
		Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI);
		Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI);
		Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring,int DrivingSchoolAPI);
		Task<IEnumerable<Lesson>> Search(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed);
		Task<int> Delete(System.Guid? lessonId);
		Task<int> Insert(Lesson model);
		Task<int> Insert(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed);
		Task<int> Update(Lesson model);
		Task<int> Update(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed);
		
	}
}

