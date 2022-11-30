<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="RecipeSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-size: xx-large;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            font-size: x-small;
        }
        .auto-style10 {
            margin-left: 80px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style13 {
            background-color: #CC99FF;
        }
        .auto-style14 {
            font-size: large;
            background-color: #CC99FF;
        }
        .auto-style15 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="tdstyle">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumİçerik") %>'></asp:Label>
                        &nbsp;-&nbsp; <em>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </em></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </strong>
    <br />
    <div class="auto-style13"><strong><span class="auto-style15">YORUM </span></strong><span class="auto-style14"><strong>PANELİ</strong></span> </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Ad Soyad:&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">E-mail:</td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" TextMode="Email" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Yorumunuz:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtYorumIcerik" runat="server" Height="80px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnYorumYap" runat="server" CssClass="auto-style12" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
