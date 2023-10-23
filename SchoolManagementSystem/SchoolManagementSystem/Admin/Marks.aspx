<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="SchoolManagementSystem.Admin.Marks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('../image/background.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
        <div class="container p-md-4 m-sm-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Thêm điểm</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="ddlClass">Lớp</label>
                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yêu cầu chọn lớp." ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Chọn lớp" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="ddlSubject">Môn học</label>
                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control" ></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Yêu cầu chọn môn học." ControlToValidate="ddlSubject" Display="Dynamic" ForeColor="Red" InitialValue="Chọn môn học" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-12 mt-2">
                    <label for="txtRoll">Mã số sinh viên</label>
                    <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Nhập mã số sinh viên" TextMode="Number" required></asp:TextBox>

                </div>
                <div class="col-md-12 mt-2">
                    <label for="txtStudMarks">Điểm</label>
                    <asp:TextBox ID="txtStudMarks" runat="server" CssClass="form-control" placeholder="Nhập điểm" TextMode="Number" required></asp:TextBox>

                </div>
                <div class="col-md-12 mt-2">
                    <label for="txtOutOfMarks">Thang điểm tối đa</label>
                    <asp:TextBox ID="txtOutOfMarks" runat="server" CssClass="form-control" placeholder="Nhập thang điểm tối đa" TextMode="Number" required></asp:TextBox>

                </div>

            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Thêm điểm" OnClick="btnAdd_Click" />
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Không có dữ liệu để hiển thị!" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" AllowPaging="True" PageSize="4" DataKeyNames="ExamId" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Số thứ tự" ReadOnly="True">
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Lớp">
                                <edititemtemplate>
                                    <asp:DropDownList ID="ddlClassGv" runat="server" DataSourceID="SqlDataSource1" DataTextField="ClassName" DataValueField="ClassId" SelectedValue='<%# Eval("ClassId") %>' CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClassGv_SelectedIndexChanged"  >
                                        <asp:ListItem>Chọn lớp</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolCS %>" SelectCommand="SELECT * FROM [Class]"></asp:SqlDataSource>
                                </edititemtemplate>
                                <itemtemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                </itemtemplate>
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Môn học">
                                <edititemtemplate>
                                    <asp:DropDownList ID="ddlSubjectGv" runat="server" CssClass="form-control">
                                    </asp:DropDownList>
                                </edititemtemplate>
                                <itemtemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                                </itemtemplate>
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mã số sinh viên">
                                <edititemtemplate>
                                    <asp:TextBox ID="txtRollNoGv" runat="server" CssClass="form-control" Text='<%# Eval("RollNo") %>' TextMode="Number"></asp:TextBox>
                                </edititemtemplate>
                                <itemtemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("RollNo") %>'></asp:Label>
                                </itemtemplate>
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Điểm">
                                <edititemtemplate>
                                    <asp:TextBox ID="txtStudMarksGv" runat="server" CssClass="form-control" Text='<%# Eval("TotalMarks") %>' TextMode="Number"></asp:TextBox>
                                </edititemtemplate>
                                <itemtemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("TotalMarks") %>'></asp:Label>
                                </itemtemplate>
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Thang điểm tối đa">
                                <edititemtemplate>
                                    <asp:TextBox ID="txtOutOfMarksGv" runat="server" CssClass="form-control" Text='<%# Eval("OutOfMarks") %>' TextMode="Number"></asp:TextBox>
                                </edititemtemplate>
                                <itemtemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("OutOfMarks") %>'></asp:Label>
                                </itemtemplate>
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:TemplateField>
                            <asp:CommandField CausesValidation="False" HeaderText="Thao tác" ShowEditButton="True" >
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:CommandField>
                        </columns>
                        <headerstyle backcolor="#5558C9" forecolor="White" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
