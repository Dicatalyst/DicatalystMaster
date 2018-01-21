<%@ Page Title="" Language="C#" MasterPageFile="~/patient/MasterPage.master" AutoEventWireup="true" CodeFile="queries.aspx.cs" Inherits="patient_queries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <%-- For Validation--%>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,300" rel="stylesheet" type="text/css"/>

    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="col-lg-12 col-xs-12">
    
            <div class="box box-default" style="border-color: #9088ed">
                <div class="box-header with-border">
                    <h3 class="box-title">Queries</h3>
                    <%--<button type="button" class="btn btn-info pull-right">Dummy</button>--%>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">
                    <div class="box-body ">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="row">
                                    <div class="form-group col-lg-9">
                                     <b>To</b>

                                        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control"></asp:TextBox>
                                        <div class="form-group has-error">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="Group117" runat="server" ErrorMessage="Enter To (Name)" ControlToValidate="txtTo" class="error-message"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>


                                </div>


                                <div class="row">

                                    <div class="form-group col-lg-9">

                                      <b>Query</b>
                                        <asp:TextBox ID="txtQuery" runat="server" TextMode="MultiLine" Rows="2" cols="80" Style="width: 100%" CssClass="form-control"></asp:TextBox>
                                        <div class="form-group has-error">

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="Group117" runat="server" ErrorMessage="Enter Query" ControlToValidate="txtQuery" class="error-message"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>

                                </div>
                                <div class="row" style="margin-left: 300px">

                                    <div class="form-group col-lg-2">

                                        <asp:Button ID="Button1" runat="server" Text="Submit" ValidationGroup="Group117" class="btn btn-info pull-right"/>

                                    </div>
                                </div>


                            </div>

                            <div class="col-lg-8">

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" OnRowCommand="GridView1_RowCommand">

                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="To" HeaderText="To"/>
                                        <asp:BoundField DataField="Queries" HeaderText="Queries"/>
                                        <asp:BoundField DataField="Reply" HeaderText="Reply"/>

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkEdit" runat="server">Edit</asp:LinkButton>
                                                <asp:LinkButton ID="lnkDelete" runat="server" CommandName="deleterow" OnClientClick="return confirm('Are you sure you want to delete this user?')" CommandArgument="<%#Container.DataItemIndex %>">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>


                            </div>
                        </div>
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