<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <div>
       <div style="font-size:x-large" align="center"> Student Info Manage Form</div>
       <table class="nav-justified">
           <tr>
               <td class="modal-sm" style="width: 237px">&nbsp;</td>
               <td class="modal-sm" style="width: 270px">Student ID</td>
               <td>
                   <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="188px"></asp:TextBox>
                   <asp:Button ID="Button5" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="26px" OnClick="Button5_Click" style="margin-right: 0; margin-top: 0" Text="GET" Width="100px" />
               </td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 237px">&nbsp;</td>
               <td class="modal-sm" style="width: 270px">Student Name</td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="188px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 237px">&nbsp;</td>
               <td class="modal-sm" style="width: 270px">Address</td>
               <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" Width="160px">
                       <asp:ListItem>USA</asp:ListItem>
                       <asp:ListItem>Lithuania</asp:ListItem>
                       <asp:ListItem>Latvia</asp:ListItem>
                       <asp:ListItem>Poland</asp:ListItem>
                       <asp:ListItem>United Kingdom</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 237px; height: 24px"></td>
               <td class="modal-sm" style="width: 270px; height: 24px">Age</td>
               <td style="height: 24px">
                   <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="188px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 237px">&nbsp;</td>
               <td class="modal-sm" style="width: 270px">Contact</td>
               <td>
                   <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="188px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 237px">&nbsp;</td>
               <td class="modal-sm" style="width: 270px">&nbsp;</td>
               <td>
                   <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="26px" OnClick="Button1_Click" style="margin-right: 0" Text="INSERT" Width="117px" />
                   <asp:Button ID="Button2" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="26px" OnClick="Button2_Click" style="margin-right: 0; margin-top: 0" Text="UPDATE" Width="100px" />
                   <asp:Button ID="Button3" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="26px" OnClick="Button3_Click" OnClientClick="return confirm('Are you sure to delete?');" style="margin-right: 0; margin-top: 0" Text="DELETE" Width="100px" />
                   <asp:Button ID="Button4" runat="server" BackColor="#CC00FF" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="26px" OnClick="Button4_Click" style="margin-right: 0; margin-top: 0" Text="SEARCH" Width="100px" />
               </td>
           </tr>
       </table>
       <table class="nav-justified">
           <tr>
               <td class="modal-sm" style="width: 236px; height: 20px"></td>
               <td class="modal-sm" style="width: 272px; height: 20px"></td>
               <td style="height: 20px"></td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 236px">&nbsp;</td>
               <td class="modal-sm" style="width: 272px">&nbsp;</td>
               <td>
                   <asp:GridView ID="GridView1" runat="server" style="margin-left: 0px" Width="423px">
                   </asp:GridView>
               </td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 236px">&nbsp;</td>
               <td class="modal-sm" style="width: 272px">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td class="modal-sm" style="width: 236px">&nbsp;</td>
               <td class="modal-sm" style="width: 272px">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
       </table>
       <br />
   </div>
</asp:Content>
