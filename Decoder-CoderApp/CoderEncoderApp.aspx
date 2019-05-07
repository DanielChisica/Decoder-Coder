<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoderEncoderApp.aspx.cs"%>
<%@ Import Namespace="Decoder_CoderApp.Models" %>

<!DOCTYPE html>
<script runat="server">


    Coder coder = new Coder();

    string decodedText = "";
    string textToDecode = "";



    protected void EncryptButton_Click(object sender, EventArgs e)
    {
        coder.FillDictionary();
        coder.SelectedLetterCoder = keyDropdown.SelectedValue.ToCharArray()[0];
        decodedText =  coder.Encode(TextField.Text);
        EncryptedString.Text = decodedText;

    }

    protected void EncryptedString_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextField_TextChanged(object sender, EventArgs e)
    {

    }

    protected void decodeButton_Click(object sender, EventArgs e)
    {
        coder.FillDictionary();
        coder.SelectedLetterDecoder = coder.SelectedLetterCoder = keydropdown2.SelectedValue.ToCharArray()[0];
        var answer = coder.Decode(encryptedcodes.Text);
        originalString.Text = answer;
    }

    protected void encryptedcodes_TextChanged(object sender, EventArgs e)
    {

    }

    protected void originalString_TextChanged(object sender, EventArgs e)
    {

    }
</script>

<html lang="en">
<head runat="server">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="Content/Site.css" rel="stylesheet" type="text/css">
  <script src="Scripts/bootstrap.min.js"></script>
  <script src="Scripts/jquery-1.9.1.min.js"></script>
  <script src="Scripts/jquery.signalR-2.4.1.min.js"></script>
  <script src="signalr/hubs"></script>
  
    <style type="text/css">
        #Chatbox {
            width: 1175px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
<form id="frm" runat="server">
<div class="jumbotron text-center">
    <div id="Tittle">
        <h1>Coder-Encoder App</h1>
    </div>
</div>
  
