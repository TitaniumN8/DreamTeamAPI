using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class Player
{
    public string PlayerId { get; set; } = null!;

    public string? LastName { get; set; }

    public string? FirstName { get; set; }

    public string? Positions { get; set; }

    public string? TeamId { get; set; }

    public int? PlayerValue { get; set; }

    public virtual Team? Team { get; set; }

    public virtual ICollection<UserSquad> UserSquads { get; set; } = new List<UserSquad>();
}
