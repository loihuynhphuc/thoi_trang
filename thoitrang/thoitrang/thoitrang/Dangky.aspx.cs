using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace thoitrang
{
    public partial class Dangky : System.Web.UI.Page
    {
        SqlConnection kn = new SqlConnection(@"server=LAPTOP-FDOO31K1;DataBase=ql_thoi_trang;Integrated Security= true");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangky_Click(object sender, EventArgs e)
        {

            if (kn.State == ConnectionState.Closed) {
                kn.Open();
            }
            try
            {
                string gt = "";
                if (rdb_nam.Checked == true) gt = "Nam"; else gt = "Nữ";
                SqlCommand cmd;
                string sql = String.Format("insert_khachhang N'{0}',N'{1}',N'{2}','{3}','{4}','{5}','{6}','{7}'", txt_tendn.Text, txt_tenkh.Text, gt, cld_Ngaysinh.SelectedDate.ToString("dd/MM/yyyy"), txt_diachi.Text, txt_dienthoai.Text, txt_email.Text, txt_MK.Text);
                cmd = new SqlCommand(sql, kn);
                if (cmd.ExecuteNonQuery() != 0)
                {
                    Thongbao("Bạn đã đăng ký thành công");
                }

            }
            catch
            {
                Thongbao("Trung tên đăng nhập");
            }
            finally {
                kn.Close();
            }

        }
        public void Thongbao(string tb)
        {
            string str = "<script language='javascript'>alert('" + tb + "')</script>";
            Response.Write(str);
        }

        protected void btn_moi_Click(object sender, EventArgs e)
        {
            txt_MK.Text = " ";
            txt_tendn.Text = " ";
            txt_tenkh.Text = " ";
            txt_email.Text = " ";
            txt_dienthoai.Text = " ";
            txt_diachi.Text = " ";
            cld_Ngaysinh.SelectedDate = DateTime.Now;
            rdb_nam.Checked = true;
            rdb_nu.Checked = false;

        }

        protected void btn_thoat_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
            
}