﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="jacoolcoffee.Login" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Log In / Sign Up </title>
    <link rel="stylesheet" href="Content/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="section">
            <div class="container">
                <div class="row full-height justify-content-center">
                    <div class="col-12 text-center align-self-center py-5">
                        <div class="section pb-5 pt-5 pt-sm-2 text-center">
                            <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
                            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
                            <label for="reg-log"></label>
                            <div class="card-3d-wrap mx-auto">
                                <div class="card-3d-wrapper">
                                    <div class="card-front">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Log In</h4>
                                                <div class="form-group">
                                                    <asp:TextBox type="email" runat="server" name="logemail" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off"></asp:TextBox>
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <asp:TextBox TextMode="password" runat="server" name="logpass" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off"></asp:TextBox>
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                    </div>
                                                <a href="#" class="btn mt-4">Login</a>
                                                <p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot your password?</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-back">
                                        <div class="center-wrap">
                                            <div class="section text-center">
                                                <h4 class="mb-4 pb-3">Sign Up</h4>
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" type="text" name="logname" class="form-style" placeholder="Your Full Name" id="logname" autocomplete="off"></asp:TextBox>
                                                    <i class="input-icon uil uil-user"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <asp:TextBox runat="server" type="email" name="logemail" class="form-style" placeholder="Your Email" id="Email1" autocomplete="off"></asp:TextBox>
                                                    <i class="input-icon uil uil-at"></i>
                                                </div>
                                                <div class="form-group mt-2">
                                                    <asp:TextBox runat="server" type="password" name="logpass" class="form-style" placeholder="Your Password" id="Password1" autocomplete="off"></asp:TextBox>
                                                    <i class="input-icon uil uil-lock-alt"></i>
                                                </div>
                                                <a href="#" class="btn mt-4">Sign Up</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
