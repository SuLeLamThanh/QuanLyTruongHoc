<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="ClassFees.aspx.cs" Inherits="SchoolManagementSystem.Admin.ClassFees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('../image/background.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
        <div class="container p-md-4 m-sm-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Thêm học phí</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="ddlClass">Lớp học</label>
                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" >
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cần chọn lớp học." ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Chọn lớp" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="txtFeeAmounts">Học phí hàng năm</label>
                    <asp:TextBox ID="txtFeeAmounts" runat="server" CssClass="form-control" placeholder="Nhập số tiền học phí" TextMode="Number" required></asp:TextBox>
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Thêm học phí" OnClick="btnAdd_Click" />
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Không có dữ liệu để hiện thị!" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" PageSize="4" DataKeyNames="feesId">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Số thứ tự" ReadOnly="True">
                                <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ClassName" HeaderText="Tên lớp học" ReadOnly="True">
                                <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Học phí hàng năm">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("FeesAmount") %>' CssClass="form-control"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("FeesAmount") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="False" HeaderText="Thao tác" ShowDeleteButton="True" ShowEditButton="True">
                                <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle  BackColor="#5558C9" ForeColor="White"/>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
