<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Brscrutinity.aspx.cs" Inherits="Brscrutinity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <asp:Panel ID="Panel1" runat="server" BackColor="#ffccff" style="margin-top: 46px">
   

   
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   

   
    <asp:Label ID="Lblcustno" runat="server" Text="Customer Number" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="Txtcust" runat="server" style="margin-left: 16px"></asp:TextBox>
    <asp:Button ID="Butsearch" runat="server" Text="Search" Onclick="Butsearch_Click" style="margin-left: 15px" />

     <asp:GridView ID="GV" runat="server" style="margin-left: 190px" Width="806px" AutoGenerateColumns="False" >
        <Columns>
                             
                                <asp:BoundField DataField="CustNo" HeaderText="Customer No."/>                 
                                <asp:TemplateField>
                                    <ItemTemplate>
                                  <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("CustNo") %>' Onclick="lnkview_Click" >View</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
    </asp:GridView>
 </asp:Panel>
</asp:Content>

