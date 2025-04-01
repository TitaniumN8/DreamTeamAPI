using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class User
{
    public string UserId { get; set; } = null!;

    public string? Username { get; set; }

    public string? Email { get; set; }

    public virtual ICollection<UserSquad> UserSquads { get; set; } = new List<UserSquad>();

    public virtual ICollection<UserTeamSheet> UserTeamSheets { get; set; } = new List<UserTeamSheet>();
}
