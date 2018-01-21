<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/financial.master" AutoEventWireup="true" CodeFile="Cancellations.aspx.cs" Inherits="Dentist_Cancilations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
<div class="col-lg-12 col-xs-12">

<div class="box box-default" style="border-color: #ff2971">
<div class="box-header with-border">
    <h3 class="box-title">Cancellations</h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">

    <div class="col-lg-6">

        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Select :"></asp:Label>

            <br/>

            <asp:RadioButton ID="RadioButton61" runat="server" GroupName="radio1" Text=" Investigation Cancellation "/>
            <asp:RadioButton ID="RadioButton62" runat="server" GroupName="radio1" Text=" Registration Cancellation"/>

        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Bill No."></asp:Label>

            <asp:TextBox ID="txtBillNo" runat="server" class="form-control"></asp:TextBox>
        </div>


        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="Registration No."></asp:Label>

            <asp:TextBox ID="txtRegistrationNo" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Financial Year"></asp:Label>

            <asp:TextBox ID="txtFinancialYear" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" runat="server" Text="Referred By"></asp:Label>

            <asp:TextBox ID="txtReferredBy" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Referral Name"></asp:Label>
            <asp:TextBox ID="txtReferralName" runat="server" class="form-control"></asp:TextBox>
        </div>

    </div>

    <div class="col-lg-6">

        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Patient Name"></asp:Label>

            <asp:TextBox ID="txtPatientName" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Age"></asp:Label>

            <asp:TextBox ID="txtAge" runat="server" class="form-control"></asp:TextBox>
        </div>

        <asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>

        <br/>

        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="radio1" Text=" Male "/>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="radio1" Text=" Female"/>


        <div class="form-group">
            <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>

            <asp:TextBox ID="txtAddress" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label11" runat="server" Text="Registration Date"></asp:Label>
            <asp:TextBox ID="txtRegistrationDate" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label12" runat="server" Text="Mobile No."></asp:Label>


            <asp:TextBox ID="txtMobileNo" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="col-lg-12">

        <div class="col-lg-4">

            <asp:Label ID="Label13" runat="server" Text=" Registration Details :"></asp:Label>
            <div class="form-group">
                <asp:Label ID="Label14" runat="server" Text="Total Amount"></asp:Label>

                <asp:TextBox ID="txtTotalAmount" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label15" runat="server" Text="Net Amount "></asp:Label>

                <asp:TextBox ID="txtNetAmount" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label16" runat="server" Text="Paid Amount "></asp:Label>

                <asp:TextBox ID="txtPaidAmount" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="col-lg-4">
            <asp:Label ID="Label17" runat="server" Text="Cancell Test Details :"></asp:Label>

            <div class="form-group">
                <asp:Label ID="Label18" runat="server" Text="Total Amount"></asp:Label>

                <asp:TextBox ID="txtTotalAmount1" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label19" runat="server" Text="Net Amount"></asp:Label>

                <asp:TextBox ID="txtNetAmount1" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label20" runat="server" Text="Remarks"></asp:Label>

                <asp:TextBox ID="txtRemarks" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>


        <div class="col-lg-4">

            <div class="form-group">
                <asp:Label ID="Label21" runat="server" Text="Amount Due After Cancellation Adjustment"></asp:Label>

                <asp:TextBox ID="txtAmountDueAfterCancellationAdjustment" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label22" runat="server" Text="Refund Amount"></asp:Label>
                <asp:TextBox ID="txtRefundAmount" runat="server" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="Label23" runat="server"></asp:Label>
                <br/>

                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="radio1" Text=" Paid Back ToPatient "/>

            </div>
        </div>

        <div class="col-lg-6">
            <div class="form-group">
                <asp:Label ID="Label24" runat="server" Text="Select Investigations :">

                </asp:Label><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">

                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Text="" Value="0"></asp:ListItem>
                </asp:DropDownList>


            </div>

        </div>

    </div>


</div>

<div class="box-footer">
    <div class="pull-right">


        <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-info"/>
        <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-default"/>

    </div>

</div>


<div class="box-body" style="display: block;">
    <div class="box-body table-responsive no-padding">
        <table class="table table-hover">
            <tbody>
            <tr>
                <th>S.No.</th>
                <th> Investigation Name </th>
                <th> Rate </th>
                <th> Discount </th>
                <th> Net Amount </th>
                <th>Investigation Paid </th>
                <th>Investigation Due </th>
                <th> Post Discount </th>

                <th>Edit</th>
                <th>Delete</th>

            </tr>
            <tr>
                <td>1</td>
                <td>ULTRA SOUND FOETAL ECHO </td>
                <td>1500</td>
                <td>0</td>
                <td>1500</td>
                <td>1500</td>
                <td>0</td>
                <td>0</td>


                <td>
                    <button type="button" class="btn btnedit btn-warning">
                        <i class="fa fa-edit"></i>
                    </button>
                </td>

                <td>
                    <button type="button" class="btn btnedit btn-danger">
                        <i class="fa fa-trash-o"></i>
                    </button>
                </td>
            </tr>


            </tbody>
        </table>
    </div>
</div>


</div>


</div>
</div>


</asp:Content>