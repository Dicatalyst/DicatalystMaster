<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/diagnosismenu.master" AutoEventWireup="true" CodeFile="diagnosisandprognosis.aspx.cs" Inherits="Dentist_diagnosisandprognosis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildContent1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent2" Runat="Server">
       
    <div class="pull-right">
										<asp:Button ID="btnDiagnosis1" runat="server" Text="Save" class="btn btn-success" ValidationGroup="diagnosisPrognosis" OnClick="btnDiagnosis1_Click" />
										<asp:Button ID="btnPrint4" runat="server" Text="Preview & Print" class="btn btn-success" />

									</div>

									<div class="box-body">


										<div class="box-body ">
											<asp:GridView ID="gdDiagnosisPrognosis" CssClass="table table-striped table-hover table-bordered table-responsive" runat="server" AutoGenerateColumns="false">


												<Columns>
													<asp:TemplateField HeaderText="S.No." HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Center">
														<ItemTemplate>
															<%# Container.DataItemIndex + 1 %>
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
													<asp:TemplateField HeaderText="Description" ItemStyle-CssClass="toothNo">
														<ItemTemplate>
															<asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" Text='<%#Eval ("description") %>'></asp:TextBox>
														</ItemTemplate>
													</asp:TemplateField>
													<asp:TemplateField HeaderText="Prognosis" ItemStyle-CssClass="examinationName">
														<ItemTemplate>
															<asp:DropDownList ID="ddlPrognosis" runat="server" CssClass="form-control" SelectedValue='<%# Eval("prognosis") %>'>
																<asp:ListItem>- Select -</asp:ListItem>
																<asp:ListItem>Fair</asp:ListItem>
																<asp:ListItem>Good</asp:ListItem>
																<asp:ListItem>Guarded</asp:ListItem>
																<asp:ListItem>Poor</asp:ListItem>
															</asp:DropDownList>
														</ItemTemplate>
													</asp:TemplateField>

													<asp:TemplateField HeaderText="Additional Notes">
														<ItemTemplate>
															<asp:TextBox ID="txtAdditionalNotes" runat="server" CssClass="form-control" Text='<%#Eval ("additionalNotes") %>'></asp:TextBox>
														</ItemTemplate>
													</asp:TemplateField>
													<asp:TemplateField HeaderText="Date" HeaderStyle-Width="90px" ItemStyle-CssClass="toothNo">
														<ItemTemplate>
															<asp:TextBox ID="txtdateTime" data-role="date" runat="server" CssClass="form-control" Text='<%#Eval ("dateTime", "{0:d}") %>'></asp:TextBox>
															<ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="txtdateTime" runat="server" TargetControlID="txtdateTime" Format="mm/dd/yyyy"></ajaxToolkit:CalendarExtender>
														</ItemTemplate>
													</asp:TemplateField>
												</Columns>
											</asp:GridView>

										</div>

									</div>
         
        
</asp:Content>

