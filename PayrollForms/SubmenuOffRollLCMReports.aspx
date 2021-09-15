<%@ Page Title="" Language="C#" MasterPageFile="~/PayrollForms/MasterPageSurya.master" AutoEventWireup="true" CodeFile="SubmenuOffRollLCMReports.aspx.cs" Inherits="SubmenuOffRollLCMReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <style>
        .fa {
            padding-right: .5em;
        }

        .fas {
            padding-right: .5em;
        }
    </style>

    <div class="container-fluid">

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">OFF Roll LCM Reports</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <th scope="row"></th>
                    <td ><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>EPS Reports</a></td>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Salary Break-up</a></td>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Employee Details</a></td>
                </tr>

                <tr>
                    <th scope="row"></th>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Employee Salary Break-up</a></td>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Employee Earning Break-up</a></td>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Employee Deduction Break-up</a></td>
                </tr>

                <tr>
                    <th scope="row"></th>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>CC Balance</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Net Profit</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-alt"></i>Company Wise</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-alt"></i>Monthly Wise</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-alt"></i>Yearly Wise</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Regular Bill</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style5"><a href="RegularBillWageStatement.aspx" style="text-decoration: none"><i class="fas fa-file-alt"></i>LCM Invoices</a></td>
                    <%--<td class="auto-style5"><a href="PgReport26Report.aspx"><i class="fas fa-file"></i>Form 26</a></td>--%>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">OFF Roll Statutory Report</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="PgOffRollForms-Report.aspx" style="text-decoration: none"><i class="fas fa-file-invoice"></i>OFF Roll Form Reports</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">OFF Roll Attendance Reports</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>


                <tr>
                    <th scope="row"></th>
                    <td><a href="PgReport26Genarate.aspx" style="text-decoration: none"><i class="fas fa-file-invoice"></i>MD Breakup</a></td>
                    <td><a href="APForm/PgReport-C-ETBreakUp.aspx" style="text-decoration: none"><i class="fas fa-file-invoice"></i>ET Breakup</a></td>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Reports</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">OFF Roll Wage Report</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Wage Statement</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Payslip</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>ATM Salary Reports</a></td>
                </tr>


                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">OFF Roll Breakup</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>


                <tr>
                    <th scope="row"></th>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Departmental Breakup</a></td>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Cash Denomination</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style4">OFF Roll LCM Entry- J</th>
                        <th scope="col" class="auto-style3"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style4"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Attendance LCM Entry- J</a></td>
                    <td class="auto-style3"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Wages LCM Generate- J</a></td>
                </tr>


                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style4">OFF Roll Reports LCM- J</th>
                        <th scope="col" class="auto-style3"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <%--<tr>
                    <th scope="row"></th>
                    <td class="auto-style4"><a href="PgReport26Genarate.aspx" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form XXVI (26) Muster Roll Register</a></td>
                    <td class="auto-style3"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form XXVII For Wages</a></td>
                    <td><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice" style="text-decoration: none"></i>Form XXIII (23) Overtime Register</a></td>
                </tr>--%>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style4"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form XIX (OT) Slip</a></td>
                    <%--<td class="auto-style3"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form XXIX For Damages,Loss or Fines</a></td>--%>
                </tr>

            </tbody>

        </table>

    </div>

</asp:Content>

