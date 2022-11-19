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
	public partial class ClientPaymentRepository : BaseRepository, IClientPaymentRepository
	{
		public ClientPaymentRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="paymentId">System.Guid?</param>
		public async Task<ClientPayment> Get(System.Guid? paymentId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_SELECT";
				var param = new DynamicParameters();
				param.Add(@"paymentId", paymentId, DbType.Guid);
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="paymentId">System.Guid?</param>
		public async Task<ClientPayment> Get(System.Guid? paymentId,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"paymentId", paymentId, DbType.Guid);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<ClientPayment>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<ClientPayment>> Search(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].ClientPayment_SEARCH";
					var param = new DynamicParameters();
					param.Add("paymentId",paymentId, DbType.Guid);
					param.Add("clientId",clientId, DbType.Guid);
					param.Add("dateOfPayment",dateOfPayment, DbType.DateTime);
					param.Add("paymentAmount",paymentAmount, DbType.Decimal);
					param.Add("paymentMethodCode",paymentMethodCode, DbType.Int32);
					
					var list = await SqlMapper.QueryAsync<ClientPayment>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current ClientPayment to database.
		/// </summary>
		/// <param name="paymentId">System.Guid?</param>
		/// <param name="clientId">System.Guid?</param>
		/// <param name="dateOfPayment">System.DateTime?</param>
		/// <param name="paymentAmount">System.Decimal?</param>
		/// <param name="paymentMethodCode">System.Int32?</param>
		public async Task<int> Insert(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].ClientPayment_INSERT";
					var param = new DynamicParameters();
					param.Add("paymentId", paymentId, DbType.Guid);
					param.Add("clientId", clientId, DbType.Guid);
					param.Add("dateOfPayment", dateOfPayment, DbType.DateTime);
					param.Add("paymentAmount", paymentAmount, DbType.Decimal);
					param.Add("paymentMethodCode", paymentMethodCode, DbType.Int32);
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
		/// Insert current ClientPayment to database.
		/// </summary>
		/// <param name=ClientPayment Objects>ClientPayment</param>
		public async Task<int> Insert(ClientPayment model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].ClientPayment_INSERT";
					var param = new DynamicParameters();
					param.Add("paymentId", model.PaymentId, DbType.Guid);
					param.Add("clientId", model.ClientId, DbType.Guid);
					param.Add("dateOfPayment", model.DateOfPayment, DbType.DateTime);
					param.Add("paymentAmount", model.PaymentAmount, DbType.Decimal);
					param.Add("paymentMethodCode", model.PaymentMethodCode, DbType.Int32);
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
		/// Update current ClientPayment to database.
		/// </summary>
		/// <param name="paymentId">System.Guid?</param>
		/// <param name="clientId">System.Guid?</param>
		/// <param name="dateOfPayment">System.DateTime?</param>
		/// <param name="paymentAmount">System.Decimal?</param>
		/// <param name="paymentMethodCode">System.Int32?</param>
		public async Task<int> Update(System.Guid? paymentId, System.Guid? clientId, System.DateTime? dateOfPayment, System.Decimal? paymentAmount, System.Int32? paymentMethodCode)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].ClientPayment_UPDATE";
					var param = new DynamicParameters();
					param.Add("paymentId", paymentId, DbType.Guid);
					param.Add("clientId", clientId, DbType.Guid);
					param.Add("dateOfPayment", dateOfPayment, DbType.DateTime);
					param.Add("paymentAmount", paymentAmount, DbType.Decimal);
					param.Add("paymentMethodCode", paymentMethodCode, DbType.Int32);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(ClientPayment model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].ClientPayment_UPDATE";
					var param = new DynamicParameters();
					param.Add("paymentId", model.PaymentId, DbType.Guid);
					param.Add("clientId", model.ClientId, DbType.Guid);
					param.Add("dateOfPayment", model.DateOfPayment, DbType.DateTime);
					param.Add("paymentAmount", model.PaymentAmount, DbType.Decimal);
					param.Add("paymentMethodCode", model.PaymentMethodCode, DbType.Int32);
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
		/// Delete current ClientPayment from database.
		/// </summary>
		/// <param name="paymentId">System.Guid?</param>
		public async Task<int> Delete(System.Guid? paymentId)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].ClientPayment_DELETE";
				var param = new DynamicParameters();
				param.Add("paymentId", paymentId, DbType.Guid);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

