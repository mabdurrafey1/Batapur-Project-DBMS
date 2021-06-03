<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="Project.NewLogin" %>

<%@ MasterType VirtualPath="~/MasterPage.Master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container mt-5">
        <div class="card text-center border border-dark text-body bg-light">
            <div class="card-header"><strong>Sign In</strong></div>
            <div class="card-body">
                     <div id="incorrectSignIn" class="alert alert-dismissible alert-danger" runat="server">
                            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
                            <strong>Oh No!,</strong> Email or Password is Incorrect
                        </div>
                <form id="SignIn" runat="server">
                    <!-- 2 column grid layout with text inputs for the first and last names -->

                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <asp:TextBox  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Please enter a valid email!" ID="email" runat="server" CssClass="form-control" required></asp:TextBox>
                        <label class="form-label" for="emailToRegister">Email address</label>
                    </div>
                    <!-- Password input -->
                    <div class="form-outline mb-4">
                        <asp:TextBox   pattern=".{8,}" title="Password must be Eight or more characters" ID="password" type="Password" runat="server" CssClass="form-control" required></asp:TextBox>
                        <label class="form-label" for="password">Password</label>
                    </div>
                    <div class="d-grid gap-2">
                        <!-- Submit button -->
                        <asp:Button ID="Signinbutton" runat="server" Text="Sign In" type="submit" class="btn btn-primary btn-block" OnClick="Signin_Click" />
                    </div>

                </form>
            </div>
            <div class="card-footer text-muted ">
                Not Registered?<br />
                <div class="d-grid gap-2">
                    <button onclick="window.location ='NewSignUp.aspx';" type="button" class="btn btn-info btn-block mt-2" runat="server">Sign Up</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
