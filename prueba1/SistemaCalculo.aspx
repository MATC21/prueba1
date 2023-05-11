<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SistemaCalculo.aspx.cs" Inherits="prueba1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            display:flex;
            justify-content:center;
            align-items:center;
            min-height:50vh;
        }

        .principal{
            top: 20px;
            background-color: antiquewhite;
            width: 500px;
            height: 300px;
            position: relative;
            display:block;
            justify-content: center;
            align-items: center;
            border: 20px solid rgba(255, 255, 255, .5);
            border-radius: 20px;
        }

        .principal h2{
            display: flex;
            align-items: center;
            justify-content: center;
            font-size:2em;
            margin: 5px 0 15px;
        }

        .panel .input-box{
            justify-items:center;
            align-items:center;
            font-size:1.5em;
        } 

        .btngenerar{
            position:relative;
            text-align:center;
            align-items:center;
            
        }

        .btngenerar .btn{
            border:5px solid rgba(255, 255, 255, .5);
            border-radius:20px;
            width:50%;
            background-color:khaki;
            cursor:pointer;

        }

    </style>

    <form id="form1" runat="server">
        <div class="principal">

            <div class="parte1">

                <asp:Panel ID="Pnl1" runat="server" Visible="true" CssClass="panel">
                    <h2>CALCULO VENTAS CURSO</h2>

                    <div class="input-box">
                        <asp:Label ID="lblValorIni" runat="server" Text="Label" CssClass="label">VALOR INICIAL:</asp:Label>
                        <asp:TextBox ID="txtEntradaValorIni" runat="server" CssClass="txt"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                    <div class="input-box">
                        <asp:Label ID="lblmes" runat="server" Text="Label" CssClass="label">MESES:</asp:Label>
                        <asp:DropDownList ID="ddlmes" runat="server" AutoPostBack="true">
                            <asp:ListItem Text="1 MES" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2 MESES" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3 MESES" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4 MESES" Value="4"></asp:ListItem>
                            <asp:ListItem Text="5 MESES" Value="5"></asp:ListItem>
                            <asp:ListItem Text="6 MESES" Value="6"></asp:ListItem>
                            <asp:ListItem Text="7 MESES" Value="7"></asp:ListItem>
                            <asp:ListItem Text="8 MESES" Value="8"></asp:ListItem>
                            <asp:ListItem Text="9 MESES" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10 MESES" Value="10"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <br />
                    <br />
                     <div class="input-box">
                        <asp:Label ID="lblValorCuota" runat="server" Text="Label" CssClass="label">VALOR CUOTA</asp:Label>
                         <asp:Label ID="lblMostrarCuota" runat="server" Text="0" CssClass="label"></asp:Label>
                    </div>

                    <div class="btngenerar">
                    <asp:Button CssClass="btn"  ID="btnGenerarPago" runat="server" Text="GENERAR PAGO" OnClick="btnGenerarPago_Click" />
                    </div>

                </asp:Panel>

            </div>
            <br />
            <br />
            <div class="principal2">

            <div class="parte2">

                <asp:Panel ID="Pnl2" runat="server" Visible="false">
                    <h2>CALCULO VENTAS CURSO</h2>

                    <div class="imp1">
                        <asp:Label ID="lblvcuota" runat="server" Text="Label">VALOR CUOTA</asp:Label>
                        <asp:Label ID="lblmostrarvcuota" runat="server" Text="0"></asp:Label>
                    </div>

                    <div class="imp2">
                        <asp:Label ID="lblvtcurso" runat="server" Text="Label">VALOR TOTAL CURSO</asp:Label>
                        <asp:Label ID="lblmostrarvtcurso" runat="server" Text="0"></asp:Label>
                    </div>

                </asp:Panel>

            </div>

        </div>
    </form>
</body>
</html>
