<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <link href="Mdbootstrap/css/mdb.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-5">
        <div class="card text-center border border-dark text-body bg-light">
            <div class="card-header">SignUp</div>
            <div class="card-body">
                <form id="SignUp" runat="server">
                    <!-- 2 column grid layout with text inputs for the first and last names -->
                    <div class="row mb-4">
                        <div class="col">
                            <div class="form-outline">
                                <asp:TextBox ID="firstName" runat="server" CssClass="form-control" required></asp:TextBox>
                                <label class="form-label" for="firstName">First name</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-outline">
                                <asp:TextBox ID="lastName" runat="server" CssClass="form-control" required></asp:TextBox>
                                <label class="form-label" for="lastName">Last name</label>
                            </div>
                        </div>
                    </div>

                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <asp:TextBox pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email!" ID="emailToRegister" runat="server" CssClass="form-control" required></asp:TextBox>
                        <label class="form-label" for="emailToRegister">Email address</label>
                    </div>

                    <!-- Phone input -->
                    <div class="form-outline mb-4">
                        <asp:TextBox ID="phone" runat="server" CssClass="form-control" required></asp:TextBox>
                        <label class="form-label" for="phone">Phone</label>
                    </div>
                    <!-- Password input -->
                    <div class="form-outline mb-4">
                        <asp:TextBox pattern=".{8,}" title="Password must be Eight or more characters" ID="password" type="Password" runat="server" CssClass="form-control" required></asp:TextBox>
                        <label class="form-label" for="password">Password</label>
                    </div>

                    <!-- Submit button -->
                    <asp:Button ID="signupbutton" runat="server" Text="Sign Up" type="submit" class="btn btn-primary btn-block" OnClick="signupbutton_Click" />


                </form>
            </div>
            <div class="card-footer text-muted ">
                Already Registered?<br />
                <Button onclick="window.location ='Login.aspx';" type="button" class="btn btn-info btn-block mt-2" runat="server">Sign In</Button>
            </div>


        </div>
    <script src="Mdbootstrap/js/mdb.min.js"></script>
</body>
</html>
