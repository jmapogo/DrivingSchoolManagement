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
	public partial class RefLessonStatusService : IRefLessonStatusService
	{
		IUnitOfWork _unitOfWork;
		public RefLessonStatusService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<RefLessonStatus> Get(System.Guid? lessonStatusCode)
		{
			return await _unitOfWork.RefLessonStatusRepository.Get(lessonStatusCode);
		}
		public async Task<RefLessonStatus> Get(System.Guid? lessonStatusCode,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RefLessonStatusRepository.Get(lessonStatusCode,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? lessonStatusCode)
		{
			return await _unitOfWork.RefLessonStatusRepository.Delete(lessonStatusCode);
		}
		public async Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.RefLessonStatusRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.RefLessonStatusRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RefLessonStatusRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<RefLessonStatus>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RefLessonStatusRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<RefLessonStatus>> Search(System.Guid? lessonStatusCode, System.String description)
		{
			return await _unitOfWork.RefLessonStatusRepository.Search(lessonStatusCode, description);
		}
		public async Task<int> Insert(RefLessonStatus usermodel)
		{
			return await _unitOfWork.RefLessonStatusRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? lessonStatusCode, System.String description)
		{
			return await _unitOfWork.RefLessonStatusRepository.Insert(lessonStatusCode, description);
		}
		public async Task<int> Update(RefLessonStatus usermodel)
		{
			return await _unitOfWork.RefLessonStatusRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? lessonStatusCode, System.String description)
		{
			return await _unitOfWork.RefLessonStatusRepository.Update(lessonStatusCode, description);
		}
	}
}

