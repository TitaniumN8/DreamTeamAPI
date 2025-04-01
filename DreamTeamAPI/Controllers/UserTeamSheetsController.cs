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
    public class UserTeamSheetsController : ControllerBase
    {
        private readonly DreamTeamContext _context;

        public UserTeamSheetsController(DreamTeamContext context)
        {
            _context = context;
        }

        // GET: api/UserTeamSheets
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UserTeamSheet>>> GetUserTeamSheets()
        {
            return await _context.UserTeamSheets.ToListAsync();
        }

        // GET: api/UserTeamSheets/5
        [HttpGet("{id}")]
        public async Task<ActionResult<UserTeamSheet>> GetUserTeamSheet(string id)
        {
            var userTeamSheet = await _context.UserTeamSheets.FindAsync(id);

            if (userTeamSheet == null)
            {
                return NotFound();
            }

            return userTeamSheet;
        }

        // PUT: api/UserTeamSheets/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUserTeamSheet(string id, UserTeamSheet userTeamSheet)
        {
            if (id != userTeamSheet.TeamSheetId)
            {
                return BadRequest();
            }

            _context.Entry(userTeamSheet).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserTeamSheetExists(id))
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

        // POST: api/UserTeamSheets
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<UserTeamSheet>> PostUserTeamSheet(UserTeamSheet userTeamSheet)
        {
            _context.UserTeamSheets.Add(userTeamSheet);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (UserTeamSheetExists(userTeamSheet.TeamSheetId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetUserTeamSheet", new { id = userTeamSheet.TeamSheetId }, userTeamSheet);
        }

        // DELETE: api/UserTeamSheets/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteUserTeamSheet(string id)
        {
            var userTeamSheet = await _context.UserTeamSheets.FindAsync(id);
            if (userTeamSheet == null)
            {
                return NotFound();
            }

            _context.UserTeamSheets.Remove(userTeamSheet);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool UserTeamSheetExists(string id)
        {
            return _context.UserTeamSheets.Any(e => e.TeamSheetId == id);
        }
    }
}
