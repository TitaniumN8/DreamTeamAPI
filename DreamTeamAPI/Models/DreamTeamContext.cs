using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DreamTeamAPI.Models;

public partial class DreamTeamContext : DbContext
{
    public DreamTeamContext()
    {
    }

    public DreamTeamContext(DbContextOptions<DreamTeamContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Coach> Coaches { get; set; }

    public virtual DbSet<Fixture> Fixtures { get; set; }

    public virtual DbSet<Player> Players { get; set; }

    public virtual DbSet<Stadium> Stadiums { get; set; }

    public virtual DbSet<Team> Teams { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<UserSquad> UserSquads { get; set; }

    public virtual DbSet<UserTeamSheet> UserTeamSheets { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DESKTOP-5R8OTK2\\SQLEXPRESS;Database=DreamTeam;Trusted_Connection=True;TrustServerCertificate=True;MultipleActiveResultSets=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Coach>(entity =>
        {
            entity.HasKey(e => e.CoachId).HasName("PK__Coaches__F411D9A1AEBDF53C");

            entity.Property(e => e.CoachId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("CoachID");
            entity.Property(e => e.FirstName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.LastName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.TeamId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("TeamID");

            entity.HasOne(d => d.Team).WithMany(p => p.Coaches)
                .HasForeignKey(d => d.TeamId)
                .HasConstraintName("FK__Coaches__TeamID__36B12243");
        });

        modelBuilder.Entity<Fixture>(entity =>
        {
            entity.HasKey(e => e.FixtureId).HasName("PK__Fixtures__26465BF63AE92B72");

            entity.Property(e => e.FixtureId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("FixtureID");
            entity.Property(e => e.AwayTeam)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.FixtureDate).HasColumnType("smalldatetime");
            entity.Property(e => e.HomeTeam)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Stadium)
                .HasMaxLength(255)
                .IsUnicode(false);

            entity.HasOne(d => d.AwayTeamNavigation).WithMany(p => p.FixtureAwayTeamNavigations)
                .HasForeignKey(d => d.AwayTeam)
                .HasConstraintName("FK__Fixtures__AwayTe__2D27B809");

            entity.HasOne(d => d.HomeTeamNavigation).WithMany(p => p.FixtureHomeTeamNavigations)
                .HasForeignKey(d => d.HomeTeam)
                .HasConstraintName("FK__Fixtures__HomeTe__2C3393D0");

            entity.HasOne(d => d.StadiumNavigation).WithMany(p => p.Fixtures)
                .HasForeignKey(d => d.Stadium)
                .HasConstraintName("FK__Fixtures__Stadiu__2E1BDC42");
        });

        modelBuilder.Entity<Player>(entity =>
        {
            entity.HasKey(e => e.PlayerId).HasName("PK__Players__4A4E74A8B0FD13EA");

            entity.Property(e => e.PlayerId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("PlayerID");
            entity.Property(e => e.FirstName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.LastName)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Positions)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.TeamId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("TeamID");

            entity.HasOne(d => d.Team).WithMany(p => p.Players)
                .HasForeignKey(d => d.TeamId)
                .HasConstraintName("FK__Players__TeamID__1A14E395");
        });

        modelBuilder.Entity<Stadium>(entity =>
        {
            entity.HasKey(e => e.StadiumId).HasName("PK__Stadiums__ED833038D12553E3");

            entity.Property(e => e.StadiumId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("StadiumID");
            entity.Property(e => e.StadiumName)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Team>(entity =>
        {
            entity.HasKey(e => e.TeamId).HasName("PK__Teams__123AE7B9D338F656");

            entity.Property(e => e.TeamId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("TeamID");
            entity.Property(e => e.Stadium)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.TeamName)
                .HasMaxLength(255)
                .IsUnicode(false);

            entity.HasOne(d => d.StadiumNavigation).WithMany(p => p.Teams)
                .HasForeignKey(d => d.Stadium)
                .HasConstraintName("FK__Teams__Stadium__173876EA");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__Users__1788CCAC9EA66F26");

            entity.Property(e => e.UserId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("UserID");
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false);
            entity.Property(e => e.Username)
                .HasMaxLength(255)
                .IsUnicode(false);
        });

        modelBuilder.Entity<UserSquad>(entity =>
        {
            entity.HasKey(e => e.SquadPlayerId).HasName("PK__UserSqua__ECD3E5B0ADAFA9BD");

            entity.ToTable("UserSquad");

            entity.Property(e => e.SquadPlayerId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("SquadPlayerID");
            entity.Property(e => e.PlayerId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("PlayerID");
            entity.Property(e => e.UserId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("UserID");

            entity.HasOne(d => d.Player).WithMany(p => p.UserSquads)
                .HasForeignKey(d => d.PlayerId)
                .HasConstraintName("FK__UserSquad__Playe__3D5E1FD2");

            entity.HasOne(d => d.User).WithMany(p => p.UserSquads)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__UserSquad__UserI__3C69FB99");
        });

        modelBuilder.Entity<UserTeamSheet>(entity =>
        {
            entity.HasKey(e => e.TeamSheetId).HasName("PK__UserTeam__B43B787802DC4ADE");

            entity.ToTable("UserTeamSheet");

            entity.Property(e => e.TeamSheetId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("TeamSheetID");
            entity.Property(e => e.PlayerIds)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("PlayerIDs");
            entity.Property(e => e.UserId)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("UserID");
            entity.Property(e => e.WeekendDate).HasColumnType("smalldatetime");

            entity.HasOne(d => d.User).WithMany(p => p.UserTeamSheets)
                .HasForeignKey(d => d.UserId)
                .HasConstraintName("FK__UserTeamS__UserI__403A8C7D");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
