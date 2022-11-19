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
	public partial class RegJobTitleService : IRegJobTitleService
	{
		IUnitOfWork _unitOfWork;
		public RegJobTitleService(IUnitOfWork unitOfWork)
		{
			_unitOfWork = unitOfWork;
		}
		public async Task<RegJobTitle> Get(System.Guid? jobTitleCode)
		{
			return await _unitOfWork.RegJobTitleRepository.Get(jobTitleCode);
		}
		public async Task<RegJobTitle> Get(System.Guid? jobTitleCode,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RegJobTitleRepository.Get(jobTitleCode,DrivingSchoolAPI);
		}
		public async Task<int> Delete(System.Guid? jobTitleCode)
		{
			return await _unitOfWork.RegJobTitleRepository.Delete(jobTitleCode);
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize)
		{
			return await _unitOfWork.RegJobTitleRepository.Search(pageIndex, pageSize);
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			return await _unitOfWork.RegJobTitleRepository.Search(pageIndex, pageSize,sortBy,orderBy);
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RegJobTitleRepository.Search(pageIndex, pageSize, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			return await _unitOfWork.RegJobTitleRepository.Search(pageIndex, pageSize,sortBy,orderBy, DrivingSchoolAPI);
		}
		public async Task<IEnumerable<RegJobTitle>> Search(System.Guid? jobTitleCode, System.String jobTitleDescription)
		{
			return await _unitOfWork.RegJobTitleRepository.Search(jobTitleCode, jobTitleDescription);
		}
		public async Task<int> Insert(RegJobTitle usermodel)
		{
			return await _unitOfWork.RegJobTitleRepository.Insert(usermodel);
		}
		public async Task<int> Insert(System.Guid? jobTitleCode, System.String jobTitleDescription)
		{
			return await _unitOfWork.RegJobTitleRepository.Insert(jobTitleCode, jobTitleDescription);
		}
		public async Task<int> Update(RegJobTitle usermodel)
		{
			return await _unitOfWork.RegJobTitleRepository.Update(usermodel);
		}
		public async Task<int> Update(System.Guid? jobTitleCode, System.String jobTitleDescription)
		{
			return await _unitOfWork.RegJobTitleRepository.Update(jobTitleCode, jobTitleDescription);
		}
	}
}

