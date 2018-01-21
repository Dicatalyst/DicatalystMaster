<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pharma_FreeListing.aspx.cs" Inherits="Pharma_FreeListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .input_edu_strDate { margin: 5px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="content-wrapper">
<div class="container">
<!-- Content Header (Page header) -->


<!-- Main content -->
<section class="content">
<div class="row">
<div class="box box-default">
<div class="box-body">

<div class="register-box-body">
<div class="box-header bg-navy">
    <h3 class="box-title">Register for Free Listing -Pharmacy</h3>


    <!-- /.box-tools -->
</div>

<div class="row">
<div class="col-lg-4">
    <img src="images/dummy.png" style="margin-top: 50px; width: 100%;"/>


</div>


<div class="col-lg-8">

<div class="row">
    <h3>Pharmacy Details</h3>
    <div class="col-lg-6">

        <div class="form-group has-feedback">

            <asp:TextBox ID="txtPharmaName" runat="server" class="form-control" placeholder="Pharma name" type="text" value="PPP Pharmacy" disabled></asp:TextBox>

            <%--<span class="glyphicon glyphicon-plus form-control-feedback"></span>--%>
        </div>
        <div class="form-group has-feedback">

            <asp:TextBox ID="txtLicenseNumber" runat="server" class="form-control" placeholder="License Number"></asp:TextBox>

            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


        <div class="form-group has-feedback">

            <asp:TextBox ID="txtVATTAXRate" runat="server" class="form-control" placeholder="VAT/TAX Rate%"></asp:TextBox>


            <%--<span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>
        <div class="form-group has-feedback">

            <asp:TextBox ID="txtBranches" runat="server" class="form-control" placeholder="Branches"></asp:TextBox>

            <%-- <span class="glyphicon glyphicon-list-alt form-control-feedback"></span>--%>
        </div>

    </div>
    <div class="col-lg-6">

        <div class="form-group has-feedback">

            <asp:TextBox ID="txtRegistationNumber" runat="server" class="form-control" placeholder="Registation Number"></asp:TextBox>

            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>
        <div class="form-group has-feedback">

            <asp:TextBox ID="txtWebsiteURL" runat="server" class="form-control" placeholder="Website URL"></asp:TextBox>

            <%-- <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
        </div>
        <div class="form-group has-feedback">
            <asp:TextBox ID="txtVATTAXNumber" runat="server" class="form-control" placeholder="VAT/TAX Number"></asp:TextBox>

            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


    </div>
</div>


<div class="row">
    <h3>Address</h3>

    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:TextBox id="TxtAddress" TextMode="multiline" Columns="50" Rows="2" runat="server" placeholder="Address"></asp:TextBox>

            <%--<span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>
        <div class="form-group has-feedback">
            <asp:DropDownList ID="ddlstate" runat="server" class="form-control">

                <asp:ListItem Text="Select State" Value="0"></asp:ListItem>
            </asp:DropDownList>


            <%--<span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


        <div class="form-group has-feedback">
            <asp:TextBox ID="txtPinCode" runat="server" class="form-control" placeholder="Pin Code"></asp:TextBox>


            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


    </div>

    <div class="col-lg-6">
        <div class="form-group has-feedback">
            <asp:DropDownList ID="ddlcountry" runat="server" class="form-control">

                <asp:ListItem Text="Select Country" Value="0"></asp:ListItem>
            </asp:DropDownList>


            <%--<span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


        <div class="form-group has-feedback">
            <asp:DropDownList ID="ddlcity" runat="server" class="form-control">

                <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
            </asp:DropDownList>


            <%-- <span class="glyphicon glyphicon-pencil form-control-feedback"></span>--%>
        </div>


    </div>
</div>


<div class="row">

    <h3>Working Hours</h3>

    <div class="col-md-6">
        <asp:Table ID="Table1" runat="server">
            <asp:TableHeaderRow>

                <asp:TableHeaderCell>
                    <p class="form-control input_edu_strDate">Day</p>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell colspan="2">
                    <p class="form-control input_edu_strDate">First Half</p>
                </asp:TableHeaderCell>
                <asp:TableHeaderCell colspan="2">
                    <p class="form-control input_edu_strDate">Second Half</p>
                </asp:TableHeaderCell>

            </asp:TableHeaderRow>
            <asp:TableRow>

                <asp:TableCell>
                    <p class="form-control input_edu_strDate">Monday</p>
                    <p class="form-control input_edu_strDate">Tuesday</p>
                    <p class="form-control input_edu_strDate">Wednesday</p>
                    <p class="form-control input_edu_strDate">Thursday</p>
                    <p class="form-control input_edu_strDate">Friday</p>
                    <p class="form-control input_edu_strDate">Saturday</p>
                    <p class="form-control input_edu_strDate">Sunday</p>
                </asp:TableCell>
                <asp:TableCell>


                    <asp:TextBox runat="server" ID="ID1_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID2_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID3_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID4_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID5_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID6_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" ID="ID7_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>

                <asp:TableCell>

                    <asp:TextBox runat="server" ID="ID8_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID9_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID10_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID11_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID12_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID13_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" ID="ID14_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>
                <asp:TableCell>

                    <asp:TextBox runat="server" ID="ID15_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID16_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID17_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID18_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID19_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID20_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" ID="ID21_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>

                <asp:TableCell>

                    <asp:TextBox runat="server" ID="ID22_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID23_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID24_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID25_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID26_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>
                    <asp:TextBox runat="server" ID="ID27_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                    <asp:TextBox runat="server" ID="ID28_edu_strDate" placeholder="To" class="form-control input_edu_strDate"></asp:TextBox>

                </asp:TableCell>


            </asp:TableRow>
        </asp:Table>

    </div>
    <div class="col-lg-6">
        <div class="form-group">
            <h4>Upload Photo</h4>
            <asp:FileUpload ID="FileUpload2" runat="server" name="photo"/>


        </div>
        <div class="form-group">

            <h4>Upload Gallery</h4>
            <asp:FileUpload ID="FileUpload1" runat="server" name="picture"/>


        </div>


    </div>


</div>
</div>


<div>
</div>

</div>


<div class="row">
    <div class="col-lg-4">
    </div>
    <div class="col-lg-8">


        <div class="checkbox">
            <asp:Label ID="Label1" runat="server">

                <asp:CheckBox runat="server" class="required" value="true" ID="termsagree" name="termsagree" required=""/>

                I agree to DiCatalyst <a class="popup" href="#">Terms of Service</a> and <a href="#" class="popup">Privacy Policy</a>.
            </asp:Label>
        </div>

        <div class="col-xs-4">
            <asp:Button ID="Button1" runat="server" Text="submit" class="btn btn-primary btn-block btn-flat" OnClick="Button1_Click"/>

        </div>


    </div>
</div>


</div>
</div>
</div>
</div>

</section>
</div>

</div>


</asp:Content>