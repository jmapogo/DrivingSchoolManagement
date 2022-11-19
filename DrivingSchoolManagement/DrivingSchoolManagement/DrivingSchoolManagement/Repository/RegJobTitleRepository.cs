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
	public partial class RegJobTitleRepository : BaseRepository, IRegJobTitleRepository
	{
		public RegJobTitleRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="jobTitleCode">System.Guid?</param>
		public async Task<RegJobTitle> Get(System.Guid? jobTitleCode)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_SELECT";
				var param = new DynamicParameters();
				param.Add(@"jobTitleCode", jobTitleCode, DbType.Guid);
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="jobTitleCode">System.Guid?</param>
		public async Task<RegJobTitle> Get(System.Guid? jobTitleCode,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"jobTitleCode", jobTitleCode, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RegJobTitle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RegJobTitle>> Search(System.Guid? jobTitleCode, System.String jobTitleDescription)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RegJobTitle_SEARCH";
					var param = new DynamicParameters();
					param.Add("jobTitleCode",jobTitleCode, DbType.Guid);
					param.Add("jobTitleDescription",jobTitleDescription, DbType.String);
					
					var list = await SqlMapper.QueryAsync<RegJobTitle>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current RegJobTitle to database.
		/// </summary>
		/// <param name="jobTitleCode">System.Guid?</param>
		/// <param name="jobTitleDescription">System.String</param>
		public async Task<int> Insert(System.Guid? jobTitleCode, System.String jobTitleDescription)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RegJobTitle_INSERT";
					var param = new DynamicParameters();
					param.Add("jobTitleCode", jobTitleCode, DbType.Guid);
					param.Add("jobTitleDescription", jobTitleDescription, DbType.String);
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
		/// Insert current RegJobTitle to database.
		/// </summary>
		/// <param name=RegJobTitle Objects>RegJobTitle</param>
		public async Task<int> Insert(RegJobTitle model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RegJobTitle_INSERT";
					var param = new DynamicParameters();
					param.Add("jobTitleCode", model.JobTitleCode, DbType.Guid);
					param.Add("jobTitleDescription", model.JobTitleDescription, DbType.String);
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
		/// Update current RegJobTitle to database.
		/// </summary>
		/// <param name="jobTitleCode">System.Guid?</param>
		/// <param name="jobTitleDescription">System.String</param>
		public async Task<int> Update(System.Guid? jobTitleCode, System.String jobTitleDescription)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RegJobTitle_UPDATE";
					var param = new DynamicParameters();
					param.Add("jobTitleCode", jobTitleCode, DbType.Guid);
					param.Add("jobTitleDescription", jobTitleDescription, DbType.String);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(RegJobTitle model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RegJobTitle_UPDATE";
					var param = new DynamicParameters();
					param.Add("jobTitleCode", model.JobTitleCode, DbType.Guid);
					param.Add("jobTitleDescription", model.JobTitleDescription, DbType.String);
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
		/// Delete current RegJobTitle from database.
		/// </summary>
		/// <param name="jobTitleCode">System.Guid?</param>
		public async Task<int> Delete(System.Guid? jobTitleCode)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RegJobTitle_DELETE";
				var param = new DynamicParameters();
				param.Add("jobTitleCode", jobTitleCode, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

