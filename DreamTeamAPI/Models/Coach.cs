using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class Coach
{
    public string CoachId { get; set; } = null!;

    public string? LastName { get; set; }

    public string? FirstName { get; set; }

    public string? TeamId { get; set; }

    public virtual Team? Team { get; set; }
}
