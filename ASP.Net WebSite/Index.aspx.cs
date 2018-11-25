using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    StringBuilder table = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString);
            con.Open();
            SqlCommand com = new SqlCommand("select Name, Address, Id from Employee where IsDeleted = 0;", con);

            SqlDataReader rd = com.ExecuteReader();
            table.Append("<table border='1' class=' table table-responsive'>");
            table.Append("<tr><th>Name</th><th>Address</th></tr>");
            if (rd.HasRows)
            {
                while (rd.Read()) {

                    table.Append("<tr>");
                    table.Append("<td id='name-" + rd[2] + "'>" + rd[0] + "</td>");
                    table.Append("<td id='address-" + rd[2] + "'>" + rd[1] + "</td>");
                    table.Append("<td> <a href=\"#\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\"#myModal1\" onclick=\"ShowEmployee(" + rd[2] + ")\">Update</a> </td>");
                    table.Append("<td> <a href=\"#\" class=\"btn btn-danger\" data-toggle=\"modal\" data-target=\"#myModal2\" onclick=\"DeleteEmployee(" + rd[2] + ")\">Delete</a> </td>");
                    table.Append("</tr>");
                }
            }

            table.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
            rd.Close();
            con.Close();
        }
            
        //}
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("insert into Employee(\"Name\",\"Address\", \"DepartmentId\", \"IsDeleted\") values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + Int32.Parse(TextBox3.Text) + ",0);", con);
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Index.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("update Employee set \"Name\"= '" + TextBox4.Text + "', \"Address\"= '" + TextBox5.Text + "' where \"Id\"=" + Int32.Parse(hiddenRow.Text) + "  and \"IsDeleted\" = 0;", con);
        SqlDataAdapter adapter = new SqlDataAdapter();

        adapter.InsertCommand = com;
        adapter.InsertCommand.ExecuteNonQuery();
        com.Dispose();
        con.Close();
        Response.Redirect("Index.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EmployeeConnectionString"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("Delete from Employee where \"Id\"= " + Int32.Parse(hiddenRow.Text), con);
        SqlDataAdapter adapter = new SqlDataAdapter();

        adapter.InsertCommand = com;
        adapter.InsertCommand.ExecuteNonQuery();
        com.Dispose();
        con.Close();
        Response.Redirect("Index.aspx");
    }
}