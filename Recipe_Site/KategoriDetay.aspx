<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="RecipeSite.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
        }
        .auto-style8 {
            font-size: x-large;
            background-color:#a8a4a4
        }
        .auto-style7 {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td><strong><a href="YemekDetay.aspx?YemekId=<%# Eval("YemekId") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                    </strong></td>
                </a>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Yemek Tarifi: </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <strong><em>Puan:
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td class="br"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
