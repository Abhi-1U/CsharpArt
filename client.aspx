<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="client.aspx.cs" Inherits="randomart.client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

<form id="form1" runat="server">
        <div>
            <canvas class="canvas" width="400" height="400" runat="server"></canvas>
            
            <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" Text="Refresh" />

            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Clear" />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br /><br />     
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
    <script>
        var canvas = document.getElementsByTagName("canvas");
        var ctx = canvas.item(0).getContext("2d");
        ctx.beginPath();
        function clear() {
            ctx.clearRect(0, 0, 400, 400);
        }
        function refresh() {
            var canvas = document.getElementsByTagName("canvas");
            var ctx = canvas.item(0).getContext("2d");
            var i;
            var data = document.getElementById("Label1").innerText;
            for (i = 0; i < (data.length / 6); i++) { 
                var sdata = data.split(" ")
                console.log(sdata);
                var x = parseInt(sdata[i+0]);
                var y = parseInt(sdata[i+1]);
                var radius = parseInt(sdata[i+2]);
                var r = parseInt(sdata[i+3]);
                var g = parseInt(sdata[i+4]);
                var b = parseInt(sdata[i + 5]);
                ctx.beginPath();
                ctx.arc(x, y, radius, Math.PI * 2, 0, false);
                ctx.fillStyle = "rgba(" + r + "," + g + "," + b + ",1)";
                ctx.fill();
                ctx.closePath();
            }
        }
        refresh();
        ctx.closePath();
    </script>
</body>
</html>
