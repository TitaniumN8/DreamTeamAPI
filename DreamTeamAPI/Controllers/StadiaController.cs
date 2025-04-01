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
    public class StadiaController : ControllerBase
    {
        private readonly DreamTeamContext _context;

        public StadiaController(DreamTeamContext context)
        {
            _context = context;
        }

        // GET: api/Stadia
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Stadium>>> GetStadiums()
        {
            return await _context.Stadiums.ToListAsync();
        }

        // GET: api/Stadia/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Stadium>> GetStadium(string id)
        {
            var stadium = await _context.Stadiums.FindAsync(id);

            if (stadium == null)
            {
                return NotFound();
            }

            return stadium;
        }

        // PUT: api/Stadia/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutStadium(string id, Stadium stadium)
        {
            if (id != stadium.StadiumId)
            {
                return BadRequest();
            }

            _context.Entry(stadium).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!StadiumExists(id))
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

        // POST: api/Stadia
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Stadium>> PostStadium(Stadium stadium)
        {
            _context.Stadiums.Add(stadium);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (StadiumExists(stadium.StadiumId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetStadium", new { id = stadium.StadiumId }, stadium);
        }

        // DELETE: api/Stadia/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteStadium(string id)
        {
            var stadium = await _context.Stadiums.FindAsync(id);
            if (stadium == null)
            {
                return NotFound();
            }

            _context.Stadiums.Remove(stadium);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool StadiumExists(string id)
        {
            return _context.Stadiums.Any(e => e.StadiumId == id);
        }
    }
}
