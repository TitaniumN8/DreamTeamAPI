using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class Stadium
{
    public string StadiumId { get; set; } = null!;

    public string? StadiumName { get; set; }

    public virtual ICollection<Fixture> Fixtures { get; set; } = new List<Fixture>();

    public virtual ICollection<Team> Teams { get; set; } = new List<Team>();
}
