<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BOD.aspx.cs" Inherits="BOD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>&nbsp;</p>
    <h1 style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Loan Application </h1>
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Style="background-color:burlywood" OnMenuItemClick="Menu1_MenuItemClick1">
        <Items>
            <asp:MenuItem Text="Personal Detail"  Value="0" Selected="true"></asp:MenuItem>
            <asp:MenuItem Text="Professional Detail"  Value="1" ></asp:MenuItem>
            <asp:MenuItem Text="Loan Detail"  Value="2" ></asp:MenuItem>
        </Items>
    </asp:Menu>
    <asp:Label ID="Lblserdate" runat="server" Text=" "></asp:Label>
    <div>
    <asp:GridView ID="GV" runat="server" style="margin-left: 230px ; margin-top:30px" AutoGenerateColumns="False" Width="671px"  >
         <Columns>
                                <asp:BoundField DataField="ApplicationId" HeaderText="Id" />
                                <%--<asp:BoundField DataField="AccountNo" HeaderText="Account No." />--%>
                                <asp:BoundField DataField="NameOfApplicant" HeaderText="Customer Name " />
                                <%--<asp:BoundField DataField="PolicyNo" HeaderText="Policy No." />--%>
                                <asp:BoundField DataField="CustomerNo" HeaderText="Customer No." />
                                 <asp:BoundField DataField="LoanType" HeaderText="Loan Type." />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                  <asp:LinkButton ID="lnkview" runat="server" CommandArgument='<%#Eval("ApplicationId") %>' Onclick="lnkview_Click">View</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
    </asp:GridView>
        </div>
    <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server"> 
            <asp:Panel ID="Panel1" runat="server" style="border-style: solid ; margin-left:50px; margin-right:50px ; margin-top:20px; background-color:thistle" Width="1182px" >
    <table style="margin-top:0px">
        <tr>
            <td style="width: 87px; height: 60px;"></td>
            <td style="width: 281px; height: 60px;"><asp:Label ID="Lblcustno" runat="server" Text="Customer No" Font-Bold="True"></asp:Label> </td>
            <td style="width: 316px; height: 60px;"><asp:TextBox ID="Txtcustno" runat="server" Width="188px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox> </td>
            <td style="width: 320px; height: 60px;"><asp:Label ID="Lblca" runat="server" Text="Applicant Name" Font-Bold="True"> </asp:Label></td>
            <td style="width: 140px; height: 60px;"><asp:TextBox ID="Txtappname" runat="server"  Width="344px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox> </td>
            <td style="width: 198px; height: 60px;"><asp:Label ID="Lbldob" runat="server" Text="DOB" Font-Bold="True"></asp:Label></td>
            <td style="width: 231px; height: 60px;"><asp:TextBox ID="Txtdob" runat="server" Width="220px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 87px; height: 60px;"></td>
            <td style="width: 281px; height: 60px;"><asp:Label ID="LblGen" runat="server" Text="Gender" Font-Bold="True"></asp:Label></td>
            <td style="width: 316px"> <asp:TextBox ID="TxtGen" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
            <td style="width: 320px; height: 60px;"><asp:Label ID="Lblcusadd" runat="server" Text="Customer Address" Font-Bold="True"></asp:Label></td>
            <td style="width: 140px; height: 60px;"><asp:TextBox ID="Txtcusadd" runat="server" Width="344px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
            <td style="width: 198px; height: 60px;"><asp:Label ID="Lblperadd" runat="server" Text="Permanent Address" Font-Bold="True"></asp:Label></td>
            <td style="width: 231px; height: 60px;"><asp:TextBox ID="Txtperadd" runat="server" Width="220px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 87px; height: 60px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td style="width: 281px; height: 60px;"><asp:Label ID="Lblemail" runat="server" Text="Email" Font-Bold="True"></asp:Label> </td>
            <td style="width: 316px; height: 60px;"><asp:TextBox ID="Txtemail" runat="server" BorderColor="Black" style="width: 188px" ReadOnly="True" Height="25px"></asp:TextBox>
               <asp:RegularExpressionValidator  id="regEmail" ControlToValidate="Txtemail" Text="Enter valid email id"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  Runat="server" />
            </td>
            <td style="width: 320px; height: 60px;"><asp:Label ID="Lblpanno" runat="server" Text="Pan No."  Font-Bold="True"></asp:Label></td>
            <td style="width: 140px; height: 60px;"><asp:TextBox ID="Txtpanno" runat="server" Width="342px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
            <td style="width: 198px; height: 60px;"><asp:Label ID="Lblaadhar" runat="server" Text="Aadhaar No."  Font-Bold="True"></asp:Label></td>
            <td style="width: 231px; height: 60px;"><asp:TextBox ID="Txtaadhar" runat="server" Width="220px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>        
        </tr>
        <tr>
            <td style="width: 87px"></td>
            <td style="width: 281px ; height:60px;"><asp:Label ID="Lblmobile" runat="server" Text="Mobile No." Font-Bold="True"></asp:Label></td>
            <td style="width: 316px ; height:60px;"><asp:TextBox ID="Txtmo" runat="server" BorderColor="Black" Width="188px" ReadOnly="True" Height="25px"></asp:TextBox>
               <asp:RegularExpressionValidator ID="rev" runat="server" ErrorMessage="Enter valid phone number." ControlToValidate="Txtmo" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$" ></asp:RegularExpressionValidator>
            </td>
            <td style="width: 320px ;height:60px;"><asp:Label ID="LblCast" runat="server" Text="Cast" Font-Bold="True"></asp:Label></td>
            <td style="width: 255px ;height:60px;"> <asp:TextBox ID="Txtcast" runat="server" Width="338px" BorderColor="Black"  ReadOnly="True" Height="25px"></asp:TextBox></td>    
            <td style="width: 198px ; height:60px;"><asp:Label ID="Lblsubcast" runat="server" Text="Subcast" Font-Bold="True"></asp:Label></td>
            <td style="width: 231px; height:60px;"><asp:TextBox ID="Txtsubcast" runat="server" Width="220px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
        </tr>
    </table>
