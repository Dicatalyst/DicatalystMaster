<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="patient_appointment" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link href="../media/layout.css" rel="stylesheet" />





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="col-lg-12 col-xs-12">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-condensed table-responsive table-hover table-striped" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="AppointmentId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="S.No">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="AppointmentId" HeaderText="AppointmentId" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentId" />
                <asp:BoundField DataField="AppointmentStart" HeaderText="AppointmentStart" SortExpression="AppointmentStart" />
                <asp:BoundField DataField="AppointmentEnd" HeaderText="AppointmentEnd" SortExpression="AppointmentEnd" />
                <asp:BoundField DataField="fullName" HeaderText="Doctor Name" SortExpression="DoctorId" />
                <%--                <asp:BoundField DataField="AppointmentPatientId" HeaderText="AppointmentPatientId" SortExpression="AppointmentPatientId" />--%>
                <asp:BoundField DataField="AppointmentStatus" HeaderText="AppointmentStatus" SortExpression="AppointmentStatus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="
            SELECT        dbo.registeredUsers.fullName, dbo.Appointment.*
FROM            dbo.Appointment INNER JOIN
                         dbo.registeredUsers ON dbo.Appointment.DoctorId = dbo.registeredUsers.uniqueRandomId
            
            WHERE ([AppointmentPatientId] = @AppointmentPatientId)">
            <SelectParameters>
                <asp:SessionParameter Name="AppointmentPatientId" SessionField="P_userId" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
