<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="prescription.aspx.cs" Inherits="patient_prescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-lg-12 col-xs-12">
       
            <div class="box box-primary" style="border-color: #d6e601">
                <div class="box-header with-border">
                    <h3 class="box-title"> Prescriptions</h3>
                    <%--<button type="button" class="btn pull-right" style="background-color:#d6e601;color:white">Dummy</button>--%>

                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

                   
                        <%-- <label>Upload Prescription</label>

                           <input type="file" name="pic" accept=".gif, .png, .jpg,.jpeg,.doc,.pdf,image/*,audio/*,video/*"/>--%>

                        <%--<asp:Label ID="Label1" runat="server" Text="Upload Prescription"></asp:Label><br/>

                        <asp:FileUpload ID="FileUpload1" runat="server"/>

                        <div class="form-group has-error">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group117" runat="server" ErrorMessage="Select File" ControlToValidate="FileUpload1" class="error-message"></asp:RequiredFieldValidator>

                        </div>
                        <br/>

                        <asp:Button ID="Button1" runat="server" ValidationGroup="Group117" Text="Upload" class="btn btn-info"/>--%>

                        <div class="col-lg-12">
												<h4>
													<b>Medicine List:</b>
												</h4>
												<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" CssClass="table table-striped table-bordered table-hover">
													<Columns>

														<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" Visible="false" ReadOnly="True" SortExpression="id" />
                                                        <asp:BoundField DataField="prescriptionId" HeaderText="Prescription Id" SortExpression="prescriptionId" />
														<asp:BoundField DataField="medicineType" HeaderText="medicineType" SortExpression="medicineType" />
														<asp:BoundField DataField="MedicineName" HeaderText="MedicineName" SortExpression="MedicineName" />
														<asp:BoundField DataField="Dose" HeaderText="Dose" SortExpression="Dose" />
														<asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
														<asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
														<asp:BoundField DataField="PerDay" HeaderText="PerDay" SortExpression="PerDay" />
														<asp:BoundField DataField="Interval" HeaderText="Interval" SortExpression="Interval" />
														<asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments" />
														<asp:BoundField DataField="fullName" HeaderText="Doctor Name" SortExpression="doctorId" />
														<%--<asp:BoundField DataField="patientId" HeaderText="patientId" SortExpression="patientId" />--%>
														<asp:BoundField DataField="datetime" HeaderText="datetime" SortExpression="datetime" />
													</Columns>
												</asp:GridView>



<%--												<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT        dbo.dentistPrescription.prescriptionId, dbo.dentistPrescription.id, dbo.dentistPrescription.medicineType, dbo.dentistPrescription.MedicineName, dbo.dentistPrescription.Dose, dbo.dentistPrescription.Quantity, 
                         dbo.dentistPrescription.Days, dbo.dentistPrescription.PerDay, dbo.dentistPrescription.Interval, dbo.dentistPrescription.Comments, dbo.dentistPrescription.datetime, dbo.registeredUsers.fullName
FROM            dbo.dentistPrescription INNER JOIN
                         dbo.registeredUsers ON dbo.dentistPrescription.doctorId = dbo.registeredUsers.uniqueRandomId WHERE (([patientId] = 'HXZ443UZZQ')) ORDER BY datetime DESC">
													<SelectParameters>
<%--														<asp:SessionParameter Name="doctorId" SessionField="userId" Type="String" />--%>
													<%--	<asp:SessionParameter Name="patientId" SessionField="P_userId" Type="String" />
													</SelectParameters>
												</asp:SqlDataSource>--%>



											</div>
                   

                </div>

            </div>
        </div>
  


    <!-- For Validation -->


    <script src="../validation/js/scrupulous.js"></script>

    <script>
        $(function() {
            $('.validate-form').scrupulous();
            $('.callback-form').scrupulous({
                valid: function() {
                    alert('Valid Callback - Submit the Form');
                    return true;
                },
                invalid: function() {
                    alert('Invalid Callback -  Stop the Form');
                    return false;
                }
            });

            $('#toggle-disabled').on('change',
                function() {
                    if ($(this).is(':checked')) {
                        $('#disabled-input').removeAttr('disabled');
                    } else {
                        $('#disabled-input').attr('disabled', true);
                    }
                });

        });
    </script>

</asp:Content>