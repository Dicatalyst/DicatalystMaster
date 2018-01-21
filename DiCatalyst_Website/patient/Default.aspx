<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="patient_Default" %>

<%@ Register Src="~/userControls/searchbox.ascx" TagPrefix="uc1" TagName="searchbox" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-12 col-xs-12">

        <%--<h1 style="margin-top: -5px;">
            <b>Dashboard</b>
        </h1>
       --%>
        <h2>
            <b>Search Doctors</b>
        </h2>

        <div class="row">
            <div class="col-md-12">
                <p>We provide expert doctors information by entering details of locality with specialization and Hospitals.</p>
                <uc1:searchbox runat="server" ID="searchbox" />
            </div>


        </div>

        <br/>
    </div>

</asp:Content>