<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="treatmentplan.aspx.cs" Inherits="Patient_treatmentplan" %>
<%@ Register TagPrefix="uc" TagName="ClinicalHistory"      Src="~/Patient/ClinicalHistory.ascx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="pull-right" style="display:none">

        <asp:LinkButton ID="lnkTreatmentPlan" runat="server" CssClass="btn btn-success" OnClick="lnkTreatmentPlan_Click" ValidationGroup="group6">Save</asp:LinkButton>

        <asp:Button ID="btnPrint9" runat="server" Text="Preview & Print" class="btn btn-success" />


    </div>


    <div class="box-body">



        <div class="box-body">


            <asp:GridView ID="gdTreatmentPlan" CssClass="table table-striped table-hover table-bordered table-responsive" runat="server" AutoGenerateColumns="false">

                <Columns>

                    <asp:TemplateField HeaderText="S.No." HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Width="3%">
                        <ItemTemplate>
                            <asp:CheckBox ID="chkTreatmenTaken" Checked='<%#Eval("isActive") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Tooth No.">
                        <ItemTemplate>
                            <asp:Label ID="txtToothNo" runat="server" Text='<%#Eval ("toothNo") %>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Examination Name" ItemStyle-CssClass="toothNo">
                        <ItemTemplate>
                            <asp:Label ID="txtExaminationName" runat="server" Text='<%#Eval ("examinationName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Treatment Advice" ItemStyle-CssClass="toothNo">
                        <ItemTemplate>
                            <asp:TextBox ID="txtTreatmentAdvice" runat="server" CssClass="form-control" Text='<%#Eval ("treatmentAdvice") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Duration (In Days)" ItemStyle-CssClass="examinationName" HeaderStyle-Width="5%">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control" Text='<%#Eval ("duration") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Fees" HeaderStyle-Width="5%">
                        <ItemTemplate>
                            <asp:TextBox ID="txtFee" runat="server" CssClass="form-control tpfee" Text='<%#Eval ("fee") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Discount %" HeaderStyle-Width="5%">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control tpdiscount" Text='<%#Eval ("discount") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--	<asp:TemplateField HeaderText="Amount">
														<ItemTemplate>
															<asp:TextBox ID="txtAmount" runat="server" CssClass="form-control tpamount" Text='<%#Eval ("amount") %>'></asp:TextBox>
														</ItemTemplate>
													</asp:TemplateField>--%>
                    <asp:TemplateField HeaderText="Notes To Receptionist">
                        <ItemTemplate>
                            <asp:TextBox ID="txtNotestoReceptionist" runat="server" CssClass="form-control" Text='<%#Eval ("notestoReceptionist") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <%--<!--Ravi->--%>
            <uc:ClinicalHistory id="ClinicalHistory1" runat="server"   />

        </div>

    </div>
</asp:Content>

