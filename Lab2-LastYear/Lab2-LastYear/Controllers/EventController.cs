using Lab2_LastYear.Models;
using Microsoft.AspNetCore.Mvc;

namespace Lab2_LastYear.Controllers;

public class EventController : Controller
{
    private static List<EventModel> events = new List<EventModel>();
    
    // GET
    public IActionResult Index()
    {
        return View(events);
    }

    public IActionResult Create()
    {
        return View();
    }

    [HttpPost]
    public IActionResult Create(EventModel newEvent)
    {

        if (!ModelState.IsValid)
        {
            return View();
        }

        newEvent.Id = events.Count == 0 ? 1 : events.Max(x => x.Id) + 1;
        events.Add(newEvent);
        return RedirectToAction("Details", new { id = newEvent.Id });
    }

    public IActionResult Edit(int id)
    {
        foreach (var evnt in events)
        {
            if (evnt.Id==id)
            {
                return View(evnt);
            }
        }

        return RedirectToAction("Index");
    }

    [HttpPost]
    public IActionResult Edit(EventModel newEvent)
    {
        if (!ModelState.IsValid)
        {
            return View();
        }

        foreach (var other in events)
        {
            if (other.Id==newEvent.Id)
            {
                other.Name = newEvent.Name;
                other.Location = newEvent.Location;
                break;
            }
        }

        return RedirectToAction("Index");
    }

    public IActionResult Details(int id)
    {
        foreach (var evnt in events)
        {
            if (evnt.Id==id)
            {
                return View(evnt);
            }
        }

        return View("Index");
    }

    public IActionResult Delete(int id)
    {
        foreach (var evnt in events)
        {
            if (evnt.Id==id)
            {
                events.Remove(evnt);
                break;
            }
        }

        return RedirectToAction("Index");
    }
}