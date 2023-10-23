<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMst.Master" AutoEventWireup="true" CodeBehind="EmpAttendanceDetails.aspx.cs" Inherits="SchoolManagementSystem.Admin.EmpAttendanceDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('../image/background.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
        <div class="container p-md-4 m-sm-4">
            <div>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
            <h3 class="text-center">Chi tiết chuyên cần của giảng viên</h3>

            <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                <div class="col-md-6">
                    <label for="ddlClass"></label>
                    <label for="ddlTeacher">Giảng viên</label>
                    <asp:DropDownList ID="ddlTeacher" runat="server" CssClass="form-control"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Yêu cầu chọn giảng viên." ControlToValidate="ddlTeacher" Display="Dynamic" ForeColor="Red" InitialValue="Chọn giảng viên" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <label for="ddlSubject">Tháng</label>
                    <asp:TextBox ID="txtMonth" CssClass="form-control" runat="server" TextMode="Month" required></asp:TextBox>
                </div>

            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-3 col-md-offset-2 mb-3">
                    <asp:Button ID="btnCheckAttendance" runat="server" Text="Kiểm tra chuyên cần" CssClass="btn btn-primary btn-block" BackColor="#5558C9"  OnClick="btnCheckAttendance_Click" />
                </div>
            </div>
            <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Không có dữ liệu để hiện thị!" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Số thứ tự">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Tên">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <%--asp:BoundField DataField="Status" HeaderText="Status">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </%asp:BoundField--%>
                            <asp:TemplateField HeaderText="Trạng thái">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="label1" Text='<%# Boolean.Parse( Eval("Status").ToString()) ? "Có mặt" : "Vắng mặt" %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Date" HeaderText="Ngày" DataFormatString="{0:dd MM yyyy}">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <HeaderStyle BackColor="#5558C9" ForeColor="White" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
