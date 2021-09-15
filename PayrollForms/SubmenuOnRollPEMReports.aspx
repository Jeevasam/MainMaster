<%@ Page Title="" Language="C#" MasterPageFile="~/PayrollForms/MasterPageSurya.master" AutoEventWireup="true" CodeFile="SubmenuOnRollPEMReports.aspx.cs" Inherits="SubmenuOnRollPEMReports" %>

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

        .auto-style1 {
            width: 354px;
        }
    </style>

    <div class="container-fluid">

        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col" class="auto-style1">DISH</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#"><i class="fas fa-file"></i>Half Year Return Form - 21</a></td>
                    <td><a href="#"><i class="fas fa-file"></i>Annual Year Return Form - 22</a></td>
                </tr>


                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll PEM Reports</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#"><i class="fas fa-file-invoice"></i>Pollution Control Reports</a></td>
                    <td class="auto-style2"><a href="#"><i class="fas fa-file-invoice"></i>EPF Reports</a></td>
                    <td class="auto-style2"><a href="#"><i class="fas fa-file-invoice"></i>ESI Reports</a></td>
                </tr>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#"><i class="fas fa-file-invoice"></i>Professional Tax</a></td>
                    <td class="auto-style2"><a href="#"><i class="fas fa-file-invoice"></i>Labour Welfare Fund</a></td>
                    <td class="auto-style2"><a href="#"><i class="fas fa-file-invoice"></i>Employee Bonus Report</a></td>
                </tr>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#"><i class="fas fa-file-invoice"></i>Employee Wage Report</a></td>
                    <td class="auto-style2"><a href="#"><i class="fas fa-file-invoice"></i>Employee Pay Slips</a></td>
                    <td class="auto-style2"><a href="#"><i class="fas fa-file-alt"></i>Contractor Invoices</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll Statutory Report</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="PgOnRollForms-Report.aspx"><i class="fas fa-file-invoice"></i>ON Roll Form Reports</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll Attendance Reports</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>MD Breakup</a></td>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>ET Breakup</a></td>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Reports</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll Wage Reports</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Wage Statement</a></td>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Payslip</a></td>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>ATM Salary Reports</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll Breakup</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Departmental Breakup</a></td>
                    <td class="auto-style5"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Cash Denomination</a></td>
                </tr>

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll PEM Entry- J</th>
                        <th scope="col" class="auto-style3"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>


                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Attendance PEM Entry- J</a></td>
                    <td class="auto-style3"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Monthly Wages PEM Generate- J</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>ESI & PF Reports</a></td>
                </tr>


                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col" class="auto-style1">ON Roll Reorts PEM- J</th>
                        <th scope="col" class="auto-style3"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>


                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form 22 Muster Roll Cum For Wages/Salary/Subsistence Allow </a></td>
                    <td class="auto-style3"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form 11 For Adult Workers</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form 14 For Leave With Wages</a></td>
                </tr>

                <tr>
                    <th scope="row"></th>
                    <td class="auto-style1"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form 25-B Payslip</a></td>
                    <td class="auto-style3"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Form-9 For Overtime</a></td>
                    <td class="auto-style2"><a href="#" style="text-decoration: none"><i class="fas fa-file-invoice"></i>Register Of Bonus</a></td>
                </tr>

            </tbody>

        </table>

    </div>

</asp:Content>

