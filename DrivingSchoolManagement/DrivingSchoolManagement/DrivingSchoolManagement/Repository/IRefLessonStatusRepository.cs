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
	public partial interface IRefLessonStatusRepository
	{
		Task<RefLessonStatus> Get(System.Guid? lessonStatusCode);
		Task<RefLessonStatus> Get(System.Guid? lessonStatusCode,int DrivingSchoolAPI);
		Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize);
		Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,string sortBy, string orderBy);
		Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring);
		
		Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI);
		Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI);
		Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,string searchstring,int DrivingSchoolAPI);
		Task<IEnumerable<RefLessonStatus>> Search(System.Guid? lessonStatusCode, System.String description);
		Task<int> Delete(System.Guid? lessonStatusCode);
		Task<int> Insert(RefLessonStatus model);
		Task<int> Insert(System.Guid? lessonStatusCode, System.String description);
		Task<int> Update(RefLessonStatus model);
		Task<int> Update(System.Guid? lessonStatusCode, System.String description);
		
	}
}

