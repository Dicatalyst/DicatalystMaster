<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ClinicalHistory.ascx.cs" Inherits="Patient_ClinicalHistory" %>
  <asp:ScriptManager ID="ScriptManager1" runat="server"/>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row" style="padding: 20px;">

                <div class="pull-right" style="display:none">
                    <asp:LinkButton ID="clinicalHistory" CssClass="btn btn-success" runat="server" OnClick="clinicalHistory_Click" ValidationGroup="ch">Save</asp:LinkButton>
                    <asp:Button ID="btnPrint2" runat="server" Text="Preview & Print" class="btn btn-success" />


                </div>

                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="row">


                                <div class="col-lg-3">

                                    <div class="form-group">
                                        <b>Weight (in Kg)</b>
                                        <asp:TextBox ID="txtWeight" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-lg-2">

                                    <div class="form-group">

                                        <b>BP</b>
                                        <asp:TextBox ID="txtBP" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                </div>


                                <div class="col-lg-2">

                                    <div class="form-group">

                                        <b>Temperature</b>
                                        <asp:TextBox ID="txtTemperature" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                </div>

                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <b>Pulse</b>
                                        <asp:TextBox ID="txtPulse" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <b>Oral Habits</b>
                                        <asp:TextBox ID="txtOralHabits" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <b>Current Medication </b>
                                            <asp:TextBox ID="txtCurrentMedications" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <b>Allergies</b>
                                        <asp:TextBox ID="txtAllergies" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4>
                                        <b>Extra Oral Examination </b>
                                    </h4>

                                </div>



                                <div class="col-lg-12">
                                    <h4>
                                        <b>Lymph Nodes Examination</b>
                                    </h4>

                                    <div class="col-lg-3">
                                        <b>Palpable</b>

                                    </div>
                                    <asp:RadioButtonList ID="radpalpable" CssClass="radios" runat="server" AutoPostBack="true" OnSelectedIndexChanged="radpalpable_SelectedIndexChanged" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="0">&nbsp;Yes</asp:ListItem>
                                        <asp:ListItem Value="1">&nbsp;No</asp:ListItem>
                                    </asp:RadioButtonList>

                                    <asp:Panel ID="panyes" runat="server">
                                        <div class="col-lg-9">
                                            <div class="form-group">
                                                <b>If Yes please Explain</b>


                                            </div>

                                            <div class="form-group">

                                                <asp:TextBox ID="txtPalpableLymphNodeComment" TextMode="multiline" Style="width: 100%" runat="server" CssClass="form-control"></asp:TextBox>

                                            </div>
                                        </div>
                                    </asp:Panel>
                                </div>




                                <div class="col-lg-12">

                                    <h4>
                                        <b>TMJ Evaluation</b>
                                    </h4>
                                </div>
                                <div class="col-lg-12">
                                    <h4>
                                        <b>Tenderness On Palpation :</b>
                                    </h4>
                                </div>
                                <div class="col-lg-2">

                                    <div class="form-group">
                                        <b>TMJ</b>

                                    </div>

                                </div>

                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:CheckBoxList ID="chktmj" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Left">&nbsp; Left</asp:ListItem>
                                            <asp:ListItem Value="Right">&nbsp; Right</asp:ListItem>
                                        </asp:CheckBoxList>







                                    </div>

                                </div>





                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <b>Right</b>

                                    </div>

                                </div>

                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:CheckBoxList ID="chkright" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Crupitus">&nbsp; Crupitus</asp:ListItem>
                                            <asp:ListItem Value="Snapping/Popping">&nbsp; Snapping/Popping</asp:ListItem>
                                        </asp:CheckBoxList>




                                    </div>

                                </div>





                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <b>Left</b>

                                    </div>

                                </div>

                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:CheckBoxList ID="chkleft" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Crupitus">&nbsp; Crupitus</asp:ListItem>
                                            <asp:ListItem Value="Snapping/Popping">&nbsp; Snapping/Popping</asp:ListItem>
                                        </asp:CheckBoxList>


                                    </div>

                                </div>




                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <b>Muscles of Mastigation</b>

                                    </div>

                                </div>

                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:TextBox ID="txtMuscles" runat="server" class="form-control"></asp:TextBox>

                                    </div>

                                </div>


                                <div class="col-lg-2">
                                    <div class="form-group">
                                        <b>Deviation on Closing</b>
                                    </div>

                                </div>

                                <div class="col-lg-10">
                                    <div class="form-group">
                                        <asp:CheckBoxList ID="chkdeviation" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="RMM">&nbsp; RMM</asp:ListItem>
                                            <asp:ListItem Value="LMM"> &nbsp;LMM</asp:ListItem>
                                        </asp:CheckBoxList>




                                    </div>

                                </div>




                            </div>

                            <div class="col-lg-12">
                                


                                <div class="row">
                                    <div class="col-lg-12">
                                        <h3><b>Intra Oral Examination</b></h3>
                                        <h4>
                                            <b>Soft Tissue Examination</b>
                                        </h4>
                                    </div>

                                    <div class="col-lg-12">
                                        <div class="form-group">


                                            <table class="table table-hover">
                                                <tbody>
                                                    <tr>
                                                        <th>Area</th>
                                                        <th>Description Of Any Problem</th>

                                                    </tr>
                                                    <tr>
                                                        <td>Pharynx</td>
                                                        <td>
                                                            <asp:TextBox ID="txtPharynx" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Tonsils</td>
                                                        <td>
                                                            <asp:TextBox ID="txtTonsils" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Soft Palate</td>
                                                        <td>
                                                            <asp:TextBox ID="txtSoftPalate" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Hard Palate</td>
                                                        <td>
                                                            <asp:TextBox ID="txtHardPalate" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Tongue</td>
                                                        <td>
                                                            <asp:TextBox ID="txtTongue" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Floor Of Mouth</td>
                                                        <td>
                                                            <asp:TextBox ID="txtFloorOfMouth" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Buccal Mucosa</td>
                                                        <td>
                                                            <asp:TextBox ID="txtBuccalMucosa" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lips Skin</td>
                                                        <td>
                                                            <asp:TextBox ID="txtLipsSkin" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>


                                                </tbody>
                                            </table>


                                        </div>

                                    </div>


                                </div>

                                 <div class="col-lg-12">
                                        <div class="form-group">
                            
                                    <table class="table table-hover">
                                        <tbody>
                                            <tr>
                                                <td><b>Oral Hygiene </b></td>
                                                <td>  <asp:RadioButtonList ID="radOral" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0">&nbsp;Excellent</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;Good</asp:ListItem>
                                            <asp:ListItem Value="2">&nbsp;Fair</asp:ListItem>
                                            <asp:ListItem Value="3">&nbsp;Poor</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td><b>Calculus</b></td>
                                                <td>  <asp:RadioButtonList ID="radCalculus" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0">&nbsp;None</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;Little</asp:ListItem>
                                            <asp:ListItem Value="2">&nbsp;Moderate</asp:ListItem>
                                            <asp:ListItem Value="3">&nbsp;Heavy</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td> <b>Plaque</b></td>
                                                <td>  <asp:RadioButtonList ID="radPlaque" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0">&nbsp;None</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;Little</asp:ListItem>
                                            <asp:ListItem Value="2">&nbsp;Moderate</asp:ListItem>
                                            <asp:ListItem Value="3">&nbsp;Heavy</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td><b>Cervical Bleeding</b></td>
                                                <td>  <asp:RadioButtonList ID="radCervical" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0">&nbsp;Localized</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;General</asp:ListItem>
                                            <asp:ListItem Value="2">&nbsp;None</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td> <b>Bleeding On Probing</b></td>
                                                <td>  <asp:RadioButtonList ID="radBleeding" CssClass="radios" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="radBleeding_SelectedIndexChanged">
                                            <asp:ListItem Value="0">&nbsp;Yes</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;No</asp:ListItem>
                                        </asp:RadioButtonList>

                                                     <asp:Panel ID="Panel1" runat="server">
                                        <div class="col-lg-9">
                                            <div class="form-group">
                                                <b>If Yes please Explain</b>


                                            </div>

                                            <div class="form-group">
                                                <asp:TextBox ID="bleedingOnProbingComments" TextMode="multiline" Style="width: 100%" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                            </div>
                                     </div>
                                <%--<div class="row">
                                    <div class="col-lg-12">
                                        <h4>
                                            <b>Crown & Bridge </b>
                                        </h4>
                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <b>Tooth #</b>

                                        </div>

                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <b>Date Placed</b>

                                        </div>

                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <b>condition</b>

                                        </div>

                                    </div>

                                </div>--%>


                                <%--<div class="row">

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtTooth" runat="server" class="form-control"></asp:TextBox>

                                        </div>

                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtDatePlaced" runat="server" class="form-control"></asp:TextBox>
                                            <ajaxToolkit:CalendarExtender ID="txtDatePlaced_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtDatePlaced">
                                            </ajaxToolkit:CalendarExtender>
                                        </div>

                                    </div>

                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <asp:TextBox ID="txtcondition3" runat="server" class="form-control"></asp:TextBox>
                                        </div>

                                    </div>
                                </div>--%>




                            </div>
                        </div>


                    </div>
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>