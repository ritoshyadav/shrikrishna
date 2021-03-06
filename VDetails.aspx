﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VDetails.aspx.cs" Inherits="Shrikrishna.VDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
              <!-- Horizontal Form -->
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Vehicel Details</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Vehicel No</label>
                      <div class="col-sm-10">
                          <asp:TextBox ID="txtvehicelno" runat="server" class="form-control" placeholder="Enter Vehicel No"></asp:TextBox> 
                      </div>
                    </div>
                      <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">LR. No</label>
                      <div class="col-sm-10">
                        <asp:TextBox ID="txtlrno" runat="server" class="form-control" placeholder="Enter LR. No"></asp:TextBox>   
                      </div>
                    </div>
                      <div class="form-group">
                      <label for="inputEmail3" class="col-sm-2 control-label">Name Of Transport</label>
                      <div class="col-sm-10">
                          <asp:DropDownList ID="ddlnot1" class="form-control" runat="server" palceholder="Chosse Product Category" AutoPostBack="True" OnSelectedIndexChanged="ddlnot1_SelectedIndexChanged"></asp:DropDownList>
                       <asp:TextBox ID="Txtnot" runat="server" class="form-control" placeholder="Enter Name Of Transport" ></asp:TextBox>   
                      </div>
                    </div>
                      
    <div class="box-body">
                    <div class="form-group">
                      <div class="col-sm-12" style="text-align:center">
                         
                        <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" ForeColor="#339933"></asp:Label>
                         
                      </div>
                    </div>
                  </div><!-- /.box-body -->


                  <div class="box-footer">
                      <center>
                      <asp:Button ID="btnsave" runat="server"  class="btn btn-success" Text="Save" OnClick="Button1_Click" />
                      <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="New" OnClick="Button2_Click" />
                   </center>
                  </div><!-- /.box-footer -->

                         <div class="box-body">
                    <div class="form-group">
                      <div class="col-sm-12" style="text-align:center">
                          <center>
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="GridView1_RowCommand" Width="402px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8">
                              <Columns>
                                  <asp:BoundField DataField="v_no" HeaderText="Vehicle No" />
                                  <asp:BoundField DataField="lr_no" HeaderText="LR.NO" />
                                  <asp:BoundField DataField="n_transport" HeaderText="Name of Transport" />
                                  <asp:TemplateField HeaderText="Edit">
                                      <ItemTemplate>
                                          <asp:Button ID="btnedit" runat="server" CommandArgument='<%# Eval("sr") %>' Text="Edit" CommandName="recordedit" />
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="Delete">
                                      <ItemTemplate>
                                          <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("sr") %>' CssClass="col-lg-pull-4" Text="Delete" CommandName="recorddelete" />
                                      </ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>
                              <FooterStyle BackColor="White" ForeColor="#000066" />
                              <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                              <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Prevoious" Position="TopAndBottom" Mode="NextPrevious" />
                              <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                              <RowStyle ForeColor="#000066" />
                              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                          </asp:GridView>
                        
                              <asp:Label ID="Label2" runat="server"></asp:Label>
                        
                         </center>
                      </div>
                    </div>
                  </div><!-- /.box-body -->
                </form>
              </div><!-- /.box -->
              <!-- general form elements disabled -->
           
            </div>
</asp:Content>
