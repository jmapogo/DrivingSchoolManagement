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
	public partial class AddressRepository : BaseRepository, IAddressRepository
	{
		public AddressRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="addressId">System.Guid?</param>
		public async Task<Address> Get(System.Guid? addressId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_SELECT";
				var param = new DynamicParameters();
				param.Add(@"addressId", addressId, DbType.Guid);
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="addressId">System.Guid?</param>
		public async Task<Address> Get(System.Guid? addressId,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"addressId", addressId, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Address>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Address>> Search(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Address_SEARCH";
					var param = new DynamicParameters();
					param.Add("addressId",addressId, DbType.Guid);
					param.Add("building",building, DbType.String);
					param.Add("street",street, DbType.String);
					param.Add("town",town, DbType.String);
					param.Add("city",city, DbType.String);
					param.Add("postalCode",postalCode, DbType.String);
					param.Add("province",province, DbType.String);
					param.Add("country",country, DbType.String);
					
					var list = await SqlMapper.QueryAsync<Address>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current Address to database.
		/// </summary>
		/// <param name="addressId">System.Guid?</param>
		/// <param name="building">System.String</param>
		/// <param name="street">System.String</param>
		/// <param name="town">System.String</param>
		/// <param name="city">System.String</param>
		/// <param name="postalCode">System.String</param>
		/// <param name="province">System.String</param>
		/// <param name="country">System.String</param>
		public async Task<int> Insert(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Address_INSERT";
					var param = new DynamicParameters();
					param.Add("addressId", addressId, DbType.Guid);
					param.Add("building", building, DbType.String);
					param.Add("street", street, DbType.String);
					param.Add("town", town, DbType.String);
					param.Add("city", city, DbType.String);
					param.Add("postalCode", postalCode, DbType.String);
					param.Add("province", province, DbType.String);
					param.Add("country", country, DbType.String);
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
		/// Insert current Address to database.
		/// </summary>
		/// <param name=Address Objects>Address</param>
		public async Task<int> Insert(Address model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Address_INSERT";
					var param = new DynamicParameters();
					param.Add("addressId", model.AddressId, DbType.Guid);
					param.Add("building", model.Building, DbType.String);
					param.Add("street", model.Street, DbType.String);
					param.Add("town", model.Town, DbType.String);
					param.Add("city", model.City, DbType.String);
					param.Add("postalCode", model.PostalCode, DbType.String);
					param.Add("province", model.Province, DbType.String);
					param.Add("country", model.Country, DbType.String);
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
		/// Update current Address to database.
		/// </summary>
		/// <param name="addressId">System.Guid?</param>
		/// <param name="building">System.String</param>
		/// <param name="street">System.String</param>
		/// <param name="town">System.String</param>
		/// <param name="city">System.String</param>
		/// <param name="postalCode">System.String</param>
		/// <param name="province">System.String</param>
		/// <param name="country">System.String</param>
		public async Task<int> Update(System.Guid? addressId, System.String building, System.String street, System.String town, System.String city, System.String postalCode, System.String province, System.String country)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Address_UPDATE";
					var param = new DynamicParameters();
					param.Add("addressId", addressId, DbType.Guid);
					param.Add("building", building, DbType.String);
					param.Add("street", street, DbType.String);
					param.Add("town", town, DbType.String);
					param.Add("city", city, DbType.String);
					param.Add("postalCode", postalCode, DbType.String);
					param.Add("province", province, DbType.String);
					param.Add("country", country, DbType.String);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(Address model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Address_UPDATE";
					var param = new DynamicParameters();
					param.Add("addressId", model.AddressId, DbType.Guid);
					param.Add("building", model.Building, DbType.String);
					param.Add("street", model.Street, DbType.String);
					param.Add("town", model.Town, DbType.String);
					param.Add("city", model.City, DbType.String);
					param.Add("postalCode", model.PostalCode, DbType.String);
					param.Add("province", model.Province, DbType.String);
					param.Add("country", model.Country, DbType.String);
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
		/// Delete current Address from database.
		/// </summary>
		/// <param name="addressId">System.Guid?</param>
		public async Task<int> Delete(System.Guid? addressId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Address_DELETE";
				var param = new DynamicParameters();
				param.Add("addressId", addressId, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

