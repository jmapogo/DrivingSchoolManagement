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
	public partial class VehicleRepository : BaseRepository, IVehicleRepository
	{
		public VehicleRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		public async Task<Vehicle> Get(System.Guid? vehicleRegNumber)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_SELECT";
				var param = new DynamicParameters();
				param.Add(@"vehicleRegNumber", vehicleRegNumber, DbType.Guid);
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		public async Task<Vehicle> Get(System.Guid? vehicleRegNumber,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"vehicleRegNumber", vehicleRegNumber, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Vehicle>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Vehicle>> Search(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Vehicle_SEARCH";
					var param = new DynamicParameters();
					param.Add("vehicleRegNumber",vehicleRegNumber, DbType.Guid);
					param.Add("officeId",officeId, DbType.Guid);
					param.Add("make",make, DbType.String);
					param.Add("model",model, DbType.String);
					param.Add("year",year, DbType.Decimal);
					param.Add("color",color, DbType.String);
					
					var list = await SqlMapper.QueryAsync<Vehicle>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current Vehicle to database.
		/// </summary>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		/// <param name="officeId">System.Guid?</param>
		/// <param name="make">System.String</param>
		/// <param name="model">System.String</param>
		/// <param name="year">System.Decimal?</param>
		/// <param name="color">System.String</param>
		public async Task<int> Insert(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Vehicle_INSERT";
					var param = new DynamicParameters();
					param.Add("vehicleRegNumber", vehicleRegNumber, DbType.Guid);
					param.Add("officeId", officeId, DbType.Guid);
					param.Add("make", make, DbType.String);
					param.Add("model", model, DbType.String);
					param.Add("year", year, DbType.Decimal);
					param.Add("color", color, DbType.String);
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
		/// Insert current Vehicle to database.
		/// </summary>
		/// <param name=Vehicle Objects>Vehicle</param>
		public async Task<int> Insert(Vehicle model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Vehicle_INSERT";
					var param = new DynamicParameters();
					param.Add("vehicleRegNumber", model.VehicleRegNumber, DbType.Guid);
					param.Add("officeId", model.OfficeId, DbType.Guid);
					param.Add("make", model.Make, DbType.String);
					param.Add("model", model.Model, DbType.String);
					param.Add("year", model.Year, DbType.Decimal);
					param.Add("color", model.Color, DbType.String);
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
		/// Update current Vehicle to database.
		/// </summary>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		/// <param name="officeId">System.Guid?</param>
		/// <param name="make">System.String</param>
		/// <param name="model">System.String</param>
		/// <param name="year">System.Decimal?</param>
		/// <param name="color">System.String</param>
		public async Task<int> Update(System.Guid? vehicleRegNumber, System.Guid? officeId, System.String make, System.String model, System.Decimal? year, System.String color)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Vehicle_UPDATE";
					var param = new DynamicParameters();
					param.Add("vehicleRegNumber", vehicleRegNumber, DbType.Guid);
					param.Add("officeId", officeId, DbType.Guid);
					param.Add("make", make, DbType.String);
					param.Add("model", model, DbType.String);
					param.Add("year", year, DbType.Decimal);
					param.Add("color", color, DbType.String);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(Vehicle model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Vehicle_UPDATE";
					var param = new DynamicParameters();
					param.Add("vehicleRegNumber", model.VehicleRegNumber, DbType.Guid);
					param.Add("officeId", model.OfficeId, DbType.Guid);
					param.Add("make", model.Make, DbType.String);
					param.Add("model", model.Model, DbType.String);
					param.Add("year", model.Year, DbType.Decimal);
					param.Add("color", model.Color, DbType.String);
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
		/// Delete current Vehicle from database.
		/// </summary>
		/// <param name="vehicleRegNumber">System.Guid?</param>
		public async Task<int> Delete(System.Guid? vehicleRegNumber)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Vehicle_DELETE";
				var param = new DynamicParameters();
				param.Add("vehicleRegNumber", vehicleRegNumber, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

