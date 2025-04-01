using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class Fixture
{
    public string FixtureId { get; set; } = null!;

    public string? HomeTeam { get; set; }

    public string? AwayTeam { get; set; }

    public DateTime? FixtureDate { get; set; }

    public int? HomeScore { get; set; }

    public int? AwayScore { get; set; }

    public string? Stadium { get; set; }

    public virtual Team? AwayTeamNavigation { get; set; }

    public virtual Team? HomeTeamNavigation { get; set; }

    public virtual Stadium? StadiumNavigation { get; set; }
}
