<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewSignUp.aspx.cs" Inherits="Project.NewSignUo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">

        <div class="card text-center border border-dark text-body bg-light">
            <div class="card-header"><strong>SignUp</strong></div>

            <div class="card-body">
                 <div id="incorrectSignUp" class="alert alert-dismissible alert-danger" runat="server">
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            <strong>Oh No!</strong> <a href="#" onclick="window.location ='NewLogin.aspx';" class="alert-link">Try Logging in, </a> Email or Phone Already Exists
                        </div>
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
                    <div class="form-outline mb-4" >
                       
                        <asp:TextBox pattern=".{8,}" title="Password must be Eight or more characters" ID="password" type="Password" runat="server" CssClass="form-control" required></asp:TextBox>
                        <label class="form-label" for="password">Password</label>
                    </div>
                    <div class="d-grid gap-2">
                        <!-- Submit button -->
                        
                        <asp:Button ID="signupbutton" runat="server" Text="Sign Up" type="submit" class="btn btn-primary btn-block" OnClick="signupbutton_Click" />
                    </div>

                </form>
            </div>
            <div class="card-footer text-muted d-grid gap-2">
                Already Registered?<br />
                <button onclick="window.location ='NewLogin.aspx';" type="button" class="btn btn-info btn-block mt-2" runat="server">Sign In</button>
            </div>
        </div>
    </div>

</asp:Content>