</asp:Panel>
</asp:View>  
<asp:View ID="View2" runat="server"> 
    <asp:Panel ID="Panel2" runat="server" style="border-style: solid ; margin-left:50px; margin-right:50px ; margin-top:20px; background-color: violet"  >
<table style="width: 1189px; height: 163px; margin-top:0px">
        <tr>
            <td style="width: 29px; height:60px;"></td>
            <td style="height:60px;"><asp:Label ID="Lbljob" runat="server" Text="Job" Font-Bold="True"></asp:Label> </td>
               <td style="width: 46px"><asp:TextBox ID="Txtjob" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox>  </td>     
            <td style="width: 100px; height:60px;"><asp:Label ID="Lbljobtype" runat="server" Text="Job Type" Font-Bold="True"></asp:Label> </td>
            <td style="width: 68px; height:60px;"><asp:TextBox ID="Txtjt" runat="server"  Width="195px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox> </td>
            <td style="width: 110px; height:60px;"><asp:Label ID="LblBusiness" runat="server" Text="Business" Font-Bold="True"></asp:Label> </td>
            <td><asp:TextBox ID="TxtBusiness" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox> </td>
        </tr>
        <tr>
            <td style="width: 29px; height:60px;"></td>
            <td style="height:60px;"><asp:Label ID="Lblbt" runat="server" Text="BusinessType" Font-Bold="True"></asp:Label> </td>
            <td style="height: 54px; width:46px"><asp:TextBox ID="Txtbt" runat="server" Width="189px" BorderColor="Black" Height="25px" ReadOnly="True"></asp:TextBox> </td>
            <td style="width: 100px; height:60px;"><asp:Label ID="Lblos" runat="server" Text="OurStaff" Font-Bold="True"></asp:Label> </td>
            <td style="width: 68px"><asp:TextBox ID="Txtos" runat="server" Width="195px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox>  </td>
            <td><asp:Label ID="LblBr" runat="server" Text="Branch Name" Font-Bold="True"></asp:Label></td>
            <td> <asp:TextBox ID="TxtBr" runat="server" BorderColor="Black" Width="181px" ReadOnly="True" Height="25px"></asp:TextBox></td>  
        </tr>
    <tr>
            <td style="width: 29px"></td>
         <td style="height:60px;"><asp:Label ID="Lblws" runat="server" Text="WeekerSection" Font-Bold="True"></asp:Label> </td>
        <td style="width: 46px"><asp:TextBox ID="Txtws" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox> </td>
            <td style="width: 184px; height:60px;"><asp:Label ID="Lbltws" runat="server" Text="Type Of Weeker section" Font-Bold="True"></asp:Label></td>
            <td style="width: 68px">
                <asp:TextBox ID="Txtweeker" runat="server" Width="195px" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox> </td>
    </tr>
 </table>
