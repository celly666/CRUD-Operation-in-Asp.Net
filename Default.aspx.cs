using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadRecord();
        }
    }
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=ProgrammingDB;Integrated Security=True");
    
 // insert button
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("Insert into StudentInfo_Tab values('"+int.Parse(TextBox1.Text)+"','"+TextBox2.Text+"','"+DropDownList1.SelectedValue+"','"+double.Parse(TextBox4.Text)+"','"+TextBox5.Text+"')",con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
        LoadRecord();
    }
// data gridview
    void LoadRecord()
    {
        SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
// update button
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("update StudentInfo_Tab set StudentName = '" + TextBox2.Text + "', Address = '" + DropDownList1.SelectedValue + "', Age = '" + double.Parse(TextBox4.Text) + "', Contact = '" + TextBox5.Text + "' where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
        LoadRecord();
    }
// delete button
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("delete StudentInfo_Tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
        comm.ExecuteNonQuery();
        con.Close();
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted');", true);
        LoadRecord();
    }
// search button
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataAdapter d = new SqlDataAdapter(comm);
        DataTable dt = new DataTable();
        d.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
// get button
    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand comm = new SqlCommand("select * from StudentInfo_Tab where StudentID ='" + int.Parse(TextBox1.Text) + "'", con);
        SqlDataReader r = comm.ExecuteReader();
        while (r.Read())
        {
            TextBox2.Text = r.GetValue(1).ToString();
            DropDownList1.SelectedValue = r.GetValue(2).ToString();
            TextBox4.Text = r.GetValue(3).ToString();
            TextBox5.Text = r.GetValue(4).ToString();
        }
      
    }
}
