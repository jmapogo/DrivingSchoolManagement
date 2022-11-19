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
	public partial class StaffRepository : BaseRepository, IStaffRepository
	{
		public StaffRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="staffId">System.Guid?</param>
		public async Task<Staff> Get(System.Guid? staffId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_SELECT";
				var param = new DynamicParameters();
				param.Add(@"staffId", staffId, DbType.Guid);
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="staffId">System.Guid?</param>
		public async Task<Staff> Get(System.Guid? staffId,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"staffId", staffId, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Staff>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Staff>> Search(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Staff_SEARCH";
					var param = new DynamicParameters();
					param.Add("staffId",staffId, DbType.Guid);
					param.Add("homeAddressId",homeAddressId, DbType.Guid);
					param.Add("officeId",officeId, DbType.Guid);
					param.Add("firstName",firstName, DbType.String);
					param.Add("middleName",middleName, DbType.String);
					param.Add("lastName",lastName, DbType.String);
					param.Add("dateOfBirth",dateOfBirth, DbType.DateTime);
					param.Add("dateJoinedStaff",dateJoinedStaff, DbType.DateTime);
					param.Add("dateLeftStaff",dateLeftStaff, DbType.DateTime);
					
					var list = await SqlMapper.QueryAsync<Staff>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current Staff to database.
		/// </summary>
		/// <param name="staffId">System.Guid?</param>
		/// <param name="homeAddressId">System.Guid?</param>
		/// <param name="officeId">System.Guid?</param>
		/// <param name="firstName">System.String</param>
		/// <param name="middleName">System.String</param>
		/// <param name="lastName">System.String</param>
		/// <param name="dateOfBirth">System.DateTime?</param>
		/// <param name="dateJoinedStaff">System.DateTime?</param>
		/// <param name="dateLeftStaff">System.DateTime?</param>
		public async Task<int> Insert(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Staff_INSERT";
					var param = new DynamicParameters();
					param.Add("staffId", staffId, DbType.Guid);
					param.Add("homeAddressId", homeAddressId, DbType.Guid);
					param.Add("officeId", officeId, DbType.Guid);
					param.Add("firstName", firstName, DbType.String);
					param.Add("middleName", middleName, DbType.String);
					param.Add("lastName", lastName, DbType.String);
					param.Add("dateOfBirth", dateOfBirth, DbType.DateTime);
					param.Add("dateJoinedStaff", dateJoinedStaff, DbType.DateTime);
					param.Add("dateLeftStaff", dateLeftStaff, DbType.DateTime);
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
		/// Insert current Staff to database.
		/// </summary>
		/// <param name=Staff Objects>Staff</param>
		public async Task<int> Insert(Staff model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Staff_INSERT";
					var param = new DynamicParameters();
					param.Add("staffId", model.StaffId, DbType.Guid);
					param.Add("homeAddressId", model.HomeAddressId, DbType.Guid);
					param.Add("officeId", model.OfficeId, DbType.Guid);
					param.Add("firstName", model.FirstName, DbType.String);
					param.Add("middleName", model.MiddleName, DbType.String);
					param.Add("lastName", model.LastName, DbType.String);
					param.Add("dateOfBirth", model.DateOfBirth, DbType.DateTime);
					param.Add("dateJoinedStaff", model.DateJoinedStaff, DbType.DateTime);
					param.Add("dateLeftStaff", model.DateLeftStaff, DbType.DateTime);
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
		/// Update current Staff to database.
		/// </summary>
		/// <param name="staffId">System.Guid?</param>
		/// <param name="homeAddressId">System.Guid?</param>
		/// <param name="officeId">System.Guid?</param>
		/// <param name="firstName">System.String</param>
		/// <param name="middleName">System.String</param>
		/// <param name="lastName">System.String</param>
		/// <param name="dateOfBirth">System.DateTime?</param>
		/// <param name="dateJoinedStaff">System.DateTime?</param>
		/// <param name="dateLeftStaff">System.DateTime?</param>
		public async Task<int> Update(System.Guid? staffId, System.Guid? homeAddressId, System.Guid? officeId, System.String firstName, System.String middleName, System.String lastName, System.DateTime? dateOfBirth, System.DateTime? dateJoinedStaff, System.DateTime? dateLeftStaff)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Staff_UPDATE";
					var param = new DynamicParameters();
					param.Add("staffId", staffId, DbType.Guid);
					param.Add("homeAddressId", homeAddressId, DbType.Guid);
					param.Add("officeId", officeId, DbType.Guid);
					param.Add("firstName", firstName, DbType.String);
					param.Add("middleName", middleName, DbType.String);
					param.Add("lastName", lastName, DbType.String);
					param.Add("dateOfBirth", dateOfBirth, DbType.DateTime);
					param.Add("dateJoinedStaff", dateJoinedStaff, DbType.DateTime);
					param.Add("dateLeftStaff", dateLeftStaff, DbType.DateTime);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(Staff model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Staff_UPDATE";
					var param = new DynamicParameters();
					param.Add("staffId", model.StaffId, DbType.Guid);
					param.Add("homeAddressId", model.HomeAddressId, DbType.Guid);
					param.Add("officeId", model.OfficeId, DbType.Guid);
					param.Add("firstName", model.FirstName, DbType.String);
					param.Add("middleName", model.MiddleName, DbType.String);
					param.Add("lastName", model.LastName, DbType.String);
					param.Add("dateOfBirth", model.DateOfBirth, DbType.DateTime);
					param.Add("dateJoinedStaff", model.DateJoinedStaff, DbType.DateTime);
					param.Add("dateLeftStaff", model.DateLeftStaff, DbType.DateTime);
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
		/// Delete current Staff from database.
		/// </summary>
		/// <param name="staffId">System.Guid?</param>
		public async Task<int> Delete(System.Guid? staffId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Staff_DELETE";
				var param = new DynamicParameters();
				param.Add("staffId", staffId, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

