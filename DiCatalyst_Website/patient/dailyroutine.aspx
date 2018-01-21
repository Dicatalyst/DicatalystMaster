<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="dailyroutine.aspx.cs" Inherits="patient_dailyroutine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>
    
    <style>
        
        .Buttons td {
            padding: 3px;

        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="col-lg-12 col-xs-12">

<div class="box box-primary" style="border-color: #c55353">
<div class="box-header with-border">
    <h3 class="box-title"> Daily Routine </h3>


</div>
<!-- /.box-header -->
<div class="box-body" style="display: block;">

<div class="row">
    <div class=" col-lg-12">
        <h4 style="margin-left: 15px">Activities</h4>

        <div class="col-lg-8">


            <div class="form-group">


            <b>Activity Name</b>
                <asp:TextBox ID="txtActivityName" runat="server" CssClass="form-control"></asp:TextBox>

                <div class="form-group has-error">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group118" runat="server" ErrorMessage="Enter Activity Name" ControlToValidate="txtActivityName" class="error-message"></asp:RequiredFieldValidator>

                </div>


            </div>
        </div>
        <div class="col-lg-4">

            <div class="form-group">
               <b>Duration</b>

                <table>
                    <tbody>
                    <tr>
                        <td>
                            <asp:TextBox ID="ID1_edu_strDate" runat="server" Text="From Time" CssClass="form-control" class="form-control input_edu_strDate"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="ID1_edu_strDate1" runat="server" Text=" To Time " CssClass="form-control" class="form-control input_edu_strDate"></asp:TextBox>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>

        </div>


    </div>


</div>
<asp:Button ID="Button2" runat="server" Text="Save" class="btn btn-info pull-right" ValidationGroup="Group118"/>

<br/>
<br/>

    <div class="box-body table-responsive">
        
        
        <table id="example1" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>Activity Name</th>
                <th>Duration</th>
                            
                               
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList1" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("activityName") %></td>
                        <td><%#Eval("duration") %></td>
                                    
                        <td><table class="Buttons">
                            <tr>
                                       
                                <td>
                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                <td>
                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                        <i class="fa fa-trash-o"></asp:LinkButton></td>
                            </tr>
                        </table></td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
            </tbody>
            <tfoot>
            <tr>
                <th>Activity Name</th>
                <th>Duration</th>
                            
                               
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>
        



        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:BoundField DataField="ActivityName" HeaderText="ActivityName"/>
                <asp:BoundField DataField="Duration" HeaderText="Duration"/>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>


        </asp:GridView>--%>


    </div>



<div class="row">
    <div class=" col-lg-12">
        <h4 style="margin-left: 15px">Diet</h4>

        <div class="col-lg-4">
            <div class="form-group">
             <b>Breakfast</b>
                <table>
                    <tbody>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtBreakfast" runat="server" placeholder="Time" class="form-control input_edu_strDate"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="Group119" runat="server" ErrorMessage="Enter Time" ControlToValidate="txtBreakfast" class="error-message"></asp:RequiredFieldValidator>

                            </div>
                        </td>

                    </tr>

                    </tbody>
                </table>

            </div>

        </div>
        <div class="col-lg-4">
            <div class="form-group">

             <b>Lunch</b>
                <table>
                    <tbody>
                    <tr>
                        <td>

                            <asp:TextBox ID="txtLunch" runat="server" placeholder="Time" class="form-control input_edu_strDate" CssClass="form-control"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="Group119" runat="server" ErrorMessage="Enter Time" ControlToValidate="txtLunch" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </td>


                    </tr>


                    </tbody>
                </table>
            </div>

        </div>
        <div class="col-lg-4">
            <div class="form-group">

            <b>Dinner</b>
                <table>
                    <tbody>
                    <tr>
                        <td>

                            <asp:TextBox ID="txtDinner" runat="server" placeholder="Time" class="form-control input_edu_strDate"></asp:TextBox>

                            <div class="form-group has-error">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Group119" runat="server" ErrorMessage="Enter Time" ControlToValidate="txtDinner" class="error-message"></asp:RequiredFieldValidator>

                            </div>

                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>

        </div>


    </div>
</div>


<div class="row">
    <div class=" col-lg-12">


        <div class="col-lg-4">
            <div class="form-group">

                <b>What do you take?</b>
                <asp:TextBox ID="txtq1" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
        </div>

        <div class="col-lg-4">
            <div class="form-group">

                <b>What do you take?</b>
                <asp:TextBox ID="txtq2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="form-group">

               <b>What do you take?</b>
                <asp:TextBox ID="txtq3" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
        </div>

    </div>
</div>

<asp:Button ID="Button3" runat="server" Text="Save" class="btn btn-info pull-right" ValidationGroup="Group119"/>

<br/>
<br/>



    <div class="box-body table-responsive">
        
        
        <table id="example2" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>Breakfast Time</th>
                <th>What do you take?</th>
                <th>Lunch Time</th>
                <th>What do you take?</th>
                            
                <th>Dinner Time</th>
                <th>What do you take?</th>
                            
                            
                               
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList2" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("breakfastTime") %></td>
                        <td><%#Eval("whatdoyoutake") %></td>
                        <td><%#Eval("lunchTime") %></td>
                        <td><%#Eval("whatdoyoutake") %></td>
                        <td><%#Eval("dinnerTime") %></td>
                        <td><%#Eval("whatdoyoutake") %></td>
                                    
                        <td><table class="Buttons">
                            <tr>
                                       
                                <td>
                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                <td>
                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                        <i class="fa fa-trash-o"></asp:LinkButton></td>
                            </tr>
                        </table></td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
            </tbody>
            <tfoot>
            <tr>
                <th>Breakfast Time</th>
                <th>What do you take?</th>
                <th>Lunch Time</th>
                <th>What do you take?</th>
                            
                <th>Dinner Time</th>
                <th>What do you take?</th>
                            
                            
                               
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>

        <%--<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView2_RowCommand">

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="BreakfastTime" HeaderText="BreakfastTime"/>
                <asp:BoundField DataField="Whatdoyoutake?" HeaderText="Whatdoyoutake?"/>
                <asp:BoundField DataField="LunchTime" HeaderText="LunchTime"/>
                <asp:BoundField DataField="Whatdoyoutake?" HeaderText="Whatdoyoutake?"/>
                <asp:BoundField DataField="DinnerTime" HeaderText="DinnerTime"/>
                <asp:BoundField DataField="Whatdoyoutake?" HeaderText="Whatdoyoutake?"/>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>


        </asp:GridView>--%>

    </div>



<div class="row">
    <div class=" col-lg-12">
        <h4 style="margin-left: 15px">Sleep</h4>


        <div class="col-lg-7">
            <div class="form-group">


                <table>
                    <tbody>
                    <tr>
                        <td>

                            <asp:TextBox ID="txtfromtime" runat="server" Text="From Time" class="form-control input_edu_strDate" CssClass="form-control"></asp:TextBox>


                        </td>
                        <td>
                            <asp:TextBox ID="txttotime" runat="server" Text="To Time" class="form-control input_edu_strDate" CssClass="form-control"></asp:TextBox>


                        </td>

                    </tr>

                    </tbody>
                </table>
            </div>

        </div>


    </div>
</div>


<div class="row">
    <div class=" col-lg-12">


        <div class="col-lg-3">
            <div class="form-group">

               <b>Any additional Sleeps ?</b>
            </div>

        </div>
        <div class="col-lg-2">
            <div class="form-group">

                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="radio1"/> Yes
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="radio1"/> No

            </div>

        </div>
        <div class="col-lg-5">
            <div class="form-group">

                <table>
                    <tbody>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtFromTime1" runat="server" Text="From Time" class="form-control input_edu_strDate" CssClass="form-control"></asp:TextBox>


                        </td>
                        <td>

                            <asp:TextBox ID="txtToTime1" runat="server" Text="To Time" class="form-control input_edu_strDate" CssClass="form-control"></asp:TextBox>

                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>

        </div>

    </div>
</div>

<asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-info pull-right"/>

<br/><br/>



    <div class="box-body table-responsive ">
        
        
        
        <table id="example3" class="table table-bordered table-striped ">
            <thead>
            <tr>
                <th>SleepFromTime-ToTime</th>
                <th>AdditionalSleepsFromTime-ToTime</th>
                            
                               
                <th>Controls</th>
            </tr>
            </thead>
            <tbody>
                    
                        

            <asp:Repeater ID="DataList3" runat="server" >
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("sleepTime") %></td>
                        <td><%#Eval("addSleepTime") %></td>
                                    
                        <td><table class="Buttons">
                            <tr>
                                       
                                <td>
                                    <asp:LinkButton ID="lnkEdit" data-tooltip="Edit" runat="server" class="btn btnedit btn-warning">
                                        <i class="fa fa-edit"></i></asp:LinkButton></td>
                                <td>
                                    <asp:LinkButton ID="lnkDelete" runat="server" data-tooltip="Delete" class="btn btnedit btn-danger">
                                        <i class="fa fa-trash-o"></asp:LinkButton></td>
                            </tr>
                        </table></td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>
            </tbody>
            <tfoot>
            <tr>
                <th>SleepFromTime-ToTime</th>
                <th>AdditionalSleepsFromTime-ToTime</th>
                            
                               
                <th>Controls</th>
            </tr>
            </tfoot>
        </table>

        <%--<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView3_RowCommand">

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:BoundField DataField="SleepFromTime-ToTime" HeaderText="SleepFromTime-ToTime"/>
                <asp:BoundField DataField="AdditionalSleepsFromTime-ToTime" HeaderText="AdditionalSleepsFromTime-ToTime"/>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                        <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>--%>

    </div>


</div>
</div>
</div>



<!-- For Validation -->

<script src="../validation/js/scrupulous.js">
</script>

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
    
    
<script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
<link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
<link href="../validation/css/main.css" rel="stylesheet"/>
<link href="../validation/css/scrupulous.css" rel="stylesheet"/>
<link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />


<script>

    $(function () {
        $("#example1").DataTable();
    });

    $(function () {
        $("#example2").DataTable();
    });

    $(function () {
        $("#example3").DataTable();
    });

</script>


</asp:Content>