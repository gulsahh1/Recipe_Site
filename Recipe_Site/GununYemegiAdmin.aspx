<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="RecipeSite.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="Panel1" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style9"><strong>YEMEK LİSTESİ</strong></td>
                <td class="auto-style8">
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="25px"  Text="+" Width="25px" OnClick="Button1_Click" />
                    </strong>
                </td>
                <td class="auto-style8">
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8">
                            <a href='YemekDüzenle.aspx?YemekId=<%#Eval("YemekId") %>'>
                            <asp:Image ID="Image3" runat="server" CssClass="auto-style13" Height="30px" ImageAlign="TextTop" ImageUrl="~/Resimler/choose.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