</asp:Panel>
</asp:View> 

 <asp:View ID="View3" runat="server">
            <asp:Panel ID="Panel4" runat="server" style="border-style: solid ; margin-left:50px; margin-right:50px ; margin-top:20px; background-color: violet" Width="1188px" >
                <table>
                    <tr>
                        <td style="width: 140px; height:60px;"><asp:Label ID="Label1" runat="server" Text="Loan Type" Font-Bold="True"></asp:Label> </td>
                   <td style="width: 225px"> <asp:TextBox ID="Txtloan" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                         <td style="width: 158px ;height:60px;"> <asp:Label ID="Lblpu" runat="server" Text="Purpose" Font-Bold="True"></asp:Label> </td>
                        <td > <asp:TextBox ID="Txtpu" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                         <td style="width: 190px; height:60px;"> <asp:Label ID="Lblgl" runat="server" Text="GL" Font-Bold="True" ></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtgl" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                   </tr>
                    <tr>
                         <td style="width: 140px;height:60px;"><asp:Label ID="Lblra" runat="server" Text="Required Amount" Font-Bold="True"></asp:Label> </td>
                        <td style="width: 225px"> <asp:TextBox ID="Txtra" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>     
                        <td style="width: 158px;height:60px;"> <asp:Label ID="Lblse" runat="server" Text="Security Type" Font-Bold="True" ></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtst" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                        <td style="width: 190px ; height:60px;"> <asp:Label ID="Lblsa" runat="server" Text="Security Amount" Font-Bold="True"></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtsa" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                       
                    </tr>
                    <tr>
                        <td style="width: 140px ; height:60px;"> <asp:Label ID="Lblgn" runat="server" Text="Guaranter Name" Font-Bold="True"></asp:Label> </td>
                        <td style="width: 225px ; height:60px;"> <asp:TextBox ID="Txtgn" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                        <td style="width: 158px ;height:60px;"> <asp:Label ID="Lblga" runat="server" Text="Guaranter Address" Font-Bold="True"></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtga" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                        <td style="width: 190px"> <asp:Label ID="lblgw" runat="server" Text="Guaranter Work" Font-Bold="True"></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtgw" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 140px ; height:60px;"> <asp:Label ID="Lblgn1" runat="server" Text="Guaranter Name" Font-Bold="True"></asp:Label> </td>
                        <td style="width: 225px ; height:60px;"> <asp:TextBox ID="Txtgn1" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                        <td style="width: 158px ;height:60px;"> <asp:Label ID="Lblga1" runat="server" Text="Guaranter Address" Font-Bold="True"></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtga1" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                        <td style="width: 190px"> <asp:Label ID="Lblgw1" runat="server" Text="Guaranter Work" Font-Bold="True"></asp:Label> </td>
                        <td> <asp:TextBox ID="Txtgw1" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 140px ; height:60px;"> <asp:Label ID="Lblin" runat="server" Text="Interest Rate" Font-Bold="True"></asp:Label> </td>
                        <td style="width: 225px ; height:60px;"> <asp:TextBox ID="Txtir" runat="server" BorderColor="Black" ReadOnly="True" Height="25px"></asp:TextBox></td>
                        <td><asp:Label ID="Lblreason" runat="server" Text="Reason" Font-Bold="True"></asp:Label> </td>
                        <td colspan="3"><asp:TextBox ID="Txtre" runat="server" Width="378px" BorderColor="Black" Height="25px"></asp:TextBox> </td>
                    </tr>
                </table>
 <table>
      <tr>
          <td style="width: 250px">&nbsp;</td>
          <td style="width: 83px"> <asp:Button ID="Butre" runat="server" Text="Rejected" Class="roundCorner" style="margin-left: 40px" Width="146px" Height="35px" OnClick="Butre_Click"/> </td>
         <td style="width: 125px"><asp:Button ID="Butap" runat="server" Text="Approve" Class="roundCorner" Width="115px"  Height="35px" style="margin-left:20px" OnClick="Butap_Click"/></td>  
          <td><asp:Button ID="Butapre" runat="server" Text="Recomm & Approve"   Class="roundCorner" Width="247px" Height="35px" style="margin-left:20px" OnClick="Butapre_Click" /></td>
         </tr>
      <asp:HiddenField ID="Hf" runat="server" />
 </table>

            </asp:Panel>
        </asp:View>
</asp:MultiView>


</asp:Content>

