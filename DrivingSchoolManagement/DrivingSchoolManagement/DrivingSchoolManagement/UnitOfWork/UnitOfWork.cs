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

using MapogoSoft.DrivingSchoolAPI.Data.Repository;
using MapogoSoft.DrivingSchoolAPI.Data.Infrastructure;
namespace MapogoSoft.DrivingSchoolAPI.Data.UnitOfWork
{
	
	public class UnitOfWork : IUnitOfWork
	{
		
		public IAddressRepository _addressRepository;
		public IClientRepository _clientRepository;
		public IClientPaymentRepository _clientpaymentRepository;
		public ILessonRepository _lessonRepository;
		public IRefLessonStatusRepository _reflessonstatusRepository;
		public IRefPaymentMethodRepository _refpaymentmethodRepository;
		public IRegJobTitleRepository _regjobtitleRepository;
		public ISchoolOfficeRepository _schoolofficeRepository;
		public IStaffRepository _staffRepository;
		public IVehicleRepository _vehicleRepository;
		public IConnectionFactory _connectionFactory;
		public UnitOfWork(IConnectionFactory connectionFactory)
		{
			_connectionFactory = connectionFactory;
		}
		public IAddressRepository AddressRepository
		{
			get
			{
				if (_addressRepository == null)
				{
					_addressRepository = new AddressRepository(_connectionFactory);
				}
				return _addressRepository;
			}
		}
		public IClientRepository ClientRepository
		{
			get
			{
				if (_clientRepository == null)
				{
					_clientRepository = new ClientRepository(_connectionFactory);
				}
				return _clientRepository;
			}
		}
		public IClientPaymentRepository ClientPaymentRepository
		{
			get
			{
				if (_clientpaymentRepository == null)
				{
					_clientpaymentRepository = new ClientPaymentRepository(_connectionFactory);
				}
				return _clientpaymentRepository;
			}
		}
		public ILessonRepository LessonRepository
		{
			get
			{
				if (_lessonRepository == null)
				{
					_lessonRepository = new LessonRepository(_connectionFactory);
				}
				return _lessonRepository;
			}
		}
		public IRefLessonStatusRepository RefLessonStatusRepository
		{
			get
			{
				if (_reflessonstatusRepository == null)
				{
					_reflessonstatusRepository = new RefLessonStatusRepository(_connectionFactory);
				}
				return _reflessonstatusRepository;
			}
		}
		public IRefPaymentMethodRepository RefPaymentMethodRepository
		{
			get
			{
				if (_refpaymentmethodRepository == null)
				{
					_refpaymentmethodRepository = new RefPaymentMethodRepository(_connectionFactory);
				}
				return _refpaymentmethodRepository;
			}
		}
		public IRegJobTitleRepository RegJobTitleRepository
		{
			get
			{
				if (_regjobtitleRepository == null)
				{
					_regjobtitleRepository = new RegJobTitleRepository(_connectionFactory);
				}
				return _regjobtitleRepository;
			}
		}
		public ISchoolOfficeRepository SchoolOfficeRepository
		{
			get
			{
				if (_schoolofficeRepository == null)
				{
					_schoolofficeRepository = new SchoolOfficeRepository(_connectionFactory);
				}
				return _schoolofficeRepository;
			}
		}
		public IStaffRepository StaffRepository
		{
			get
			{
				if (_staffRepository == null)
				{
					_staffRepository = new StaffRepository(_connectionFactory);
				}
				return _staffRepository;
			}
		}
		public IVehicleRepository VehicleRepository
		{
			get
			{
				if (_vehicleRepository == null)
				{
					_vehicleRepository = new VehicleRepository(_connectionFactory);
				}
				return _vehicleRepository;
			}
		}
		void IUnitOfWork.Complete()
		{
			throw new NotImplementedException();
		}
		#region IDisposable Support
		
		private bool disposedValue = false; // To detect redundant calls
		protected virtual void Dispose(bool disposing)
		{
			if (!disposedValue)
			
			{
				if (disposing)
				{
					// TODO: dispose managed state (managed objects).
				}
				// TODO: free unmanaged resources (unmanaged objects) and override a finalizer below.
				// TODO: set large fields to null.
				disposedValue = true;
			}
		}
		
		// TODO: override a finalizer only if Dispose(bool disposing) above has code to free unmanaged resources.
		// ~UnitOfWork() {
		//   // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
		//   Dispose(false);
		// }
		// This code added to correctly implement the disposable pattern.
		void IDisposable.Dispose()
		{
			// Do not change this code. Put cleanup code in Dispose(bool disposing) above.
			Dispose(true);
			// TODO: uncomment the following line if the finalizer is overridden above.
			// GC.SuppressFinalize(this);
		}
		#endregion
	}
}

