<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forum.aspx.cs" Inherits="Forum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    <style>
        .modal-dialog {
            margin: 30px auto;
            width: 60%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
<div class="col-lg-12 col-xs-12">
<!-- small box -->



<div class="box box-default" style="border-color: #ef600c">
<div class="box-header with-border">
    <h3 class="box-title">Forum </h3>
    <a type="button" class="btn btn-info pull-right" href="ForumThreads.aspx">Create Thread</a>
    <button type="button" class="btn btn-info pull-right" onclick="open_container();">Create Topic</button>



</div>
<div class="box-body" style="display: block;">
                
    <div class="table-responsive no-padding">

        <asp:GridView ID="grdTopic" runat="server" AutoGenerateColumns="false" CssClass="
                                            table table-striped table-bordered table-hover" OnRowCommand="grdTopic_RowCommand">

            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:BoundField DataField="topicName" HeaderText="TopicName" />
                <asp:BoundField DataField="description" HeaderText="Description" />
                <asp:BoundField DataField="dateTime" HeaderText="DateTime" />
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


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-bodyku">


                <div class="box box-primary" style="border-color: #3ae3f5">
                    <div class="box-header with-border">
                        <h3 class="box-title">Create Topic</h3>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <b>Create Topic</b>

                                        <asp:TextBox ID="txtTopic" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <b>Description</b>

                                        <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                            <div class="pull-right">

                                <asp:Button ID="btntopic" runat="server" Text="Save" class="btn btn-info" OnClick="btntopic_Click" />

                            </div>
                        </div>
                        



                    </div>


                </div>


            </div>

        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->


</div>


<!-- /.box-header -->

</div>
<!-- /.box -->

</div>


<script language="javascript">
    function open_container() {

        $('#myModal').modal('show');

    }
 
</script>
</asp:Content>

