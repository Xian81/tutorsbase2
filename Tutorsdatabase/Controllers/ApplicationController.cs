using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Tutorsdatabase.Services.Service;
using TutorsdatabaseEntities.Services.Service;

namespace Tutorsdatabase.Controllers
{
    public abstract class ApplicationController : Controller
    {
        public TutorService _tutorService;

        public ApplicationController()
        {
            _tutorService = new TutorService();
        }
    }
}