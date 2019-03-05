using System.Collections.Generic;

namespace Tutorsdatabase.Data.IDAO
{
    public interface ITutorDao
    {

        User GetTutor(int id);

        void AddTutor(User user);

        void deleteTutor(User user);

        void editTutor(User user);

        List<User> GetTutors();

        void addTutor(User user);

        //the  class user type needs to match what is returned. The interface must match to the link to return the database.  
    }





}
