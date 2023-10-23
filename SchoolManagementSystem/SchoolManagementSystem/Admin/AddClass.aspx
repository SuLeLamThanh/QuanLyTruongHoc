<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="SchoolManagementSystem.Admin.AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('../image/background.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
        <div class="container p-md-4 m-sm-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Thêm lớp học</h3>
            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-12">
                    <label for="txtClass">Tên lớp học</label>
                    <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" placeholder="Nhập tên lớp học" required></asp:TextBox>
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Thêm lớp học" OnClick="btnAdd_Click" />
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" DataKeyNames="ClassId" AutoGenerateColumns="False" EmptyDataText="Không có dữ liệu để hiển thị!" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" PageSize="4">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Số thứ tự" ReadOnly="True">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Lớp học">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtClassEdit" runat="server" Text='<%# Eval("ClassName") %>' CssClass="form-control "></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblClassName" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="False" HeaderText="Thao tác" ShowEditButton="True" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White"/>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
