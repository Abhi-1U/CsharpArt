using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace randomart
{
    public partial class client : System.Web.UI.Page
    {
        
        public Double[] data = new Double[6];
        public static Random gen = new Random();
        public int id = gen.Next(300);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                ServiceReference1.Service1Client points = new ServiceReference1.Service1Client();
                data = points.transform(id);
                if (data.Length == 0)
                    Label2.Text = "WebService Error ;(";
                else
                    Label2.Text = "WebService Connected :)";
                String s = Label1.Text;
                for (int i = 0; i < 6; i++)
                {
                    s += data[i].ToString();
                    s += " ";
                }
                Label1.Text = s;
            }
            catch(System.ServiceModel.ServiceActivationException ){
                Label2.Text = "WebService Disconnected :(";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
        }
    }
}