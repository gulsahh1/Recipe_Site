<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="RecipeSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        width: 378px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style9"><strong>MESAJ LİSTESİ</strong></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="25px" OnClick="Button1_Click" Text="+" Width="25px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="25px" OnClick="Button2_Click" Text="-" Width="25px" />
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("MesajAdSoyad") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8">
                  <a href="MesajDetay.aspx?MesajId=<%#Eval("MesajId")%>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Resimler/mesaj.jpg" CssClass="auto-style13" ImageAlign="TextTop" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
