using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using DLL;
namespace BLL
{

    public class ClsBusinessAccessLayer
    {
        ClsDataLayer dataObj = new ClsDataLayer();
        public void Login(string email ,string password)
        {
            dataObj.Login(email, password);
        }

    }
}
