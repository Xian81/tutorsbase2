using System;
using System.Collections.Generic;
using Tutorsdatabase.Data;
using Tutorsdatabase.Data.IDAO;
using Tutorsdatabase.Services.IService;
using Tutorsdatabase.Data.DAO;


namespace TutorsdatabaseEntities.Services.Service
{
    public class TutorService : ITutorService
    {   //add
        //get
        //edit
        //delete
        private ITutorDao _TutorDao;

        public TutorService()
        {
            _TutorDao = new TutorDAO();
        }


        //get

        public User GetTutor(int id)
        {
            return _TutorDao.GetTutor(id);
        }

        // add

        public void addTutor(User user)
        {
            _TutorDao.addTutor(user);
        }

        //delete

        public void deleteTutor(User user)

        {
            _TutorDao.deleteTutor(user);
        }

        //edit

        public void editTutor(User user)
        {


            _TutorDao.editTutor(user);
        }


        // get tutor view model

        public List<User> GetTutors()
        {
            return _TutorDao.GetTutors();
        }

        
    }
}