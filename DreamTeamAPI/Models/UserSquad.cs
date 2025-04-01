using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class UserSquad
{
    public string SquadPlayerId { get; set; } = null!;

    public string? UserId { get; set; }

    public int? Position { get; set; }

    public string? PlayerId { get; set; }

    public virtual Player? Player { get; set; }

    public virtual User? User { get; set; }
}
