using System;
using System.Collections.Generic;

namespace DreamTeamAPI.Models;

public partial class UserTeamSheet
{
    public string TeamSheetId { get; set; } = null!;

    public DateTime? WeekendDate { get; set; }

    public string? UserId { get; set; }

    public string? PlayerIds { get; set; }

    public virtual User? User { get; set; }
}
