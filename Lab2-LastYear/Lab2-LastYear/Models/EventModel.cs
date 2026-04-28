using System.ComponentModel.DataAnnotations;

namespace Lab2_LastYear.Models;

public class EventModel
{
    public int Id { get; set; }
    [Required]
    public string? Name { get; set; }
    [StringLength(maximumLength:30,MinimumLength = 5)]
    public string? Location { get; set; }
}