using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Tutorsdatabase.Data;




namespace Tutorsdatabase.Controllers
{
    public class UserController : ApplicationController
    {
        // GET: Tutor
        public ActionResult Index()
        {
            return View("Index", _tutorService.GetTutors());
        }

        // GET: Tutor/Details/5
        public ActionResult Details(int id)
        {
            return View(_tutorService.GetTutor(id));
        }

        // GET: Tutor/Create
        public ActionResult Create()
        {
                       return View();
        }

        // POST: Tutor/Create
        [HttpPost]
        public ActionResult Create(User model)
        {
            try
            {
                // TODO: Add insert logic here

                _tutorService.addTutor(model);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Tutor/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Tutor/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Tutor/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Tutor/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
