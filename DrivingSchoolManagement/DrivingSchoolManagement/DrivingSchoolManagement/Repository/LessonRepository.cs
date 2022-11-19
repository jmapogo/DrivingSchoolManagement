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
using System;
using System.Data;
using System.Linq;
using System.Text;
using System.Collections.Generic;
using Dapper;
using System.Threading.Tasks;
using MapogoSoft.DrivingSchoolAPI.Data.Infrastructure;
using MapogoSoft.DrivingSchoolAPI.Data.Entities;

namespace MapogoSoft.DrivingSchoolAPI.Data.Repository
{
	public partial class LessonRepository : BaseRepository, ILessonRepository
	{
		public LessonRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="lessonId">System.Guid?</param>
		public async Task<Lesson> Get(System.Guid? lessonId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_SELECT";
				var param = new DynamicParameters();
				param.Add(@"lessonId", lessonId, DbType.Guid);
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="lessonId">System.Guid?</param>
		public async Task<Lesson> Get(System.Guid? lessonId,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"lessonId", lessonId, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Lesson>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Lesson>> Search(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Lesson_SEARCH";
					var param = new DynamicParameters();
					param.Add("lessonId",lessonId, DbType.Guid);
					param.Add("clientId",clientId, DbType.Guid);
					param.Add("instructorStaffId",instructorStaffId, DbType.Guid);
					param.Add("lessonStatusCode",lessonStatusCode, DbType.Guid);
					param.Add("vehicleRegNumber",vehicleRegNumber, DbType.Guid);
					param.Add("lessonDate",lessonDate, DbType.Date);
					param.Add("lessonTime",lessonTime, DbType.Time);
					param.Add("fee",fee, DbType.Decimal);
					param.Add("clientProgressMade",clientProgressMade, DbType.String);
					param.Add("mileasgeUsed",mileasgeUsed, DbType.Decimal);
					
					var list = await SqlMapper.QueryAsync<Lesson>(connection, query, param, commandType: CommandType.StoredProcedure);
					
					if (list == null)
					return null;
					else
					return list;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		#endregion
		
		#region INSERT
		/// <summary>
		/// Insert current Lesson to database.
		/// </summary>
		/// <param name="lessonId">System.Guid?</param>
		/// <param name="clientId">System.Guid?</param>
		/// <param name="instructorStaffId">System.Guid?</param>
		/// <param name="lessonStatusCode">System.Guid?</param>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		/// <param name="lessonDate">System.DateTime?</param>
		/// <param name="lessonTime">System.TimeSpan</param>
		/// <param name="fee">System.Decimal?</param>
		/// <param name="clientProgressMade">System.String</param>
		/// <param name="mileasgeUsed">System.Decimal?</param>
		public async Task<int> Insert(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Lesson_INSERT";
					var param = new DynamicParameters();
					param.Add("lessonId", lessonId, DbType.Guid);
					param.Add("clientId", clientId, DbType.Guid);
					param.Add("instructorStaffId", instructorStaffId, DbType.Guid);
					param.Add("lessonStatusCode", lessonStatusCode, DbType.Guid);
					param.Add("vehicleRegNumber", vehicleRegNumber, DbType.Guid);
					param.Add("lessonDate", lessonDate, DbType.Date);
					param.Add("lessonTime", lessonTime, DbType.Time);
					param.Add("fee", fee, DbType.Decimal);
					param.Add("clientProgressMade", clientProgressMade, DbType.String);
					param.Add("mileasgeUsed", mileasgeUsed, DbType.Decimal);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		/// <summary>
		/// Insert current Lesson to database.
		/// </summary>
		/// <param name=Lesson Objects>Lesson</param>
		public async Task<int> Insert(Lesson model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Lesson_INSERT";
					var param = new DynamicParameters();
					param.Add("lessonId", model.LessonId, DbType.Guid);
					param.Add("clientId", model.ClientId, DbType.Guid);
					param.Add("instructorStaffId", model.InstructorStaffId, DbType.Guid);
					param.Add("lessonStatusCode", model.LessonStatusCode, DbType.Guid);
					param.Add("vehicleRegNumber", model.VehicleRegNumber, DbType.Guid);
					param.Add("lessonDate", model.LessonDate, DbType.Date);
					param.Add("lessonTime", model.LessonTime, DbType.Time);
					param.Add("fee", model.Fee, DbType.Decimal);
					param.Add("clientProgressMade", model.ClientProgressMade, DbType.String);
					param.Add("mileasgeUsed", model.MileasgeUsed, DbType.Decimal);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		#endregion
		
		#region UPDATE
		/// <summary>
		/// Update current Lesson to database.
		/// </summary>
		/// <param name="lessonId">System.Guid?</param>
		/// <param name="clientId">System.Guid?</param>
		/// <param name="instructorStaffId">System.Guid?</param>
		/// <param name="lessonStatusCode">System.Guid?</param>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		/// <param name="lessonDate">System.DateTime?</param>
		/// <param name="lessonTime">System.TimeSpan</param>
		/// <param name="fee">System.Decimal?</param>
		/// <param name="clientProgressMade">System.String</param>
		/// <param name="mileasgeUsed">System.Decimal?</param>
		public async Task<int> Update(System.Guid? lessonId, System.Guid? clientId, System.Guid? instructorStaffId, System.Guid? lessonStatusCode, System.Guid? vehicleRegNumber, System.DateTime? lessonDate, System.TimeSpan lessonTime, System.Decimal? fee, System.String clientProgressMade, System.Decimal? mileasgeUsed)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Lesson_UPDATE";
					var param = new DynamicParameters();
					param.Add("lessonId", lessonId, DbType.Guid);
					param.Add("clientId", clientId, DbType.Guid);
					param.Add("instructorStaffId", instructorStaffId, DbType.Guid);
					param.Add("lessonStatusCode", lessonStatusCode, DbType.Guid);
					param.Add("vehicleRegNumber", vehicleRegNumber, DbType.Guid);
					param.Add("lessonDate", lessonDate, DbType.Date);
					param.Add("lessonTime", lessonTime, DbType.Time);
					param.Add("fee", fee, DbType.Decimal);
					param.Add("clientProgressMade", clientProgressMade, DbType.String);
					param.Add("mileasgeUsed", mileasgeUsed, DbType.Decimal);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(Lesson model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Lesson_UPDATE";
					var param = new DynamicParameters();
					param.Add("lessonId", model.LessonId, DbType.Guid);
					param.Add("clientId", model.ClientId, DbType.Guid);
					param.Add("instructorStaffId", model.InstructorStaffId, DbType.Guid);
					param.Add("lessonStatusCode", model.LessonStatusCode, DbType.Guid);
					param.Add("vehicleRegNumber", model.VehicleRegNumber, DbType.Guid);
					param.Add("lessonDate", model.LessonDate, DbType.Date);
					param.Add("lessonTime", model.LessonTime, DbType.Time);
					param.Add("fee", model.Fee, DbType.Decimal);
					param.Add("clientProgressMade", model.ClientProgressMade, DbType.String);
					param.Add("mileasgeUsed", model.MileasgeUsed, DbType.Decimal);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		#endregion
		
		#region DELETE
		/// <summary>
		/// Delete current Lesson from database.
		/// </summary>
		/// <param name="lessonId">System.Guid?</param>
		public async Task<int> Delete(System.Guid? lessonId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Lesson_DELETE";
				var param = new DynamicParameters();
				param.Add("lessonId", lessonId, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

