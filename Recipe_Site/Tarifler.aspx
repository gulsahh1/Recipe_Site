<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="RecipeSite.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 366px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style9"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="25px"  Text="+" Width="25px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="25px"  Text="-" Width="25px" OnClick="Button2_Click" />
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8">
               <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Resimler/öneri.jpg" CssClass="auto-style13" ImageAlign="TextTop" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style9"><strong>ONAYLI TARİF LİSTESİ</strong></td>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="25px"  Text="+" Width="25px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="25px"  Text="-" Width="25px" OnClick="Button4_Click"  />
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style8">
               <a href="TarifOnerDetay.aspx?TarifId=<%#Eval("TarifId")%>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Resimler/öneri.jpg" CssClass="auto-style13" ImageAlign="TextTop" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
