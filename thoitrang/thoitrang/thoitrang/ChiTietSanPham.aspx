<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="thoitrang.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 800px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table align="center" class="auto-style5">
                <tr>
                    <td class="auto-style4" colspan="2">THÔNG TIN SẢN PHẨM</td>
                </tr>
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("HinhanhSP", "~/dulieuhinh/{0}") %>' Width="200px" />
                    </td>
                    <td>Tên sản phẩm:<asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP", "{0}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Chi tiết:<asp:Label ID="Label2" runat="server" Text='<%# Eval("MotaSP").ToString().Replace("\n","<br>") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Gía:<asp:Label ID="Label3" runat="server" Text='<%# Eval("GiaSP", "{0:#,###}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>MaSP:<asp:Label ID="Label4" runat="server" Text='<%# Eval("MaSP", "{0:N}") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ql_thoi_trangConnectionString3 %>" SelectCommand="SELECT [MaSP], [TenSP], [MotaSP], [GiaSP], [HinhanhSP], [MaDM], [MaNSX], [MaXX], [MaCL] FROM [Sanpham] WHERE ([MaSP] = @MaSP)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSP" QueryStringField="MaSP" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
