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
	public partial class RefPaymentMethodRepository : BaseRepository, IRefPaymentMethodRepository
	{
		public RefPaymentMethodRepository(IConnectionFactory connectionFactory) : base(connectionFactory) { }
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="paymentMethodCode">System.Int32?</param>
		public async Task<RefPaymentMethod> Get(System.Int32? paymentMethodCode)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_SELECT";
				var param = new DynamicParameters();
				param.Add(@"paymentMethodCode", paymentMethodCode, DbType.Int32);
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Select One
		/// <summary>
		/// Get data according to the primary key value.
		/// </summary>
		/// <param name="paymentMethodCode">System.Int32?</param>
		public async Task<RefPaymentMethod> Get(System.Int32? paymentMethodCode,int DrivingSchoolAPI)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_SELECT_COMPANY";
				var param = new DynamicParameters();
				param.Add(@"paymentMethodCode", paymentMethodCode, DbType.Int32);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				return list.FirstOrDefault();
				
			}
		}
		#endregion
		
		#region Search
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_PAGING";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_SORT";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_PAGING_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_SORT_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring,int DrivingSchoolAPI)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_CUSTOM_COMPANY";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				param.Add("@DrivingSchoolAPI", DrivingSchoolAPI);
				
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(int pageIndex, int pageSize,string sortBy, string orderBy, string searchstring)
		{
			
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_CUSTOM";
				var param = new DynamicParameters();
				param.Add("@PageIndex", pageIndex);
				param.Add("@PageSize", pageSize);
				param.Add("@sortBy", sortBy);
				param.Add("@orderBy", orderBy);
				param.Add("@searchstring", searchstring);
				
				var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
				
				if (list == null)
				return null;
				else
				return list;
				
			}
		}
		public async Task<IEnumerable<RefPaymentMethod>> Search(System.Int32? paymentMethodCode, System.String description)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RefPaymentMethod_SEARCH";
					var param = new DynamicParameters();
					param.Add("paymentMethodCode",paymentMethodCode, DbType.Int32);
					param.Add("description",description, DbType.String);
					
					var list = await SqlMapper.QueryAsync<RefPaymentMethod>(connection, query, param, commandType: CommandType.StoredProcedure);
					
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
		/// Insert current RefPaymentMethod to database.
		/// </summary>
		/// <param name="description">System.String</param>
		public async Task<System.Int32> Insert(System.String description)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RefPaymentMethod_INSERT";
					var param = new DynamicParameters();
					param.Add("description", description, DbType.String);
					var objs = await SqlMapper.ExecuteScalarAsync<System.Int32>(connection, query, param, commandType: CommandType.StoredProcedure);
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		/// <summary>
		/// Insert current RefPaymentMethod to database.
		/// </summary>
		/// <param name=RefPaymentMethod Objects>RefPaymentMethod</param>
		public async Task<System.Int32> Insert(RefPaymentMethod model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RefPaymentMethod_INSERT";
					var param = new DynamicParameters();
					param.Add("description", model.Description, DbType.String);
					var objs = await SqlMapper.ExecuteScalarAsync<System.Int32>(connection, query, param, commandType: CommandType.StoredProcedure);
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
		/// Update current RefPaymentMethod to database.
		/// </summary>
		/// <param name="paymentMethodCode">System.Int32?</param>
		/// <param name="description">System.String</param>
		public async Task<int> Update(System.Int32? paymentMethodCode, System.String description)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RefPaymentMethod_UPDATE";
					var param = new DynamicParameters();
					param.Add("paymentMethodCode", paymentMethodCode, DbType.Int32);
					param.Add("description", description, DbType.String);
					var objs = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
					
					return objs;
					
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}
		public async Task<int> Update(RefPaymentMethod model)
		{
			try
			{
				
				using (var connection = connectionFactory.GetConnection)
				{
					var query = "[dbo].RefPaymentMethod_UPDATE";
					var param = new DynamicParameters();
					param.Add("paymentMethodCode", model.PaymentMethodCode, DbType.Int32);
					param.Add("description", model.Description, DbType.String);
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
		/// Delete current RefPaymentMethod from database.
		/// </summary>
		/// <param name="paymentMethodCode">System.Int32?</param>
		public async Task<int> Delete(System.Int32? paymentMethodCode)
		{
			using (var connection = connectionFactory.GetConnection)
			{
				var query = "[dbo].RefPaymentMethod_DELETE";
				var param = new DynamicParameters();
				param.Add("paymentMethodCode", paymentMethodCode, DbType.Int32);
				var iValue = await SqlMapper.ExecuteAsync(connection, query, param, commandType: CommandType.StoredProcedure);
				return iValue;
				
			}
		}
		#endregion
		
		
	}
}

