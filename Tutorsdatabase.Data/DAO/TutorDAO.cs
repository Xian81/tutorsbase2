using System.Collections.Generic;
using System.Linq;
using Tutorsdatabase.Data;
using Tutorsdatabase.Data.IDAO;
namespace Tutorsdatabase.Data.DAO
{
    public class TutorDAO : ITutorDao
    {
        //add
        //get
        //edit
        //delete
        private TutorsdatabaseEntities _context;

        public TutorDAO()
        {
            _context = new TutorsdatabaseEntities();
        }

        // get tutor list


        // get tutor id
        public User GetTutor(int id)
        {
          
           var _tutor = from tutor
                     in _context.Users
                     where tutor.Id == id
                     select tutor;
            return _tutor.FirstOrDefault();

        }

        // add tutor
        public void addTutor(User model)
        {
            User user = new User();

            user.Name = model.Name;
            user.Email = model.Email;
            user.Address = model.Address;
            user.Password = model.Password;
            user.Role = model.Role;
            user.UserName = model.UserName;
           
            _context.Users.Add(user);
            _context.SaveChanges();
        }

        // delete tutor

        public void deleteTutor(User user)
        {
            
            _context.Users.Remove(user);
            _context.SaveChanges();
        }

        //edit tutor

        public void editTutor(User user)
        {
            
            _context.SaveChanges();
        }

        // get Tutor view model

        

        public void AddTutor(User user)
        {
            _context.Users.Add(user);

             _context.SaveChanges();
        }







        public List<User>GetTutors()
        {

            return _context.Users.ToList();
            
        }
    }
}
