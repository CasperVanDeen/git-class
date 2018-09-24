<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Validation.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<head runat="server">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <title>Validation</title>
</head>
<body class=" alert-dark">
    <form class="form-group" id="form1" runat="server">
        <div class="well well-sm">&nbsp;</div>
        <div class="row container-fluid">

            <div class="col-sm-3"> </div>
                 <div class="container col-sm-4 jumbotron">
                     <div class="container col-sm-11 form-group">
                         
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Double" ForeColor="Red" HeaderText="&amp;nbsp;Errors on page : " CssClass="alert alert-danger" />
                     
            
            <asp:Label CssClass="text-success" ID="LabelHeader" runat="server" Font-Size="X-Large" Text="Ex-Terminator.dk"></asp:Label>
            <br />
            <asp:Label CssClass=" text-secondary" ID="LabelCustomer" runat="server" Text="&lt; Home / New Customer"></asp:Label>
           <br /><br />
            <asp:Label ID="LabelFirstName" runat="server" Text="First Name:"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ControlToValidate="TextBoxFirstName" EnableClientScript="False" ErrorMessage="First Name is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            
            <br />
                         
            <asp:TextBox CssClass="form-control" ID="TextBoxFirstName" runat="server"></asp:TextBox>
            
            
            <asp:Label ID="LabelLastName" runat="server" Text="Last Name:"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="TextBoxLastName" EnableClientScript="False" ErrorMessage="Last Name is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxLastName" runat="server"></asp:TextBox>
            
            <asp:Label ID="LabelLastName0" runat="server" Text="Street and Number:"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorStreet" runat="server" ControlToValidate="TextBoxStreet" EnableClientScript="False" ErrorMessage="Street and number is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxStreet" runat="server"></asp:TextBox>
            
            
            <asp:Label ID="LabelLastZip" runat="server" Text="Zip Code:"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorZip" runat="server" ControlToValidate="TextBoxZip" EnableClientScript="False" ErrorMessage="Zip Code is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorZip" runat="server" ControlToValidate="TextBoxZip" EnableClientScript="False" ErrorMessage="Zip Code must contain 4 numbers" ForeColor="Red" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
            
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxZip" runat="server" Rows="1"></asp:TextBox>
            
            <asp:Label ID="LabelLastTown" runat="server" Text="Town:"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorTown" runat="server" ControlToValidate="TextBoxTown" EnableClientScript="False" ErrorMessage="Town is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxTown" runat="server"></asp:TextBox>
            
            <asp:Label ID="LabelLastEmail" runat="server" Text="Email:"></asp:Label>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Email is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorZip0" runat="server" ControlToValidate="TextBoxEmail" EnableClientScript="False" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server" EnableTheming="True" TextMode="Email"></asp:TextBox>
            
            <asp:Label ID="LabelPassword" runat="server" Text="Password:"></asp:Label>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Password is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="TextBoxPassword" EnableClientScript="False" ErrorMessage="Password must have between 4-8 letters and numbers" ForeColor="Red" ValidationExpression="^\w{4,8}"></asp:RegularExpressionValidator>
           
            <asp:TextBox CssClass="form-control" ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
            
            <asp:Label ID="LabelPasswordConfirm" runat="server" Text="Confirm Password:"></asp:Label>

        
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="TextBoxConfirmPassword" EnableClientScript="False" ErrorMessage="Confirm password is missing" Font-Bold="False" ForeColor="Red">#</asp:RequiredFieldValidator>
            
            <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" EnableClientScript="False" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            
            <br />
            <asp:TextBox CssClass="form-control" ID="TextBoxConfirmPassword" runat="server" OnTextChanged="TextBoxConfirmPassword_TextChanged" TextMode="Password"></asp:TextBox>

        
            <br />
            <asp:Button ID="ButtonCreate" runat="server" Text="Submit" CssClass="btn btn-success float-right" />
                         <span class="float-lg-right">&nbsp;</span>
                         <a href="index.aspx" class="btn btn-dark text-white float-sm-right"> Reset</a>
                         

                         

</div>         
                     <i class=" text-left text-dark">Powered by: Stanislav Jamnicky</i>
         
            </div>
            <div class="col-sm-3"> 

            </div>
        </div>
        
    </form>
</body>
</html>
