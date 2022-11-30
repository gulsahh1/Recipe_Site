<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="RecipeSite.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        font-size: large;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        width: 487px;
    }
    .auto-style11 {
        text-align: right;
        width: 91px;
    }
        .auto-style12 {
            width: 382px;
            font-size: large;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            width: 380px;
            font-size: large;
        }
        .auto-style16 {
            text-align: right;
            height: 26px;
        }
        .auto-style17 {
            height: 26px;
        }
        .auto-style18 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="32px">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12"><strong>YEMEK LİSTESİ</strong></td>
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
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style11">
                           <%--<i class="fa-solid fa-trash"></i>--%>
                       <a href="Yemekler.aspx?YemekId=<%#Eval("YemekId") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/Resimler/delete.png" Width="20px" /></a>
                        </td>
                        <td class="auto-style9">
                        <a href="YemekDüzenle.aspx?YemekId=<%#Eval("YemekId") %>"><asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/Resimler/update.png" CssClass="auto-style13" ImageAlign="TextTop" Width="20px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style15"><strong>YEMEK EKLEME</strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="25px" Text="+" Width="25px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="25px" Text="-" Width="25px" OnClick="Button4_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"><strong>Yemek Adı:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TxtYemekAdAdmin" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yemek Tarifi:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">&nbsp;<asp:Button ID="BtnEkle" runat="server" OnClick="BtnEkle_Click" Text="Ekle" Width="130px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

