using MapogoSoft.DrivingSchoolAPI.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DrivingSchoolManagement.Entities
{
    public class DrivingSchoolContext : DbContext
    {
        public DrivingSchoolContext()
        {
        }

        public DrivingSchoolContext(DbContextOptions<DrivingSchoolContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Address> Address { get; set; }
        public virtual DbSet<Client> Client { get; set; }
        public virtual DbSet<ClientPayment> ClientPayment { get; set; }
        public virtual DbSet<Lesson> Lesson { get; set; }
        public virtual DbSet<RefLessonStatus> RefLessonStatus { get; set; }
        public virtual DbSet<RefPaymentMethod> RefPaymentMethod { get; set; }
        public virtual DbSet<RegJobTitle> RegJobTitle { get; set; }
        public virtual DbSet<SchoolOffice> SchoolOffice { get; set; }
        public virtual DbSet<Staff> Staff { get; set; }
        public virtual DbSet<Vehicle> Vehicle { get; set; }

        // Unable to generate entity type for table 'dbo.Office_Staff'. Please see the warning messages.

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=.\\;Database=DrivingSchool;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Address>(entity =>
            {
                entity.Property(e => e.AddressId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Building).IsUnicode(false);

                entity.Property(e => e.City).IsUnicode(false);

                entity.Property(e => e.Country).IsUnicode(false);

                entity.Property(e => e.PostalCode).IsUnicode(false);

                entity.Property(e => e.Province).IsUnicode(false);

                entity.Property(e => e.Street).IsUnicode(false);

                entity.Property(e => e.Town).IsUnicode(false);
            });

            modelBuilder.Entity<Client>(entity =>
            {
                entity.Property(e => e.ClientId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.CellMobilePhoneNumber).IsUnicode(false);

                entity.Property(e => e.EmailAddress).IsUnicode(false);

                entity.Property(e => e.FirstName).IsUnicode(false);

                entity.Property(e => e.HomePhoneNumber).IsUnicode(false);

                entity.Property(e => e.LastName).IsUnicode(false);

                entity.Property(e => e.MiddleName).IsUnicode(false);

                entity.HasOne(d => d.Address)
                    .WithMany(p => p.Client)
                    .HasForeignKey(d => d.AddressId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Client_Address");

                entity.HasOne(d => d.Office)
                    .WithMany(p => p.Client)
                    .HasForeignKey(d => d.OfficeId)
                    .HasConstraintName("FK_Client_SchoolOffice");
            });

            modelBuilder.Entity<ClientPayment>(entity =>
            {
                entity.Property(e => e.PaymentId).HasDefaultValueSql("(newid())");

                entity.HasOne(d => d.PaymentMethodCodeNavigation)
                    .WithMany(p => p.ClientPayment)
                    .HasForeignKey(d => d.PaymentMethodCode)
                    .HasConstraintName("FK_Client_Payment_Client_Payment");
            });

            modelBuilder.Entity<Lesson>(entity =>
            {
                entity.Property(e => e.LessonId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.ClientProgressMade).IsUnicode(false);

                entity.HasOne(d => d.Client)
                    .WithMany(p => p.Lesson)
                    .HasForeignKey(d => d.ClientId)
                    .HasConstraintName("FK_Lesson_Client");

                entity.HasOne(d => d.InstructorStaff)
                    .WithMany(p => p.Lesson)
                    .HasForeignKey(d => d.InstructorStaffId)
                    .HasConstraintName("FK_Lesson_Staff");

                entity.HasOne(d => d.LessonStatusCodeNavigation)
                    .WithMany(p => p.Lesson)
                    .HasForeignKey(d => d.LessonStatusCode)
                    .HasConstraintName("FK_Lesson_Ref_Lesson_Status");

                entity.HasOne(d => d.VehicleRegNumberNavigation)
                    .WithMany(p => p.Lesson)
                    .HasForeignKey(d => d.VehicleRegNumber)
                    .HasConstraintName("FK_Lesson_Vehicle");
            });

            modelBuilder.Entity<RefLessonStatus>(entity =>
            {
                entity.Property(e => e.LessonStatusCode).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Description).IsUnicode(false);
            });

            modelBuilder.Entity<RefPaymentMethod>(entity =>
            {
                entity.Property(e => e.Description).IsUnicode(false);
            });

            modelBuilder.Entity<RegJobTitle>(entity =>
            {
                entity.Property(e => e.JobTitleCode).HasDefaultValueSql("(newid())");

                entity.Property(e => e.JobTitleDescription).IsUnicode(false);
            });

            modelBuilder.Entity<SchoolOffice>(entity =>
            {
                entity.Property(e => e.OfficeId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Name).IsUnicode(false);

                entity.HasOne(d => d.Address)
                    .WithMany(p => p.SchoolOffice)
                    .HasForeignKey(d => d.AddressId)
                    .HasConstraintName("FK_SchoolOffice_Address");
            });

            modelBuilder.Entity<Staff>(entity =>
            {
                entity.Property(e => e.StaffId).HasDefaultValueSql("(newid())");

                entity.Property(e => e.FirstName).IsUnicode(false);

                entity.Property(e => e.LastName).IsUnicode(false);

                entity.Property(e => e.MiddleName).IsUnicode(false);

                entity.HasOne(d => d.HomeAddress)
                    .WithMany(p => p.Staff)
                    .HasForeignKey(d => d.HomeAddressId)
                    .HasConstraintName("FK_Staff_Address");

                entity.HasOne(d => d.Office)
                    .WithMany(p => p.Staff)
                    .HasForeignKey(d => d.OfficeId)
                    .HasConstraintName("FK_Staff_SchoolOffice");
            });

            modelBuilder.Entity<Vehicle>(entity =>
            {
                entity.Property(e => e.VehicleRegNumber).HasDefaultValueSql("(newid())");

                entity.Property(e => e.Color).IsUnicode(false);

                entity.Property(e => e.Make).IsUnicode(false);

                entity.Property(e => e.Model).IsUnicode(false);
            });
        }


    }
}
