<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="myFavpasTime.Home" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        body {
            background-color: #000;
            padding: 1%;
            color: #ccc;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 1em;
        }

        .console {
            font-family: "Lucida Sans Typewriter", "Lucida Console", Monaco, "Bitstream Vera Sans Mono", monospace;
        }

        input[type="button"] {
            cursor: pointer;
        }
    </style>

    <script src="dist/jquery-3.2.1.js"></script>
    <script type="text/javascript">
        var captionLength = 0;
        var caption = '';


        $(document).ready(function () {


            setInterval('cursorAnimation()', 600);
            captionEl = $('#caption');
            testTypingEffect();

            $('#test-typing').click(function () {
                testTypingEffect();
            });

            $('#test-erasing').click(function () {
                testErasingEffect();
            });
        });

        function testTypingEffect() {
            //caption = $('input#user-caption').val();
            caption = "Welcome to my world..Hope you are doing well.Let's start "
            type();
        }

        function type() {
            captionEl.html(caption.substr(0, captionLength++));
            if (captionLength < caption.length + 1) {
                setTimeout('type()', 50);
            } else {
                captionLength = 0;
                caption = '';
            }
        }

        function testErasingEffect() {
            caption = captionEl.html();
            captionLength = caption.length;
            if (captionLength > 0) {
                erase();
            } else {
                $('#caption').html("You didn't write anything to erase, but that's ok!");
                setTimeout('testErasingEffect()', 1000);
            }
        }

        function erase() {
            captionEl.html(caption.substr(0, captionLength--));
            if (captionLength >= 0) {
                setTimeout('erase()', 50);
            } else {
                captionLength = 0;
                caption = '';
            }
        }

        function cursorAnimation() {
            $('#cursor').animate({
                opacity: 0
            }, 'fast', 'swing').animate({
                opacity: 1
            }, 'fast', 'swing');
        }
    </script>
        <div>
            <%--   <p>
                <input type="text" id="user-caption" value="Type something here!" />
                <input type="button" id="test-typing" value="Test Typing Effect" />
                <input type="button" id="test-erasing" value="Test Erasing Effect" />
            </p>--%>
            <p class="console">
                <span>Hello,<label id="lblUserName" runat="server"></label></span><span id="caption"></span><span id="cursor">|</span>

                <asp:Panel ID="Panel1" runat="server" Visible="false">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
                        <Columns>
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:TemplateField HeaderText="Role">
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlRoles" runat="server">
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Role">
                                <ItemTemplate>
                                    <asp:Button ID="btnUpdate" Text="Update" runat="server" CommandArgument='<%# Eval("UserId") %>'
                                        OnClick="UpdateRole" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </p>
        </div>
    <h1>
        Home</h1>
    <asp:Panel ID="pnlAssignRoles" runat="server" Visible="false">
        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlRoles" runat="server">
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:Button ID="btnUpdate" Text="Update" runat="server" CommandArgument='<%# Eval("UserId") %>'
                            OnClick="UpdateRole" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
