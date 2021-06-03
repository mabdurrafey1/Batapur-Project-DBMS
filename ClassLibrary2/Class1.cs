using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace ClassLibrary2
{
    public class Class1
    {
    }
    public class ClsBusinessLogicLayer
    {
        ClsDataLayer dataObj = new ClsDataLayer();
        public void Login(string email,string password)
        {
            dataObj.Login(email, password);
        }
    }
}
