<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.Master" AutoEventWireup="true" CodeBehind="DanhMucSanPham.aspx.cs" Inherits="thoitrang.DanhMucSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table align="center" class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("HinhanhSP", "~/dulieuhinh/{0}") %>' Width="190px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaSP", "~/ChiTietSanPham.aspx?MaSP={0}") %>' Text='<%# Eval("TenSP", "{0}") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("GiaSP", "{0:#,###đ}") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ql_thoi_trangConnectionString3 %>" SelectCommand="SELECT [MaSP], [TenSP], [HinhanhSP], [MaDM], [GiaSP] FROM [Sanpham] WHERE ([MaDM] = @MaDM)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaDM" QueryStringField="MaDM" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
