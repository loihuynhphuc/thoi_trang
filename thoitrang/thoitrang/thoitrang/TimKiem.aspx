<%@ Page Title="" Language="C#" MasterPageFile="~/trangmau.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="thoitrang.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="txt_tim" runat="server" Width="355px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/TimKiem.aspx" Text="Tìm kiếm" />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSP" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table align="center" class="auto-style5">
                <tr>
                    <td>
                        <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("HinhanhSP", "~/dulieuhinh/{0}") %>' Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaSP", "~/ChiTietSanPham.aspx?MaSP={0}") %>' Text='<%# Eval("TenSP", "{0}") %>'></asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>Gía:
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("GiaSP", "{0:#,###}") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ql_thoi_trangConnectionString3 %>" SelectCommand="SELECT [MaSP], [TenSP], [MotaSP], [GiaSP], [HinhanhSP], [MaNSX], [MaDM], [MaXX] FROM [Sanpham] WHERE ([TenSP] LIKE '%' + @TenSP + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txt_tim" Name="TenSP" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
