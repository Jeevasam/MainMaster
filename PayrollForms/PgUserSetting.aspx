<%@ Page Title="" Language="C#" MasterPageFile="~/PayrollForms/MasterPageSurya.master" AutoEventWireup="true" CodeFile="PgUserSetting.aspx.cs" Inherits="PayrollForms_PgTreeViewSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">

    <div>
        <h5 class="card-title">User Settings</h5>
    </div>

    <div class="row col-lg-12 col-xl-12">

        <div id="" class=" col-lg-3 col-xl-3">
            <asp:Label ID="lblusername" runat="server" CssClass="label-conrol col-sm-12 lblnew" Text="User Name"></asp:Label>
            <div class="form-group">
                <div class="col-lg-12 col-xl-12">
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control form-control-sm txtnew" placeholder="User Name" autocomplete="off"></asp:TextBox>
                </div>
            </div>

        </div>

        <div id="" class=" col-lg-2 col-xl-2">
            <asp:Label ID="lblpassword" runat="server" CssClass="label-conrol col-sm-12 lblnew" Text="password"></asp:Label>
            <div class="form-group">
                <div class="col-lg-12 col-xl-12">
                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control form-control-sm txtnew" autocomplete="off" TextMode="Password"></asp:TextBox>
                </div>
            </div>

        </div>

        <div id="" class=" col-lg-2 col-xl-2">
            <asp:Label ID="Label1" runat="server" CssClass="label-conrol col-sm-12 lblnew"></asp:Label>
            <div class="form-group">
                <div class="col-lg-12 col-xl-12">
                    <asp:Button ID="btnview" runat="server" CssClass="btn btn-primary" Text="View" Width="120" Style="font-size: smaller" OnClick="btnview_Click" />
                </div>
            </div>
        </div>

        <div id="" class=" col-lg-2 col-xl-2">
            <asp:Label ID="Label2" runat="server" CssClass="label-conrol col-sm-12 lblnew"></asp:Label>
            <div class="form-group">
                <div class="col-lg-12 col-xl-12">
                    <asp:Button ID="btnclose" runat="server" CssClass="btn btn-primary" Text="Close" Width="120" Style="font-size: smaller" PostBackUrl="~/PayrollForms/HomepageSurya.aspx" />
                </div>
            </div>
        </div>

    </div>

    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px">

        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" ShowCheckBoxes="All">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />

            <Nodes>
                <asp:TreeNode Expanded="False" Text=" Enrollment" Value="Enrollment">
                    <asp:TreeNode Expanded="False" Text=" Master" Value=" Master">
                        <asp:TreeNode Text=" Company Master" Value="CompanyMaster" Target="child"></asp:TreeNode>
                        <asp:TreeNode Text=" LCM Client" Value="LCM Client" Target="child"></asp:TreeNode>
                        <asp:TreeNode Text=" Prinicipal PEM Companies" Value=" Prinicipal PEM Companies" Target="child"></asp:TreeNode>
                        <asp:TreeNode Text=" CC Client Entry" Value=" CC Client Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" Department Master" Value=" Department Master"></asp:TreeNode>
                        <asp:TreeNode Text=" Designation Master" Value=" Designation Master"></asp:TreeNode>
                        <asp:TreeNode Text=" Salary Grade Master" Value="Salary Grade Master"></asp:TreeNode>
                        <asp:TreeNode Text=" State &amp; City" Value="State &amp; City"></asp:TreeNode>
                        <asp:TreeNode Text=" Education" Value="Education"></asp:TreeNode>
                        <asp:TreeNode Text=" Bank Master" Value="Bank Master"></asp:TreeNode>
                        <asp:TreeNode Text=" Account Peroid" Value="Account Peroid"></asp:TreeNode>
                        <asp:TreeNode Text=" Invoice Value Format" Value="Invoice Value Format"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" Data Master" Value="Data Master">
                    <asp:TreeNode Expanded="False" Text=" Employee Master" Value=" Employee Master">
                        <asp:TreeNode Text=" Candidate Application" Value="Candidate Application"></asp:TreeNode>
                        <asp:TreeNode Text=" Interview Schedule" Value="Interview Schedule"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Company Details" Value="Employee Company Details"></asp:TreeNode>
                        <asp:TreeNode Text=" Import Employee Data" Value="Import Employee Data"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Transfer" Value="Employee Transfer"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Relieving" Value="Employee Relieving"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee View And Edit" Value="Employee View And Edit"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" Organize" Value="Organize">
                    <asp:TreeNode Expanded="False" Text=" Entries" Value="Entries">
                        <asp:TreeNode Text=" Daily Attendance Entry" Value="Daily Attendance Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Attendance Entry" Value="Monthly Attendance Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" Weekly Attendance Entry" Value="Weekly Attendance Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" Piece Rate &amp; Measure Of Units" Value=" Piece Rate &amp; Measure Of Units"></asp:TreeNode>
                        <asp:TreeNode Text=" Time/Auto Machine Subscriptions" Value="Time/Auto Machine Subscriptions"></asp:TreeNode>
                        <asp:TreeNode Text=" Attendance View And Edit" Value="Attendance View And Edit"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Payroll" Value="Payroll">
                        <asp:TreeNode Text=" Allowances" Value="Allowances"></asp:TreeNode>
                        <asp:TreeNode Text=" Deductions" Value="  Deductions"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Wage Generate" Value="Monthly Wage Generate"></asp:TreeNode>
                        <asp:TreeNode Text=" Weekly Wage Generate" Value=" Weekly Wage Generate"></asp:TreeNode>
                        <asp:TreeNode Text=" Piece rate &amp; Measurement of units" Value="Piece rate &amp; Measurement of units"></asp:TreeNode>
                        <asp:TreeNode Text=" Daily Wage Generate" Value="Daily Wage Generate"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Generate Reports-C" Value="Generate Reports-C"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" LCM Invoices" Value="LCM Invoice">
                        <asp:TreeNode Text=" Regular Bill" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" Auto Bill" Value="Auto Bill"></asp:TreeNode>
                        <asp:TreeNode Text=" Invoice Value Setting" Value="Invoice Value Setting"></asp:TreeNode>
                        <asp:TreeNode Text=" Department Value Setting" Value="Department Value Setting"></asp:TreeNode>
                        <asp:TreeNode Text=" Mandays" Value="Mandays"></asp:TreeNode>
                        <asp:TreeNode Text=" Piece-rate Wages" Value="Piece-rate Wages"></asp:TreeNode>
                        <asp:TreeNode Text=" Weekly Wages" Value="Weekly Wages"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Generate Reports-J" Value="Generate Reports-J"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" Account" Value="Account">
                    <asp:TreeNode Expanded="False" Text=" Cash Register" Value="Cash Register">
                        <asp:TreeNode Text=" Bill Register" Value="Bill Register"></asp:TreeNode>
                        <asp:TreeNode Text=" GST Register" Value="GST Register"></asp:TreeNode>
                        <asp:TreeNode Text=" Payment Entry" Value="Payment Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" GST Entry" Value="GST Entry"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Petty Cash" Value="Petty Cash">
                        <asp:TreeNode Text=" Advance Request" Value="Advance Request"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Statement" Value="Monthly Statement"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash On Hand" Value="Cash On Hand"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash In Entry" Value="Cash In Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash In Report" Value="Cash In Report"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash Out Entry" Value=" Cash Out Entry"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash Out Report" Value="Cash Out Report"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" CA Entry" Value="CA Entry">
                        <asp:TreeNode Expanded="False" Text=" Other Income Entry" Value="Other Income Entry"></asp:TreeNode>
                        <asp:TreeNode Expanded="False" Text=" Expenses Entry" Value="Expenses Entry"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Taxes" Value="Taxes">
                        <asp:TreeNode Text=" Generate GST Challan" Value="Generate GST Challan"></asp:TreeNode>
                        <asp:TreeNode Text=" EMP TDS" Value="EMP TDS"></asp:TreeNode>
                        <asp:TreeNode Text=" Invoice TDS" Value="Invoice TDS"></asp:TreeNode>
                        <asp:TreeNode Text=" Client Wise Form 16" Value="Client Wise Form 16"></asp:TreeNode>
                        <asp:TreeNode Text=" Client Wise Form 26A" Value="Client Wise Form 26A"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" Store Maintenance" Value="Store Maintenance"></asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" E-Bills" Value="E-Bills"></asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" My Reports" Value="My Reports">
                    <asp:TreeNode Expanded="False" Text=" ON Roll PEM Reports" Value="ON Roll PEM Reports">
                        <asp:TreeNode Text=" Half Year Return Form - 21" Value="Half Year Return Form - 21"></asp:TreeNode>
                        <asp:TreeNode Text=" Annual Year Return Form - 22" Value="Annual Year Return Form - 22"></asp:TreeNode>
                        <asp:TreeNode Text=" Pollution Control Reports" Value="Pollution Control Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" EPF Reports" Value="EPF Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" ESI Reports" Value="ESI Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" Professional Tax" Value="Professional Tax"></asp:TreeNode>
                        <asp:TreeNode Text=" Labour Welfare Fund" Value="Labour Welfare Fund"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Bonus Report" Value="Employee Bonus Report"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Wage Report" Value="Employee Wage Report"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Pay Slips" Value="Employee Pay Slips"></asp:TreeNode>
                        <asp:TreeNode Text=" Contractor Invoices" Value="Contractor Invoices"></asp:TreeNode>
                        <asp:TreeNode Text=" ON Roll Form Reports" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" MD Breakup" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" ET Breakup" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Reports" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Wage Statement" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" Payslip" Value="New Node"></asp:TreeNode>
                        <asp:TreeNode Text=" ATM Salary Reports" Value="ATM Salary Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" Departmental Breakup" Value="Departmental Breakup"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash Denomination" Value="Cash Denomination"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Attendance PEM Entry- J" Value="Monthly Attendance PEM Entry- J"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Wages PEM Generate- J" Value="Monthly Wages PEM Generate- J"></asp:TreeNode>
                        <asp:TreeNode Text=" ESI &amp; PF Reports" Value="ESI &amp; PF Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" Form 22 Muster Roll Cum For Wages/Salary/Subsistence Allow" Value="Form 22 Muster Roll Cum For Wages/Salary/Subsistence Allow"></asp:TreeNode>
                        <asp:TreeNode Text=" Form 11 For Adult Workers" Value="Form 11 For Adult Workers"></asp:TreeNode>
                        <asp:TreeNode Text=" Form 14 For Leave With Wages" Value="Form 14 For Leave With Wages"></asp:TreeNode>
                        <asp:TreeNode Text=" Form-9 For Overtime" Value="Form-9 For Overtime"></asp:TreeNode>
                        <asp:TreeNode Text=" Register Of Bonus" Value="Register Of Bonus"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" OFF Roll LCM Reports" Value="OFF Roll LCM Reports">
                        <asp:TreeNode Text=" EPS Reports" Value="EPS Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" Salary Break-up" Value="Salary Break-up"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Details" Value="Employee Details"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Salary Break-up" Value="Employee Salary Break-up"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Earning Break-up" Value="Employee Earning Break-up"></asp:TreeNode>
                        <asp:TreeNode Text=" Employee Deduction Break-up" Value="Employee Deduction Break-up"></asp:TreeNode>
                        <asp:TreeNode Text=" CC Balance" Value="CC Balance"></asp:TreeNode>
                        <asp:TreeNode Text=" Company Wise" Value="Company Wise"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Wise" Value="Monthly Wise"></asp:TreeNode>
                        <asp:TreeNode Text=" Yearly Wise" Value="Yearly Wise"></asp:TreeNode>
                        <asp:TreeNode Text=" LCM Invoices" Value="LCM Invoices"></asp:TreeNode>
                        <asp:TreeNode Text=" OFF Roll Form Reports" Value="OFF Roll Form Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" MD Breakup" Value="MD Breakup"></asp:TreeNode>
                        <asp:TreeNode Text=" ET Breakup" Value="ET Breakup"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Reports" Value="Monthly Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Wage Statement" Value="Monthly Wage Statement"></asp:TreeNode>
                        <asp:TreeNode Text=" Payslip" Value="Payslip"></asp:TreeNode>
                        <asp:TreeNode Text=" ATM Salary Reports" Value="ATM Salary Reports"></asp:TreeNode>
                        <asp:TreeNode Text=" Departmental Breakup" Value="Departmental Breakup"></asp:TreeNode>
                        <asp:TreeNode Text=" Cash Denomination" Value="Cash Denomination"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Attendance LCM Entry- J" Value="Monthly Attendance LCM Entry- J"></asp:TreeNode>
                        <asp:TreeNode Text=" Monthly Wages LCM Generate- J" Value="Monthly Wages LCM Generate- J"></asp:TreeNode>
                        <asp:TreeNode Text=" Form XIX (OT) Slip" Value="Form XIX (OT) Slip"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text=" HR &amp; Admin" Value="HR &amp; Admin">
                    <asp:TreeNode Expanded="False" Text=" Interview Schedule" Value="Interview Schedule"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Letter Pad" Value="Letter Pad">
                        <asp:TreeNode Text=" Inward" Value="Inward"></asp:TreeNode>
                        <asp:TreeNode Text=" OutWard" Value="OutWard"></asp:TreeNode>
                        <asp:TreeNode Text=" Offer Letter" Value="Offer Letter"></asp:TreeNode>
                        <asp:TreeNode Text=" Appointment Order" Value="Appointment Order"></asp:TreeNode>
                        <asp:TreeNode Text=" Workmen / MR &amp; DR" Value=" Workmen / MR &amp; DR"></asp:TreeNode>
                        <asp:TreeNode Text=" Staff &amp; Executive" Value="Staff &amp; Executive"></asp:TreeNode>
                        <asp:TreeNode Text=" Managers &amp; Above" Value="Managers &amp; Above"></asp:TreeNode>
                        <asp:TreeNode Text=" LCM Employees" Value=" LCM Employees"></asp:TreeNode>
                        <asp:TreeNode Text=" Trainees " Value="Trainees "></asp:TreeNode>
                        <asp:TreeNode Text=" ACT Apprentice" Value="ACT Apprentice"></asp:TreeNode>
                        <asp:TreeNode Text=" Company Apprentice" Value=" Company Apprentice"></asp:TreeNode>
                        <asp:TreeNode Text=" Neem" Value=" Neem"></asp:TreeNode>
                        <asp:TreeNode Text=" Consultants" Value="Consultants"></asp:TreeNode>
                        <asp:TreeNode Text=" Interview Call Letter" Value="Interview Call Letter"></asp:TreeNode>
                        <asp:TreeNode Text=" Transfer Order" Value="Transfer Order"></asp:TreeNode>
                        <asp:TreeNode Text=" Promotion Order" Value="Promotion Order"></asp:TreeNode>
                        <asp:TreeNode Text=" Suspension Order" Value=" Suspension Order"></asp:TreeNode>
                        <asp:TreeNode Text=" Warning Letter" Value="Warning Letter"></asp:TreeNode>
                        <asp:TreeNode Text=" Show Cause Notice" Value="Show Cause Notice"></asp:TreeNode>
                        <asp:TreeNode Text=" Memo/Charge Sheet" Value="Memo/Charge Sheet"></asp:TreeNode>
                        <asp:TreeNode Text=" Letter Of Termination" Value="Letter Of Termination"></asp:TreeNode>
                        <asp:TreeNode Text=" Letter For Imposition Of Fine" Value=" Letter For Imposition Of Fine"></asp:TreeNode>
                        <asp:TreeNode Text=" Dismissal Of Services" Value="Dismissal Of Services"></asp:TreeNode>
                        <asp:TreeNode Text=" Letter Of Appreciation Of Work" Value="Letter Of Appreciation Of Work"></asp:TreeNode>
                        <asp:TreeNode Text=" LCM Employee Agreement" Value="LCM Employee Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" PEM Employee Agreement" Value="PEM Employee Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" LCM Company Agreement" Value="LCM Company Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" PEM Employee Agreement" Value=" PEM Employee Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" LCM Employee Agreement" Value="LCM Employee Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" Job Outsourcing Agreement" Value=" Job Outsourcing Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" Canteen Agreement" Value="Canteen Agreement"></asp:TreeNode>
                        <asp:TreeNode Text=" Other Agreement" Value="Other Agreement"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Leave Management" Value="Leave Management"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Employee History" Value="Employee History"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Employee In Management" Value="Employee In Management"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Employee Exit Management" Value="Employee Exit Management"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Employee Transfer" Value="Employee Transfer"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Induction Management" Value="Induction Management"></asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" OFF Roll LCM" Value="OFF Roll LCM">
                        <asp:TreeNode Text=" Form 9 EPF" Value="Form 9 EPF"></asp:TreeNode>
                        <asp:TreeNode Text=" PF &amp; ESI Master" Value="PF &amp; ESI Master"></asp:TreeNode>
                        <asp:TreeNode Text=" PF Generate" Value="PF Generate"></asp:TreeNode>
                        <asp:TreeNode Text=" ESI Generate" Value="ESI Generate"></asp:TreeNode>
                        <asp:TreeNode Text=" ESI Report" Value="ESI Report"></asp:TreeNode>
                        <asp:TreeNode Text=" PF Report" Value="PF Report"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" ON Roll PEM" Value="ON Roll PEM">
                        <asp:TreeNode Text=" Form 9 EPF" Value=" Form 9 EPF"></asp:TreeNode>
                        <asp:TreeNode Text=" PF &amp; ESI Master" Value="PF &amp; ESI Master"></asp:TreeNode>
                        <asp:TreeNode Text=" PF Generate" Value="PF Generate"></asp:TreeNode>
                        <asp:TreeNode Text=" ESI Generate" Value="ESI Generate"></asp:TreeNode>
                        <asp:TreeNode Text=" ESI Report" Value="ESI Report"></asp:TreeNode>
                        <asp:TreeNode Text=" PF Report" Value="PF Report"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text=" Authorisation" Value="Authorisation"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>

            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="3px" NodeSpacing="3px" VerticalPadding="3px" />
            <ParentNodeStyle Font-Bold="true" />
            <SelectedNodeStyle ForeColor="#5555DD" HorizontalPadding="5px" VerticalPadding="5px" Font-Underline="false" />
        </asp:TreeView>


    </asp:Panel>
    <%----------------------%>

    <script type="text/javascript">
        $(function () {
            $("[id*=TreeView1] input[type=checkbox]").bind("click", function () {
                var table = $(this).closest("table");
                if (table.next().length > 0 && table.next()[0].tagName == "DIV") {
                    //Is Parent CheckBox
                    var childDiv = table.next();
                    var isChecked = $(this).is(":checked");
                    $("input[type=checkbox]", childDiv).each(function () {
                        if (isChecked) {
                            $(this).attr("checked", "checked");
                        } else {
                            $(this).removeAttr("checked");
                        }
                    });
                } else {
                    //Is Child CheckBox
                    var parentDIV = $(this).closest("DIV");
                    if ($("input[type=checkbox]", parentDIV).length == $("input[type=checkbox]:checked", parentDIV).length) {
                        $("input[type=checkbox]", parentDIV.prev()).attr("checked", "checked");
                    } else {
                        $("input[type=checkbox]", parentDIV.prev()).removeAttr("checked");
                    }
                }
            });
        })
    </script>

    <%--<script type="text/javascript">
        function ClientSideChangeSelection() {
            var chkBox = window.event.srcElement;
            var isChecked;
            var isCheckBox = false;

            if (chkBox.tagName == "INPUT" && chkBox.type.toUpperCase() == "CHECKBOX") {
                var treeNode = chkBox;
                isChecked = treeNode.checked;
                do{
                    chkBox = chkBox.parentElement;
                } while (chkBox.tagName != "TABLE")
                var firstLevel = chkBox.rows[0].cells.length;

                var tableElements = chkBox.parentElement.getElementsByTagName("TABLE");
                var tableElementsCount = tableElements.length;
                if (tableElementsCount > 0) {
                    for (i = 0; i < tableElementsCount; i++) {
                        if (tableElements[i] == chkBox) {
                            i++;
                            isCheckBox = true;
                            if (i == tableElementsCount) {
                                return;
                            }
                        }
                        if (isCheckBox == true) {
                            var secondLevel = tableElements[i].rows[0].cells.length;
                            if (secondLevel > firstLevel) {
                                var cell = tableElements[i].rows[0].cells[secondLevel - 1];
                                var inputElement = cell.getElementsByTagName("INPUT");
                                inputElement[0].checked = isChecked;
                            }
                            else {
                                return;
                            }
                        }
                    }
                }
            }
        }
    </script>--%>

    <%----------------------%>
</asp:Content>

