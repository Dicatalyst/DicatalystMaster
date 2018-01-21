<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ClinicalHistory.ascx.cs" Inherits="Dentist_ClinicalHistory" %>
<style>
        .radios input {
            padding: 3px;
        }

        .radios label {
            padding-right: 10px;
            width: 50%;
        }

        label {
            width: 100%;
            font-family: "Segoe UI";
            font-size: 14px;
            font-weight: 500;
        }

        hr {
            border-top: 1px solid lightgrey;
        }

        h2 {
            text-transform: uppercase;
            text-align: center;
            margin: 10px;
            font-size: 25px;
            font-weight: 600;
        }

        h3 {
            margin: 10px 0 20px 0;
            text-transform: capitalize;
            font-size: 20px;
            font-weight: 600;
        }

        input[type="checkbox"] {
            margin-right: 10px;
        }
    </style>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="row" style="padding: 20px;">

                <div class="pull-right">
                    <%--Display none added for below buttons by Ram--%>
                    <asp:LinkButton ID="clinicalHistory" CssClass="btn btn-success" runat="server" OnClick="clinicalHistory_Click" ValidationGroup="ch" style="display:none;">Save</asp:LinkButton>
                    <asp:Button ID="btnPrint2" runat="server" Text="Preview & Print" class="btn btn-success" style="display:none;"/>


                </div>

                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">

                        <div class="col-xs-12">
                            <div class="row">
                                <div class="col-xs-12">
                                    <h2>General Information </h2>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Weight (in Kg)</label>
                                        <asp:TextBox ID="txtWeight" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>BP</label>
                                        <asp:TextBox ID="txtBP" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Temperature</label>
                                        <asp:TextBox ID="txtTemperature" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Pulse</label>
                                        <asp:TextBox ID="txtPulse" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Oral Habits</label>
                                        <asp:TextBox ID="txtOralHabits" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label>Current Medication </label>
                                        <asp:TextBox ID="txtCurrentMedications" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <label>Allergies</label>
                                    <asp:TextBox ID="txtAllergies" runat="server" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="col-xs-12">
                                <h2>Extra Oral Examination </h2>
                            </div>

                            <div class="row">
                                <div class="col-xs-12">
                                    <h3>Lymph Nodes Examination </h3>
                                </div>
                                <div class="row col-xs-12">
                                    <div class="col-xs-3">
                                        <label>Palpable</label>
                                        <asp:RadioButtonList ID="radpalpable" CssClass="radios" runat="server" AutoPostBack="true" OnSelectedIndexChanged="radpalpable_SelectedIndexChanged" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="0">&nbsp;Yes</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>

                                    <asp:Panel ID="panyes" runat="server">
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <label>If Yes please Explain</label>
                                                <asp:TextBox ID="txtPalpableLymphNodeComment" TextMode="multiline" Style="width: 100%" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </div>
                                <div class="row col-xs-12">
                                    <div class="col-xs-12">
                                        <h3>TMJ Evaluation </h3>
                                    </div>
                                    <div class="col-xs-12">
                                        <h4 style="margin-top: 0px; margin-bottom: 10px;">Tenderness On Palpation : </h4>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>TMJ</label>
                                            <asp:CheckBoxList ID="chktmj" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="Left"> Left</asp:ListItem>
                                                <asp:ListItem Value="Right"> Right</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>

                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Right</label>
                                            <asp:CheckBoxList ID="chkright" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="Crupitus"> Crupitus</asp:ListItem>
                                                <asp:ListItem Value="Snapping/Popping"> Snapping/Popping</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>

                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Left</label>
                                            <asp:CheckBoxList ID="chkleft" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="Crupitus"> Crupitus</asp:ListItem>
                                                <asp:ListItem Value="Snapping/Popping"> Snapping/Popping</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Muscles of Mastigation</label>
                                            <asp:TextBox ID="txtMuscles" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row col-xs-12">
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Deviation on Closing</label>
                                            <asp:CheckBoxList ID="chkdeviation" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Value="RMM"> RMM</asp:ListItem>
                                                <asp:ListItem Value="LMM"> LMM</asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />

                            <div class="row">
                                <div class="col-xs-12">
                                    <h2>Intra Oral Examination</h2>
                                </div>
                                <div class="col-xs-12">
                                    <h3>Soft Tissue Examination</h3>
                                </div>

                                <div class="row col-xs-12">
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Pharynx</label>
                                            <asp:TextBox ID="txtPharynx" runat="server" Text="Normal" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Tonsils</label>
                                            <asp:TextBox ID="txtTonsils" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Soft Palate</label>
                                            <asp:TextBox ID="txtSoftPalate" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Hard Palate</label>
                                            <asp:TextBox ID="txtHardPalate" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row col-xs-12">
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Tongue</label>
                                            <asp:TextBox ID="txtTongue" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Floor Of Mouth</label>
                                            <asp:TextBox ID="txtFloorOfMouth" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Buccal Mucosa</label>
                                            <asp:TextBox ID="txtBuccalMucosa" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-xs-3">
                                        <div class="form-group">
                                            <label>Lips Skin</label>
                                            <asp:TextBox ID="txtLipsSkin" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <%--<div class="col-xs-12">

                                    <div class="form-group">


                                        <table class="table table-hover">
                                            <tbody>
                                                <tr>
                                                    <th>Area</th>
                                                    <th>Description Of Any Problem</th>

                                                </tr>--%>
                                                <%--<tr>
                                                        <td>Pharynx</td>
                                                        <td>
                                                            <asp:TextBox ID="txtPharynx" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Tonsils</td>
                                                        <td>
                                                            <asp:TextBox ID="txtTonsils" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Soft Palate</td>
                                                        <td>
                                                            <asp:TextBox ID="txtSoftPalate" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Hard Palate</td>
                                                        <td>
                                                            <asp:TextBox ID="txtHardPalate" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Tongue</td>
                                                        <td>
                                                            <asp:TextBox ID="txtTongue" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Floor Of Mouth</td>
                                                        <td>
                                                            <asp:TextBox ID="txtFloorOfMouth" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Buccal Mucosa</td>
                                                        <td>
                                                            <asp:TextBox ID="txtBuccalMucosa" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                                <%--<tr>
                                                        <td>Lips Skin</td>
                                                        <td>
                                                            <asp:TextBox ID="txtLipsSkin" runat="server" Text="Normal" CssClass="form-control"></asp:TextBox>
                                                        </td>
                                                    </tr>--%>
                                            <%--</tbody>
                                        </table>


                                    </div>

                                </div>--%>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-xs-3">
                                    <div class="form-group">
                                        <label>Oral Hygiene</label>
                                        <asp:RadioButtonList ID="radOral" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;Excellent</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;Good</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;Fair</asp:ListItem>
                                                        <asp:ListItem Value="3">&nbsp;Poor</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <div class="form-group">
                                        <label>Calculus</label>
                                        <asp:RadioButtonList ID="radCalculus" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="0">&nbsp;None</asp:ListItem>
                                                    <asp:ListItem Value="1">&nbsp;Little</asp:ListItem>
                                                    <asp:ListItem Value="2">&nbsp;Moderate</asp:ListItem>
                                                    <asp:ListItem Value="3">&nbsp;Heavy</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <div class="form-group">
                                        <label>Plaque</label>
                                        <asp:RadioButtonList ID="radPlaque" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;None</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;Little</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;Moderate</asp:ListItem>
                                                        <asp:ListItem Value="3">&nbsp;Heavy</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <div class="form-group">
                                        <label>Cervical Bleeding</label>
                                        <asp:RadioButtonList ID="radCervical" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;Localized</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;General</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;None</asp:ListItem>
                                                    </asp:RadioButtonList></td>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3">
                                    <div class="form-group">
                                        <label>Bleeding On Probing</label>
                                        <asp:RadioButtonList ID="radBleeding" CssClass="radios" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="radBleeding_SelectedIndexChanged">
                                            <asp:ListItem Value="0">&nbsp;Yes</asp:ListItem>
                                            <asp:ListItem Value="1">&nbsp;No</asp:ListItem>
                                        </asp:RadioButtonList>

                                        
                                    </div>
                                </div>
                                <div class="col-xs-3">
                                    <asp:Panel ID="Panel1" runat="server">
                                        <div class="form-group">
                                            <label>If Yes please Explain</label>
                                            <asp:TextBox ID="bleedingOnProbingComments" TextMode="multiline" Style="width: 100%" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>

                            <div class="row col-lg-12">
                                <div class="form-group">

                                    <table class="table table-hover">
                                        <tbody>
                                            <%--<tr>
                                                <td><b>Oral Hygiene </b></td>
                                                <td>
                                                    <asp:RadioButtonList ID="radOral" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;Excellent</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;Good</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;Fair</asp:ListItem>
                                                        <asp:ListItem Value="3">&nbsp;Poor</asp:ListItem>
                                                    </asp:RadioButtonList></td>
                                            </tr>--%>
                                            <%--<tr>
                                                <td><b>Calculus</b></td>
                                                <td>
                                                    <asp:RadioButtonList ID="radCalculus" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;None</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;Little</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;Moderate</asp:ListItem>
                                                        <asp:ListItem Value="3">&nbsp;Heavy</asp:ListItem>
                                                    </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td><b>Plaque</b></td>
                                                <td>
                                                    <asp:RadioButtonList ID="radPlaque" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;None</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;Little</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;Moderate</asp:ListItem>
                                                        <asp:ListItem Value="3">&nbsp;Heavy</asp:ListItem>
                                                    </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td><b>Cervical Bleeding</b></td>
                                                <td>
                                                    <asp:RadioButtonList ID="radCervical" CssClass="radios" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem Value="0">&nbsp;Localized</asp:ListItem>
                                                        <asp:ListItem Value="1">&nbsp;General</asp:ListItem>
                                                        <asp:ListItem Value="2">&nbsp;None</asp:ListItem>
                                                    </asp:RadioButtonList></td>
                                            </tr>
                                            <tr>
                                                <td><b>Bleeding On Probing</b></td>
                                                <td>
                                                    <asp:RadioButtonList ID="radBleeding" CssClass="radios" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="radBleeding_SelectedIndexChanged">
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
                                            </tr>--%>
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
        </ContentTemplate>
    </asp:UpdatePanel>