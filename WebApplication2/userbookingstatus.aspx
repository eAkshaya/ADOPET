﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="userbookingstatus.aspx.cs" Inherits="WebApplication2.getservices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            
            <div class="col-md-10">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>BOOKING DETAILS</h4>
                                    </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADOPETDBConnectionString15 %>" SelectCommand="SELECT * FROM [homecaretb] WHERE ([bid] = @bid)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="bid" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bid" DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:BoundField DataField="bid" HeaderText="bid" ReadOnly="True" SortExpression="bid" />
                                            <asp:BoundField DataField="Booked_for" HeaderText="Booked_for" SortExpression="Booked_for" />
                                            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
                                            <asp:BoundField DataField="Pet_type" HeaderText="Pet_type" SortExpression="Pet_type" />
                                            <asp:BoundField DataField="Pet_breed" HeaderText="Pet_breed" SortExpression="Pet_breed" />
                                            <asp:BoundField DataField="Owner_name" HeaderText="Owner_name" SortExpression="Owner_name" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                            <asp:BoundField DataField="Pin" HeaderText="Pin" SortExpression="Pin" />
                                            <asp:BoundField DataField="Slot" HeaderText="Slot" SortExpression="Slot" />
                                            <asp:BoundField DataField="Booking_status" HeaderText="Booking_status" SortExpression="Booking_status" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
 
</asp:Content>
