<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentAttendanceUC.ascx.cs" Inherits="SchoolManagementSystem.StudentAttendanceUC" %>
<div style="background-image: url('../image/background.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
    <div class="container p-md-4 m-sm-4">
        <div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
        <h3 class="text-center">Chi tiết chuyên cần của sinh viên</h3>

        <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
            <div class="col-md-6">
                <label for="ddlClass">Lớp</label>
                <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yêu cầu chọn lớp." ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Chọn lớp" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="ddlSubject">Môn học</label>
                <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control"></asp:DropDownList>
                <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject is required." ControlToValidate="ddlSubject" Display="Dynamic" ForeColor="Red" InitialValue="Select Subject" SetFocusOnError="True"></asp:RequiredFieldValidator>--%>
            </div>
        </div>
        <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
            <div class="col-md-6">
                <label for="txtRollNo">Mã số sinh viên</label>
                <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" placeholder="Nhập mã số sinh viên"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Yêu cầu nhập mã số sinh viên." ControlToValidate="txtRollNo" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="txtMonth">Tháng</label>
                <asp:TextBox ID="txtMonth" runat="server" CssClass="form-control" TextMode="Month"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Yêu cầu nhập tháng." ControlToValidate="txtMonth" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3 mr-lg-5 ml-lg-5 ">
            <div class="col-md-3 col-md-offset-2 mb-3">
                <asp:Button ID="btnCheckAttendance" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Kiểm tra chuyên cần" OnClick="btnCheckAttendance_Click" />
            </div>
        </div>
        <div class="row mb-3 mr-lg-5 ml-lg-5 ">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="Không có dữ liệu để hiển thị!" AutoGenerateColumns="False">
                    <Columns>
                            <asp:BoundField DataField="Sr.No" HeaderText="Số thứ tự">
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Tên">
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>
                            <%--asp:BoundField DataField="Status" HeaderText="Status">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </%asp:BoundField--%>
                            <asp:TemplateField HeaderText="Tình trạng">
                                <itemtemplate>
                                    <asp:Label runat="server" ID="label1" Text='<%# Boolean.Parse( Eval("Status").ToString()) ? "Có mặt" : "Vắng mặt" %>'></asp:Label>
                                </itemtemplate>
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Date" HeaderText="Ngày" DataFormatString="{0:dd MM yyyy}">
                                <headerstyle horizontalalign="Center" />
                                <itemstyle horizontalalign="Center" />
                            </asp:BoundField>
                </Columns>
                    <headerstyle backcolor="#5558C9" forecolor="White" />
                </asp:GridView>
            </div>
        </div>
    </div>
</div>
