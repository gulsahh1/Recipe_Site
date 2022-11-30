<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="RecipeSite.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 380px;
            font-size: large;
        }
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Panel ID="Panel1" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style8"><strong>HAKKIMIZDA</strong></td>
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
         <table class="auto-style5">
              <tr>
                  <td class="auto-style9">
                      <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="430px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style9">&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style10"><strong>
                      <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                      </strong></td>
              </tr>
              <tr>
                  <td class="auto-style9">&nbsp;</td>
              </tr>
          </table>
    </asp:Panel>
      
</asp:Content>
