﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMst.Master" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="SchoolManagementSystem.Teacher.TeacherHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="background-image:url('../image/background.png'); width:100%; height:720px; background-repeat:no-repeat; background-size:cover;background-attachment:fixed">
     <div class="container p-md-4 m-sm-4">
         <div>
             <asp:Label ID="lblMsg" runat="server"></asp:Label>
         </div>
         <h2 class="text-center">Trang chủ của giảng viên</h2>
     </div>
 </div>
</asp:Content>