<div class="container">
    <div class="row">
      <h3>Coder</h3>
    <div id="Coder">
      <asp:Label ID="labeltext" runat="server" Text="Text: "></asp:Label>
      <asp:TextBox ID="TextField" runat="server" size="50" OnTextChanged="TextField_TextChanged"></asp:TextBox>
        <br />
        <br />
      <asp:Label ID="labelkey" runat="server" Text="Key Letter: "></asp:Label>
        <asp:DropDownList ID="keyDropdown" runat="server" style="width:200px;">
            <asp:ListItem Value="a"></asp:ListItem>
            <asp:ListItem Value="b"></asp:ListItem>
            <asp:ListItem Value="c"></asp:ListItem>
            <asp:ListItem Value="d"></asp:ListItem>
            <asp:ListItem Value="e"></asp:ListItem>
            <asp:ListItem Value="f"></asp:ListItem>
            <asp:ListItem Value="g"></asp:ListItem>
            <asp:ListItem Value="h"></asp:ListItem>
            <asp:ListItem Value="i"></asp:ListItem>
            <asp:ListItem Value="j"></asp:ListItem>
            <asp:ListItem Value="k"></asp:ListItem>
            <asp:ListItem Value="l"></asp:ListItem>
            <asp:ListItem Value="m"></asp:ListItem>
            <asp:ListItem Value="n"></asp:ListItem>
            <asp:ListItem Value="ñ"></asp:ListItem>
            <asp:ListItem Value="o"></asp:ListItem>
            <asp:ListItem Value="p"></asp:ListItem>
            <asp:ListItem Value="q"></asp:ListItem>
            <asp:ListItem Value="r"></asp:ListItem>
            <asp:ListItem Value="s"></asp:ListItem>
            <asp:ListItem Value="t"></asp:ListItem>
            <asp:ListItem Value="u"></asp:ListItem>
            <asp:ListItem Value="v"></asp:ListItem>
            <asp:ListItem Value="w"></asp:ListItem>
            <asp:ListItem Value="x"></asp:ListItem>
            <asp:ListItem Value="y"></asp:ListItem>
            <asp:ListItem Value="z"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="EncryptButton" runat="server" Text="Encrypt String" OnClick="EncryptButton_Click"/>

        <br />
        <br />
      <asp:TextBox ID="EncryptedString" runat="server" size="50" Height="85px" Width="434px" OnTextChanged="EncryptedString_TextChanged"></asp:TextBox>
        <br />
        <br />

    </div>
    </div>
    <div class="row">
      <h3>Decoder<div id="Decoder">
      <asp:Label ID="codeslabel" runat="server" Text="Encrypted codes: "></asp:Label>
      <asp:TextBox ID="encryptedcodes" runat="server" size="50" OnTextChanged="encryptedcodes_TextChanged"></asp:TextBox>
        <br />
        <br />
      <asp:Label ID="labelkey2" runat="server" Text="Key Letter: "></asp:Label>
        <asp:DropDownList ID="keydropdown2" runat="server" Height="28px" Width="153px">
            <asp:ListItem Value="a"></asp:ListItem>
            <asp:ListItem Value="b"></asp:ListItem>
            <asp:ListItem Value="c"></asp:ListItem>
            <asp:ListItem Value="d"></asp:ListItem>
            <asp:ListItem Value="e"></asp:ListItem>
            <asp:ListItem Value="f"></asp:ListItem>
            <asp:ListItem Value="g"></asp:ListItem>
            <asp:ListItem Value="h"></asp:ListItem>
            <asp:ListItem Value="i"></asp:ListItem>
            <asp:ListItem Value="j"></asp:ListItem>
            <asp:ListItem Value="k"></asp:ListItem>
            <asp:ListItem Value="l"></asp:ListItem>
            <asp:ListItem Value="m"></asp:ListItem>
            <asp:ListItem Value="n"></asp:ListItem>
            <asp:ListItem Value="ñ"></asp:ListItem>
            <asp:ListItem Value="o"></asp:ListItem>
            <asp:ListItem Value="p"></asp:ListItem>
            <asp:ListItem Value="q"></asp:ListItem>
            <asp:ListItem Value="r"></asp:ListItem>
            <asp:ListItem Value="s"></asp:ListItem>
            <asp:ListItem Value="t"></asp:ListItem>
            <asp:ListItem Value="u"></asp:ListItem>
            <asp:ListItem Value="v"></asp:ListItem>
            <asp:ListItem Value="w"></asp:ListItem>
            <asp:ListItem Value="x"></asp:ListItem>
            <asp:ListItem Value="y"></asp:ListItem>
            <asp:ListItem Value="z"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="decodeButton" runat="server" Text="Decode" OnClick="decodeButton_Click" Height="37px" Width="119px"/>

        <br />
        <br />
      <asp:Label ID="stringlabel" runat="server" Text="Original String: "></asp:Label>
      <asp:TextBox ID="originalString" runat="server" size="50" OnTextChanged="originalString_TextChanged"></asp:TextBox>
        <br />
        <br />

    </div>
    </div>
    <div class="row">
      <h3>Chat</h3>
        <div id="Chatbox" class="container">
        <br />
        <br />
        <div class="row">
            <!-- Chat users list -->
            <div class="col-xs-4 col-md-2">
                <div class="panel panel-default">
                    <div class="panel-heading" id="onlineUsersCount">Online users: 0</div>
                    <div class="panel-body panel-fixed-height">
                        <ul id="userList"></ul>
                    </div>
                </div>
            </div>

            <!--Chat window-->
            <div class="col-xs-8 col-md-10" id="chatPanel">
                <div class="panel panel-default">
                    <div class="panel-heading">Users' messages:</div>
                    <div class="panel-body panel-fixed-height">
                        <ul id="messagesArea"></ul>
                    </div>
                </div>
                <div class="input-group">
                    <input type="text" class="form-control" id="userMessage" placeholder="Write your message">
                    <span class="input-group-btn">
                        <a class="btn btn-default" id="btnSendMessage">Send!</a>
                    </span>
                </div>
            </div>
        </div>
        </div>
  </div>
</div>
</form>
</body>
</html>
