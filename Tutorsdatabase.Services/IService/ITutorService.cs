using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tutorsdatabase.Data;


namespace Tutorsdatabase.Services.IService
{
    public interface ITutorService
    {

        // get
        User GetTutor(int id);


        // add 
        void addTutor(User user);

        //delete

        void deleteTutor(User user);

        //edit 

        void editTutor(User user);

        //Tutor view model 

        List<User> GetTutors();
    }
}
