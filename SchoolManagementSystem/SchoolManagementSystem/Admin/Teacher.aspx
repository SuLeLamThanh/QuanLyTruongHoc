<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="SchoolManagementSystem.Admin.Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('../image/background.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
        <div class="container p-md-4 m-sm-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Thêm giảng viên</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="txtName">Tên</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Nhập tên giảng viên" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Tên phải ở dạng ký tự" ForeColor="Red" ValidationExpression="^[A-ZÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸĐ][a-zàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđ]*(?:[ ][A-ZÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸĐ][a-zàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđ]*)*$" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtName"></asp:RegularExpressionValidator>
                </div>
                <div class="col-md-6">
                    <label for="txtSubject">Ngày sinh</label>
                    <asp:TextBox ID="txtDoB" runat="server" CssClass="form-control" TextMode="Date" required></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="ddlGender">Giới tính</label>
                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Chọn giới tính</asp:ListItem>
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                        <asp:ListItem>Khác</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yêu cầu chọn giới tính!" ForeColor="Red" ControlToValidate="ddlGender" Display="Dynamic" SetFocusOnError="true" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="txtMobile">Số điện thoại</label>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" TextMode="Number" placeholder="Nhập số điện thoại 10 chữ số" required></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Số điện thoại không hợp lệ" ForeColor="Red" ValidationExpression="[0-9]{10}" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtMobile"></asp:RegularExpressionValidator>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Nhập tài khoản Email" TextMode="Email" required></asp:TextBox>

                </div>
                <div class="col-md-6">
                    <label for="txtPassword">Mật khẩu</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Nhập mật khẩu" TextMode="Password" required></asp:TextBox>
                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-12">
                    <label for="txtAddress">Địa chỉ</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Nhập địa chỉ" TextMode="Multiline" required></asp:TextBox>

                </div>
            </div>

            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Thêm giảng viên" OnClick="btnAdd_Click" />
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Không có dữ liệu để hiện thị!" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" PageSize="4" DataKeyNames="TeacherId" OnRowDeleting="GridView1_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Số thứ tự" ReadOnly="True">
                                <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Tên">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Số điện thoại">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtMobile" runat="server" Text='<%# Eval("Mobile") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblMobile" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Mật khẩu">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPassword" runat="server" Text='<%# Eval("Password") %>' CssClass="form-control" Width="100px"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblPassword" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Địa chỉ">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>' CssClass="form-control" Width="100px" TextMode="MultiLine"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="False" HeaderText="Thao tác" ShowEditButton="True" ShowDeleteButton="true">
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
