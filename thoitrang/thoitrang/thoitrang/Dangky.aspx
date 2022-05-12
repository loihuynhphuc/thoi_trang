<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.Master" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="thoitrang.Dangky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 800px;
        }
        .auto-style6 {
            color: #FF0066;
            background-color: #66FF66;
        }
        .auto-style7 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style5">
        <tr>
            <td class="auto-style4">
                <h1><em><span class="auto-style6">ĐĂNG KÝ THÀNH VIÊN</span></em></h1>
            </td>
        </tr>
        <tr>
            <td>Tên đăng nhập:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_tendn" runat="server" Width="305px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; (*)</td>
        </tr>
        <tr>
            <td>Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_MK" runat="server" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên khách hàng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_tenkh" runat="server" Width="298px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Calendar ID="cld_Ngaysinh" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td>giới tính:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdb_nam" runat="server" Text="Nam" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdb_nu" runat="server" Text="Nữ" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_diachi" runat="server" Width="363px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Điện thoại:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_dienthoai" runat="server" Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txt_email" runat="server" Width="364px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btn_dangky" runat="server" OnClick="btn_dangky_Click" style="background-color: #FFFF99" Text="Đăng ký" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_moi" runat="server" OnClick="btn_moi_Click" style="background-color: #33CCFF" Text="Mới" Width="105px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_thoat" runat="server" OnClick="btn_thoat_Click" style="background-color: #FF3300" Text="Thoát" Width="95px" />
            </td>
        </tr>
    </table>
</asp:Content>
