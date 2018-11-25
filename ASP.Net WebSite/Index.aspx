<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>
    <script src="Content/jquery-1.10.2.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Content/bootstrap.min.js"></script>
</head>
<body>
    <h1>Insert, Ubdate and Delete ==> ASP.NET Web Forms</h1>
    <form id="form1" runat="server" class="form-control" cssClass="form-control" style="height: auto; width: 50%; text-align: center;">
        <div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
        <asp:TextBox style="display: none;" ID="hiddenRow" runat="server"></asp:TextBox>
        <a href="#" class="btn btn-block btn-primary" data-toggle="modal" data-target="#myModal"> New </a>

        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <a href="#" class="close" data-dismiss="modal">&times;</a>
                        <h3 class="modal-title">Add Employee</h3>
                    </div>
                    <div class="modal-body" id="myModelbodyDiv">
                    
                         <h4>Add New Employee</h4>
                        <table class="table table-responsive">
                            <tr>
                                <td>Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Department Number</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    
                    </div>
                    <div class="modal-footer">
                        <a href="#" class="btn btn-default" data-dismiss="modal">Cancle</a>
                        <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-primary " OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="myModal1">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <a href="#" class="close" data-dismiss="modal">&times;</a>
                        <h3 class="modal-title">Edit Employee</h3>
                    </div>
                    <div class="modal-body" id="myModelbodyDiv1">
                    
                         <h4>Employee Details:</h4>
                        <table class="table table-responsive">
                            <tr>
                                <td>Name</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    
                    </div>
                    <div class="modal-footer">
                        <a href="#" class="btn btn-default" data-dismiss="modal">Cancle</a>
                        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn btn-success" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="myModal2">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <a href="#" class="close" data-dismiss="modal">&times;</a>
                    <h3 class="modal-title">Delete Employee</h3>
                </div>
                <div class="modal-body" id="myModelbodyDiv2">
                    
                     <h4>Are You Sure? You want to delete this Employee.</h4>
                    
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-default" data-dismiss="modal">Cancle</a>
                    <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="Button3_Click" />
                </div>
            </div>
        </div>
    </div>
    </form>
    
    <script>

        var ShowEmployee = function (index) {
            $("#hiddenRow").val(index);

            $("#TextBox4").val($("#name-" +index).text());
            $("#TextBox5").val($("#address-" +index).text());
        }

        var DeleteEmployee = function (index) {
            $("#hiddenRow").val(index);
        }


    </script>
</body>
</html>
