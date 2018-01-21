<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Admin_News" %>

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
        
        <div class="box box-default" style="border-color: #1e282c;">
            <div class="box-header with-border">
                <h3 class="box-title">News</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body" >

                <div class="row">

                    <div class="col-lg-12">

                        <div class="col-lg-6">

                            <div class="form-group">


                                <b>Title</b>

                                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                            
                            <div class="form-group">


                                <b>Reference Link</b>

                                <asp:TextBox ID="txtReferenceLink" runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                            
                            
                            
                            <div class="form-group">

                                <b>Picture </b>

                                <asp:FileUpload ID="flPicture" runat="server" />

                            </div>
                            
                            </div>

                            
                        <div class="col-lg-6">


                            <div class="form-group">

                                <b>Description </b>

                                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>


                            </div>
                            
                            

                            <asp:Button ID="btnNews" runat="server" Text="Add" CssClass="btn btn-success pull-right" OnClick="btnNews_OnClick"  />

                        </div>
                        
                        
                        
                        



                    </div>

                </div>


            </div>
            
            
            
            
            
            
            <div class="box-body table-responsive ">
                    
                    
                    
                <table id="example1" class="table table-bordered table-striped ">
                    <thead>
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Reference Link</th>
                        <th>File Upload</th>
                            
                        <th>Date Time</th>
                        <th>Is Active</th>
                            
                            
                               
                        <th>Controls</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                        

                    <asp:Repeater ID="DataList1" runat="server" >
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("title") %></td>
                                <td><%#Eval("description") %></td>
                                <td><%#Eval("referenceLink") %></td>
                                <td><%#Eval("flPicture") %></td>
                                <td><%#Eval("dateTime") %></td>
                                <td><%#Eval("isActive") %></td>

                                    
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
                        <th>Title</th>
                        <th>Description</th>
                        <th>Reference Link</th>
                        <th>File Upload</th>
                            
                        <th>Date Time</th>
                        <th>Is Active</th>
                            
                            
                               
                        <th>Controls</th>
                    </tr>
                    </tfoot>
                </table>
                    

                    

                


            </div>
        </div>
    </div>
    
    
    
    
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
    <link href="../validation/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../validation/css/main.css" rel="stylesheet"/>
    <link href="../validation/css/scrupulous.css" rel="stylesheet"/>
    <link href="../design/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" />


    <script>

        $(function () {
            $("#example1").DataTable();
        });
    </script>
</asp:Content>

