<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="TPNotes.aspx.cs" Inherits="Dentist_TPNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
									<div class="box-body">
										<div class="pull-right">
											<asp:Button ID="btnTpNotes" runat="server" Text="Save" class="btn btn-success" ValidationGroup="tpNotes" OnClick="btnTpNotes_Click" />
											<asp:Button ID="btnPrint6" runat="server" Text="Preview & Print" class="btn btn-success" />


										</div>

										<div class="box-body ">
											<asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover table-bordered table-responsive" AutoGenerateColumns="False">
												<Columns>
													<asp:BoundField DataField="toothNo" HeaderText="Tooth No" SortExpression="toothNo" />
													<asp:BoundField DataField="examinationName" HeaderText="Examination Name" SortExpression="examinationName" />
													<asp:BoundField DataField="treatmentAdvice" HeaderText="Treatment Advice" SortExpression="treatmentAdvice" />
													<%--<asp:BoundField DataField="duration" HeaderText="Duration (In Days)" SortExpression="duration" />
													<asp:BoundField DataField="fee" HeaderText="Fee" SortExpression="fee" />
													<asp:BoundField DataField="discount" HeaderText="Discount" SortExpression="discount" />
													<asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />--%>
													<asp:BoundField DataField="notestoReceptionist" HeaderText="Notes to Receptionist" SortExpression="notestoReceptionist" />
												</Columns>
											</asp:GridView>

											

											<table class="table table-striped table-hover table-bordered table-responsive">
												<tr>

													<td width="120px">
														<asp:TextBox ID="txtToothNoNotes" placeholder="Tooth Nos." Width="150px" runat="server" CssClass="form-control"></asp:TextBox></td>

													<td>
														<asp:TextBox ID="txtTreatmentNotes" placeholder="Treatment Done" runat="server" CssClass="form-control"></asp:TextBox>

														<div class="row">
															<div class="col-lg-12">

																<div class="col-lg-6 no-padding">
																	<asp:TextBox ID="txtObservationNotes" placeholder="Observation" runat="server" CssClass="form-control"></asp:TextBox>
																	<asp:TextBox ID="txtAnesthesiaNotes" placeholder="Anesthesia" runat="server" CssClass="form-control"></asp:TextBox>
																</div>

																<div class="col-lg-6 no-padding">

																	<asp:TextBox ID="txtNewMedicationNotes" placeholder="Pre Medication" runat="server" CssClass="form-control"></asp:TextBox>
																	<asp:TextBox ID="txtAdrenalineNotes" runat="server" placeholder="Adrenaline" CssClass="form-control"></asp:TextBox>

																</div>


															</div>

														</div>
													</td>
													<%--<td width="120px">
														<asp:TextBox ID="txtStartDateNotes" placeholder="Start Date" Width="120px" runat="server" CssClass="form-control"></asp:TextBox>
														<ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="txtStartDateNotes" runat="server" TargetControlID="txtStartDateNotes" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

													</td>--%>
													<td width="70px">
														<asp:TextBox ID="txtEndDateNotes" placeholder="Next Visit Date" Width="120px" runat="server" CssClass="form-control"></asp:TextBox>
														<ajaxToolkit:CalendarExtender ID="CalendarExtender2" PopupButtonID="txtEndDateNotes" runat="server" TargetControlID="txtEndDateNotes" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>

													</td>
													<td width="70px">
														<asp:TextBox ID="txtpurpose" placeholder="Purpose" runat="server" Width="250px" CssClass="form-control"></asp:TextBox>
													</td>
													<%--<td width="90px">
														<asp:TextBox ID="txtDiscountNotes" placeholder="Discount" runat="server" Width="90px" CssClass="form-control"></asp:TextBox>
													</td>
													<td width="80px">
														<asp:TextBox ID="txtAmountNotes" runat="server" placeholder="Amount" Width="80px" CssClass="form-control"></asp:TextBox>
													</td>--%>
													<td>
														<asp:TextBox ID="txtnotestoReceptionistNotes" placeholder="Notes To Receptionist" runat="server" CssClass="form-control"></asp:TextBox>
													</td>
												</tr>
											</table>

											<asp:GridView ID="gdTPNotes" CssClass="table table-striped table-hover table-bordered table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2">
												<Columns>
													<asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" Visible="false" ReadOnly="True" SortExpression="id" />
												
													<asp:BoundField DataField="toothNo" HeaderText="Tooth No." SortExpression="toothNo" />
													<asp:BoundField DataField="treatmentNotes" HeaderText="Treatment Notes" SortExpression="treatmentNotes" />
													<asp:BoundField DataField="observationNotes" HeaderText="Observation" SortExpression="observationNotes" />
													<asp:BoundField DataField="anesthesiaNotes" HeaderText="Anesthesia" SortExpression="anesthesiaNotes" />
													<asp:BoundField DataField="newMedicationNotes" HeaderText="Pre Medication" SortExpression="newMedicationNotes" />
													<asp:BoundField DataField="adrenalineNotes" HeaderText="Adrenaline" SortExpression="adrenalineNotes" />
													<asp:BoundField DataField="startDateNotes" HeaderText="Start Date" SortExpression="startDateNotes" />
													<asp:BoundField DataField="endDateNotes" HeaderText="Next Visit Date" SortExpression="endDateNotes" />
													<asp:BoundField DataField="purpose" HeaderText="Purpose" SortExpression="purpose" />
													<asp:BoundField DataField="notestoReceptionistNotes" HeaderText="Notes To Receptionist" SortExpression="notestoReceptionistNotes" />
												</Columns>

											</asp:GridView>



											<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>" SelectCommand="SELECT id, toothNo, treatmentNotes, observationNotes, anesthesiaNotes, newMedicationNotes, adrenalineNotes, CONVERT(varchar, startDateNotes, 101) as startDateNotes , endDateNotes, purpose, notestoReceptionistNotes FROM [tpNotes] WHERE (([patientId] = @patientId) AND ([doctorId] = @doctorId)) ORDER BY startDateNotes DESC">
												<SelectParameters>
													<asp:SessionParameter Name="patientId" SessionField="PId" Type="String" />
													<asp:SessionParameter Name="doctorId" SessionField="userId" Type="String" />
												</SelectParameters>
											</asp:SqlDataSource>



										</div>
										<br />


									</div>

</asp:Content>

