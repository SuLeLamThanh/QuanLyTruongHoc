<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MarkDetailUserControl.ascx.cs" Inherits="SchoolManagementSystem.MarkDetailUserControl" %>
<div style="background-image: url('../image/download.png'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed">
    <div class="container p-md-4 m-sm-4">
        <div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
        <h3 class="text-center">Marks Detail</h3>

        <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
            <div class="col-md-6">
                <label for="ddlClass">Class</label>
                <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Class is required." ControlToValidate="ddlClass" Display="Dynamic" ForeColor="Red" InitialValue="Select Class" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-6">
                <label for="txtRoll">Student Roll Number</label>
                <asp:TextBox ID="txtRoll" runat="server" CssClass="form-control" placeholder="Enter Student Roll Number" TextMode="Number" required></asp:TextBox>
            </div>
        </div>
        <div class="row mb-3 mr-lg-5 ml-lg-5 ">
            <div class="col-md-3 col-md-offset-2 mb-3">
                <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558C9" Text="Get Mark" OnClick="btnAdd_Click" />
            </div>
        </div>
        <div class="row mb-3 mr-lg-5 ml-lg-5 ">
            <div class="col-md-12">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-bordered" EmptyDataText="No record to Display!" AutoGenerateColumns="False" AllowPaging="True" PageSize="8" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <columns>
                        <asp:BoundField DataField="Sr.No" HeaderText="Sr.No">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ExamId" HeaderText="ExamId">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ClassName" HeaderText="Class">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SubjectName" HeaderText="Subject">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RollNo" HeaderText="Roll Number">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TotalMarks" HeaderText="Total Marks">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OutOfMarks" HeaderText="Out Of Marks">
                            <headerstyle horizontalalign="Center" />
                            <itemstyle horizontalalign="Center" />
                        </asp:BoundField>
                        
                    </columns>
                    <headerstyle backcolor="#5558C9" forecolor="White" />
                </asp:GridView>
            </div>
        </div>
    </div>
</div>