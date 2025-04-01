using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class Team
{
    public string TeamId { get; set; } = null!;

    public string? TeamName { get; set; }

    public string? Stadium { get; set; }

    public virtual ICollection<Coach> Coaches { get; set; } = new List<Coach>();

    public virtual ICollection<Fixture> FixtureAwayTeamNavigations { get; set; } = new List<Fixture>();

    public virtual ICollection<Fixture> FixtureHomeTeamNavigations { get; set; } = new List<Fixture>();

    public virtual ICollection<Player> Players { get; set; } = new List<Player>();

    public virtual Stadium? StadiumNavigation { get; set; }
}
