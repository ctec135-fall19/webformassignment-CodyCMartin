<!-- 
 Author: Cody Martin
 Task: Bonus Task: A Single-File Web Form App
 IPO: Reads Inventory DAL, updates petname then adds 4 vehicles to list, Presents inventory as a grid list
-->



<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SinglePageModel.Default" %>
<%@ Import Namespace="AutoLotDAL.Models" %>
<%@ Import Namespace="AutoLotDAL.DataOperations" %> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>           
          
            <script runat="server">
                public IEnumerable<AutoLotDAL.Models.Car> GetData()
                {
                    // updates car id:1 petname to cody
                    InventoryDAL car1 = new InventoryDAL();
                    car1.UpdateCarPetName(1, "cody");


                    // Adding 4 cars to the inventory
                    car1.InsertAuto("red", "Honda", "fred");
                    car1.InsertAuto("blue", "Ford", "Ted");
                    car1.InsertAuto("green", "Toyota", "Reggy");
                    car1.InsertAuto("purple", "Honda", "Nat");


                    // returns complete inventory
                    return new InventoryDAL().GetAllInventory();
                }
            </script>

            <asp:GridView ID="carsGridView" runat="server" ItemType="AutoLotDAL.Models.Car" SelectMethod="GetData">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
