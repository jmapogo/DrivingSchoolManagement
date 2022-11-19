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
	public partial class LessonService : ILessonService
	{
		IUnitOfWork _unitOfWork;
		public LessonService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<Lesson> Get(System.Guid? lessonId)
		{
			return await _unitOfWork.LessonRepository.Get(lessonId);
		}
		public async Task<Lesson> Get(System.Guid? lessonId,int DrivingSchoolAPI)
		{
			return await _unitOfWork.LessonRepository.Get(lessonId,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? lessonId)
		{
			return await _unitOfWork.LessonRepository.Delete(lessonId);
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.LessonRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.LessonRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.LessonRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.LessonRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<Lesson>> Search(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed)
		{
			return await _unitOfWork.LessonRepository.Search(lessonId, clientId, instructorStaffId, lessonStatusCode, vehicleRegNumber, lessonDate, lessonTime, fee, clientProgressMade, mileasgeUsed);
		}
		public async Task<int> Insert(Lesson usermodel)
		{
			return await _unitOfWork.LessonRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed)
		{
			return await _unitOfWork.LessonRepository.Insert(lessonId, clientId, instructorStaffId, lessonStatusCode, vehicleRegNumber, lessonDate, lessonTime, fee, clientProgressMade, mileasgeUsed);
		}
		public async Task<int> Update(Lesson usermodel)
		{
			return await _unitOfWork.LessonRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed)
		{
			return await _unitOfWork.LessonRepository.Update(lessonId, clientId, instructorStaffId, lessonStatusCode, vehicleRegNumber, lessonDate, lessonTime, fee, clientProgressMade, mileasgeUsed);
		}
	}
}

