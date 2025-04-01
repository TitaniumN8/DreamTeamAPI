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
    public class UserSquadsController : ControllerBase
    {
        private readonly DreamTeamContext _context;

        public UserSquadsController(DreamTeamContext context)
        {
            _context = context;
        }

        // GET: api/UserSquads
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UserSquad>>> GetUserSquads()
        {
            return await _context.UserSquads.ToListAsync();
        }

        // GET: api/UserSquads/5
        [HttpGet("{id}")]
        public async Task<ActionResult<UserSquad>> GetUserSquad(string id)
        {
            var userSquad = await _context.UserSquads.FindAsync(id);

            if (userSquad == null)
            {
                return NotFound();
            }

            return userSquad;
        }

        // PUT: api/UserSquads/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUserSquad(string id, UserSquad userSquad)
        {
            if (id != userSquad.SquadPlayerId)
            {
                return BadRequest();
            }

            _context.Entry(userSquad).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserSquadExists(id))
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

        // POST: api/UserSquads
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<UserSquad>> PostUserSquad(UserSquad userSquad)
        {
            _context.UserSquads.Add(userSquad);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (UserSquadExists(userSquad.SquadPlayerId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetUserSquad", new { id = userSquad.SquadPlayerId }, userSquad);
        }

        // DELETE: api/UserSquads/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteUserSquad(string id)
        {
            var userSquad = await _context.UserSquads.FindAsync(id);
            if (userSquad == null)
            {
                return NotFound();
            }

            _context.UserSquads.Remove(userSquad);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool UserSquadExists(string id)
        {
            return _context.UserSquads.Any(e => e.SquadPlayerId == id);
        }
    }
}
