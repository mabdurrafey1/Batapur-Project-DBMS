using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
    public class ClsBusinessLogicLayer
    {
        ClsDataLayer dataObj = new ClsDataLayer();
        public bool Login(string email, string password)
        {
            bool ret = dataObj.Login(email, password);
            return ret;
        }
        public bool SignUp(string fname,string lname,string email,string phone,string password)
        {
            ClsDataLayer SdataObj = new ClsDataLayer();
            bool ret = SdataObj.SignUp(fname, lname, email, phone, password);
            return ret;
        }
    }
}
