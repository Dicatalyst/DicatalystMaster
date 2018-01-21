using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL
{
    public class UsersVsModules
    {
        private DAL.usersVsModules _usermodules = new DAL.usersVsModules();

        public void InsertUsersVsModules(string userId, int moduleId, int packageId)
        {

            _usermodules.insertUsersVsModules(userId, moduleId, packageId);
        }

        public void insertDoctorPackageSpeciality(string userId, string speciality)
        {
            _usermodules.insertDoctorPackageSpeciality(userId,speciality);
        }
    }
}
