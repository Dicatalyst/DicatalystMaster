<%@ Page Title="" Language="C#" MasterPageFile="~/Dentist/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Dentist_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   
    <div class="col-lg-12 col-xs-12">
        
            <div class="box box-default" style="border-color: #ff2971">
                <div class="box-header with-border">
                    <h3 class="box-title">Bill Register - 2/15/2017 - 3/15/2017</h3>


                </div>
                <!-- /.box-header -->
                <div class="box-body" style="display: block;">

   
   
    <input type="button" id="btnAddRow" value="Add" runat="server" />
    <div>
        <asp:GridView ID="myGridView" runat="server" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField>
                    <HeaderTemplate>
                        Modify
                    </HeaderTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dicatalyst %>"
            SelectCommand="SELECT * FROM [odontogram]"></asp:SqlDataSource>
    </div>
    </div>
  </div>
    </div>
        </div>
    <script src="../design/plugins/jQuery/jquery-2.2.3.min.js"></script>
     <script language="javascript" type="text/javascript">

         function fn_AddFilterRow()
         {
             // 1. Get the <table> element corresponding to the gridview from the document
             var table = document.getElementById('myGridView');

             // 2. Insert a new row in the table fetched in step 1.
             var newRow = table.insertRow();

             // 3. Insert an empty cell for the first "Modify" column
             // Column 1 : An empty cell for the "Modify" column
             var newCell = newRow.insertCell();
             newCell.appendChild(btnDelete);

             // 4. Insert an empty cell for "WorkOrderID" in the row created in step 2. above.                                    
             // Column 1 : WorkOrderID
             newCell = newRow.insertCell();
             // In the cell created above, add a textbox in which the user will input the  workorderID value he wishes to insert.
             var newTextBox = document.createElement('input');
             newTextBox.type = 'text';
             newCell.appendChild(newTextBox);
    
             // 5. Insert an empty cell for ProductID in the row created above.
             // Column 2 : ProductID 
             newCell = newRow.insertCell();
             // In the cell created above, add a textbox in which the user will input the ProductID value he wishes to insert.
             var newTextBox = document.createElement('input');
             newTextBox.type = 'text';
             newCell.appendChild(newTextBox);

             // 6. Insert an empty cell for OrderQty in the row created above.                                
             // Column3 : OrderQty
             newCell = newRow.insertCell();
             // In the cell created above, add a textbox in which the user will input the OrderQty value he wishes to insert.
             var newTextBox = document.createElement('input');
             newTextBox.type = 'text';
             newCell.appendChild(newTextBox);
       
             // Do the same for the remaining columns.

         }
    </script>
</asp:Content>

