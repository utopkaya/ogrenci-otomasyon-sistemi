<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Listeleme.aspx.cs" Inherits="OgrenciProje.Listeleme" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12">
        <h6 class="display-6">Kayıtlı Öğrenciler</h6>
        <br>
        <div class="table-responsive">
            <!--
                <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Sıra</th>
                        <th scope="col">Görsel</th>
                        <th scope="col">Ad Soyad</th>
                        <th scope="col">Cinsiyet</th>
                        <th scope="col">Tc No</th>
                        <th scope="col">Telefon No</th>
                        <th scope="col">Şehir</th>
                        <th scope="col">Adres</th>
                        <th scope="col">Okul No</th>
                        <th scope="col">Fakülte</th>
                        <th scope="col">Bölüm</th>
                        <th scope="col">Sınıf</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href=""><i class="fas fa-pen-square font-24px" style="font-size: 32px !important;"></i></a>
                            </th>
                              <td>
                                  <img src="https://raw.githubusercontent.com/ArjunAtlast/Profile-Card/master/assets/john-doe.png" class="img-fluid rounded-circle" style="box-shadow: 5px 5px 10px rgba(102, 102, 102, 0.24), -5px -5px 10px rgba(102, 102, 102, 0.24);"></td>
                        <td>Umut Topkaya</td>
                        <td>Erkek</td>
                        <td>11111111111</td>
                        <td>5555555555</td>
                        <td>İstanbul</td>
                        <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore </td>
                        <td>1910209009</td>
                        <td>Mühendislik</td>
                        <td>Endüstri Mühendisliği</td>
                        <td>2.Sınıf</td>
                    </tr>
                </tbody>
            </table>
                -->
            <hr />
            <form runat="server">
                <asp:GridView ID="Ogrenciler" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton runat="server" ImageUrl="https://cdn0.iconfinder.com/data/icons/glyphpack/45/edit-alt-512.png" CssClass="img-button"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ImageField DataImageUrlField="Gorsel" HeaderText="Gorsel" ControlStyle-CssClass="img-person"></asp:ImageField>
                    <asp:BoundField DataField="Isim" HeaderText="İsim" />
                    <asp:BoundField DataField="Cinsiyet" HeaderText="Cinsiyet"/>
                    <asp:BoundField DataField="Fakulte" HeaderText="Fakulte"/>
                    <asp:BoundField DataField="Bolum" HeaderText="Bolum"/>
                    <asp:BoundField DataField="Sehir" HeaderText="Sehir"/>
                    <asp:BoundField DataField="OkulNo" HeaderText="OkulNo"/>
                    <asp:BoundField DataField="Sinif" HeaderText="Sinif"/>
                    <asp:BoundField DataField="TcNo" HeaderText="TcNo"/>
                    <asp:BoundField DataField="TelNo" HeaderText="TelNo"/>
                    <asp:BoundField DataField="Adres" HeaderText="Adres"/>
                </Columns>
            </asp:GridView>
            </form>


        </div>
    </div>
</asp:Content>
