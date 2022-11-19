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
	public partial class ClientRepository : BaseRepository, IClientRepository
	{
		public ClientRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="clientId">System.Guid?</param>
		public async Task<Client> Get(System.Guid? clientId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_SELECT";
				var param = new DynamicParameters();
				param.Add(@"clientId", clientId, DbType.Guid);
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="clientId">System.Guid?</param>
		public async Task<Client> Get(System.Guid? clientId,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"clientId", clientId, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Client>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<Client>> Search(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Client_SEARCH";
					var param = new DynamicParameters();
					param.Add("clientId",clientId, DbType.Guid);
					param.Add("addressId",addressId, DbType.Guid);
					param.Add("officeId",officeId, DbType.Guid);
					param.Add("dateBecameCustomer",dateBecameCustomer, DbType.DateTime);
					param.Add("dateLastContact",dateLastContact, DbType.DateTime);
					param.Add("dateOfBirth",dateOfBirth, DbType.DateTime);
					param.Add("firstName",firstName, DbType.String);
					param.Add("middleName",middleName, DbType.String);
					param.Add("lastName",lastName, DbType.String);
					param.Add("emailAddress",emailAddress, DbType.String);
					param.Add("homePhoneNumber",homePhoneNumber, DbType.String);
					param.Add("cellMobilePhoneNumber",cellMobilePhoneNumber, DbType.String);
					
					var list = await SqlMapper.QueryAsync<Client>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current Client to database.
		/// </summary>
		/// <param name="clientId">System.Guid?</param>
		/// <param name="addressId">System.Guid?</param>
		/// <param name="officeId">System.Guid?</param>
		/// <param name="dateBecameCustomer">System.DateTime?</param>
		/// <param name="dateLastContact">System.DateTime?</param>
		/// <param name="dateOfBirth">System.DateTime?</param>
		/// <param name="firstName">System.String</param>
		/// <param name="middleName">System.String</param>
		/// <param name="lastName">System.String</param>
		/// <param name="emailAddress">System.String</param>
		/// <param name="homePhoneNumber">System.String</param>
		/// <param name="cellMobilePhoneNumber">System.String</param>
		public async Task<int> Insert(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Client_INSERT";
					var param = new DynamicParameters();
					param.Add("clientId", clientId, DbType.Guid);
					param.Add("addressId", addressId, DbType.Guid);
					param.Add("officeId", officeId, DbType.Guid);
					param.Add("dateBecameCustomer", dateBecameCustomer, DbType.DateTime);
					param.Add("dateLastContact", dateLastContact, DbType.DateTime);
					param.Add("dateOfBirth", dateOfBirth, DbType.DateTime);
					param.Add("firstName", firstName, DbType.String);
					param.Add("middleName", middleName, DbType.String);
					param.Add("lastName", lastName, DbType.String);
					param.Add("emailAddress", emailAddress, DbType.String);
					param.Add("homePhoneNumber", homePhoneNumber, DbType.String);
					param.Add("cellMobilePhoneNumber", cellMobilePhoneNumber, DbType.String);
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
		/// Insert current Client to database.
		/// </summary>
		/// <param name=Client Objects>Client</param>
		public async Task<int> Insert(Client model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Client_INSERT";
					var param = new DynamicParameters();
					param.Add("clientId", model.ClientId, DbType.Guid);
					param.Add("addressId", model.AddressId, DbType.Guid);
					param.Add("officeId", model.OfficeId, DbType.Guid);
					param.Add("dateBecameCustomer", model.DateBecameCustomer, DbType.DateTime);
					param.Add("dateLastContact", model.DateLastContact, DbType.DateTime);
					param.Add("dateOfBirth", model.DateOfBirth, DbType.DateTime);
					param.Add("firstName", model.FirstName, DbType.String);
					param.Add("middleName", model.MiddleName, DbType.String);
					param.Add("lastName", model.LastName, DbType.String);
					param.Add("emailAddress", model.EmailAddress, DbType.String);
					param.Add("homePhoneNumber", model.HomePhoneNumber, DbType.String);
					param.Add("cellMobilePhoneNumber", model.CellMobilePhoneNumber, DbType.String);
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
		/// Update current Client to database.
		/// </summary>
		/// <param name="clientId">System.Guid?</param>
		/// <param name="addressId">System.Guid?</param>
		/// <param name="officeId">System.Guid?</param>
		/// <param name="dateBecameCustomer">System.DateTime?</param>
		/// <param name="dateLastContact">System.DateTime?</param>
		/// <param name="dateOfBirth">System.DateTime?</param>
		/// <param name="firstName">System.String</param>
		/// <param name="middleName">System.String</param>
		/// <param name="lastName">System.String</param>
		/// <param name="emailAddress">System.String</param>
		/// <param name="homePhoneNumber">System.String</param>
		/// <param name="cellMobilePhoneNumber">System.String</param>
		public async Task<int> Update(System.Guid? clientId, System.Guid? addressId, System.Guid? officeId, System.DateTime? dateBecameCustomer, System.DateTime? dateLastContact, System.DateTime? dateOfBirth, System.String firstName, System.String middleName, System.String lastName, System.String emailAddress, System.String homePhoneNumber, System.String cellMobilePhoneNumber)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Client_UPDATE";
					var param = new DynamicParameters();
					param.Add("clientId", clientId, DbType.Guid);
					param.Add("addressId", addressId, DbType.Guid);
					param.Add("officeId", officeId, DbType.Guid);
					param.Add("dateBecameCustomer", dateBecameCustomer, DbType.DateTime);
					param.Add("dateLastContact", dateLastContact, DbType.DateTime);
					param.Add("dateOfBirth", dateOfBirth, DbType.DateTime);
					param.Add("firstName", firstName, DbType.String);
					param.Add("middleName", middleName, DbType.String);
					param.Add("lastName", lastName, DbType.String);
					param.Add("emailAddress", emailAddress, DbType.String);
					param.Add("homePhoneNumber", homePhoneNumber, DbType.String);
					param.Add("cellMobilePhoneNumber", cellMobilePhoneNumber, DbType.String);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(Client model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].Client_UPDATE";
					var param = new DynamicParameters();
					param.Add("clientId", model.ClientId, DbType.Guid);
					param.Add("addressId", model.AddressId, DbType.Guid);
					param.Add("officeId", model.OfficeId, DbType.Guid);
					param.Add("dateBecameCustomer", model.DateBecameCustomer, DbType.DateTime);
					param.Add("dateLastContact", model.DateLastContact, DbType.DateTime);
					param.Add("dateOfBirth", model.DateOfBirth, DbType.DateTime);
					param.Add("firstName", model.FirstName, DbType.String);
					param.Add("middleName", model.MiddleName, DbType.String);
					param.Add("lastName", model.LastName, DbType.String);
					param.Add("emailAddress", model.EmailAddress, DbType.String);
					param.Add("homePhoneNumber", model.HomePhoneNumber, DbType.String);
					param.Add("cellMobilePhoneNumber", model.CellMobilePhoneNumber, DbType.String);
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
		/// Delete current Client from database.
		/// </summary>
		/// <param name="clientId">System.Guid?</param>
		public async Task<int> Delete(System.Guid? clientId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].Client_DELETE";
				var param = new DynamicParameters();
				param.Add("clientId", clientId, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

