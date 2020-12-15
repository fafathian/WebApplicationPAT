using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationPAT.ServiceReference1;

namespace WebApplicationPAT
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("") || TextBox1.Text.Equals(""))
            {
                lblmsg.Text = "Sorry, Column can't Empty!!!";
            }
            else
            {

                InsertUser u = new InsertUser();
                u.Name = TextBox1.Text;
                u.Email = TextBox2.Text;
                string r = client.Insert(u);
                lblmsg.Text = r.ToString();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.gettestdata g = new ServiceReference1.gettestdata();
            g = client.GetInfo();
            DataTable dt = new DataTable();
            dt = g.usertab;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            lblmsg.Text = "";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            lblmsg.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Equals("") || TextBox1.Text.Equals("") || txtuid.Text.Equals(""))
            {
                lblmsg.Text = "Sorry, Column can't Empty!!!";
            }
            else
            {
                UpdateUser u = new UpdateUser();
                u.UID = int.Parse(txtuid.Text);
                u.Name = TextBox1.Text;
                u.Email = TextBox2.Text;
                string result = client.Update(u);
                lblmsg.Text = result.ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (txtuid.Text.Equals(""))
            {
                lblmsg.Text = "UserID is Empty";
            }
            else
            {
                DeleteUser d = new DeleteUser();
                d.UID = int.Parse(txtuid.Text);
                string res = client.Delete(d);
                lblmsg.Text = res.ToString();
            }
        }
    }
}