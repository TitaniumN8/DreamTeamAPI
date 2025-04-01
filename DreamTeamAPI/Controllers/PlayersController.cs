using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using DreamTeamAPI.Models;

namespace DreamTeamAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PlayersController : ControllerBase
    {
        private readonly DreamTeamContext _context;

        public PlayersController(DreamTeamContext context)
        {
            _context = context;
        }

        // GET: api/Players
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Player>>> GetPlayers()
        {
            var players = await _context.Players
         .Select(p => new
         {
             p.PlayerId,
             p.FirstName,
             p.LastName,
             p.Positions,
             p.TeamId  // Include only the fields you need
         })
         .ToListAsync();

            return Ok(players);
        }

        // GET: api/Players/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Player>> GetPlayer(string id)
        {
            var player = await _context.Players
                .Where(p => p.PlayerId == id)
                .Select(p => new
                {
                    p.PlayerId,
                    p.FirstName,
                    p.LastName,
                    p.Positions,
                    p.TeamId  // Include only the fields you need
                })
                .FirstOrDefaultAsync();

            if (player == null)
            {
                return NotFound();
            }

            return Ok(player);
        }

        // PUT: api/Players/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutPlayer(string id, Player player)
        {
            if (id != player.PlayerId)
            {
                return BadRequest();
            }

            // Optionally, you can limit fields here before updating, e.g., only allow certain fields to be modified
            var existingPlayer = await _context.Players.FindAsync(id);
            if (existingPlayer == null)
            {
                return NotFound();
            }

            // Update only the fields you want to update
            existingPlayer.FirstName = player.FirstName;
            existingPlayer.LastName = player.LastName;
            existingPlayer.Positions = player.Positions;
            existingPlayer.TeamId = player.TeamId;

            _context.Entry(existingPlayer).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PlayerExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Players
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Player>> PostPlayer(Player player)
        {
            // Optionally, validate or limit fields here if needed
            if (string.IsNullOrEmpty(player.FirstName) || string.IsNullOrEmpty(player.LastName))
            {
                return BadRequest("First name and last name are required.");
            }

            // Add the player to the context
            _context.Players.Add(player);

            try
            {
                // Save changes to the database
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (PlayerExists(player.PlayerId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetPlayer", new { id = player.PlayerId }, player);
        }

        // DELETE: api/Players/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeletePlayer(string id)
        {
            var player = await _context.Players.FindAsync(id);
            if (player == null)
            {
                return NotFound();
            }

            _context.Players.Remove(player);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool PlayerExists(string id)
        {
            return _context.Players.Any(e => e.PlayerId == id);
        }
    }
}
