<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome to Our Site!</h2>
    <p>We just need to collect some quick information...</p>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblBirthday" runat="server" Text="Birthday:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtBirthday" runat="server" ErrorMessage="Birthday is a required field!"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtEmail" runat="server" ErrorMessage="Email is a required field!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnSumbit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

