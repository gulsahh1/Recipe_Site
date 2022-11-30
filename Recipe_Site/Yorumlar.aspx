<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="RecipeSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style12 {
            width: 382px;
            font-size: large;
        }
        .auto-style9 {
        text-align: right;
    }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style10 {
        width: 487px;
    }
    .auto-style11 {
        text-align: right;
        width: 91px;
    }
        .auto-style8 {
        font-size: large;
    }
        .auto-style13 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12"><strong>ONAYLANAN YORUM LİSTESİ</strong></td>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="25px"  Text="+" Width="25px" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="25px"  Text="-" Width="25px" OnClick="Button2_Click" />
                    </strong>
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style11">
                           <%--<i class="fa-solid fa-trash"></i>--%>
                      <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Resimler/delete.png" Width="20px" />
                        </td>
                        <td class="auto-style9">
                       <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Resimler/update.png" CssClass="auto-style13" ImageAlign="TextTop" Width="20px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12"><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="25px"  Text="+" Width="25px" OnClick="Button3_Click"  />
                    </strong>
                </td>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="25px"  Text="-" Width="25px" OnClick="Button4_Click"  />
                    </strong>
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style10"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style11">
                           <%--<i class="fa-solid fa-trash"></i>--%>
                      <asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Resimler/delete.png" Width="20px" />
                        </td>
                        <td class="auto-style9">
                   <a href="YorumDetay.aspx?YorumId=<%# Eval("YorumId") %>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Resimler/update.png" CssClass="auto-style13" ImageAlign="TextTop" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
