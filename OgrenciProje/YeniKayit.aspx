<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="YeniKayit.aspx.cs" Inherits="OgrenciProje.YeniKayit" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="col-12">
            <h6 class="display-6">Öğrenci Kaydet</h6>
            <form method="post" runat="server">
                <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
                <div class="row">
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom01">İsim</label>
                    <asp:TextBox ID="isim" runat="server" CssClass="form-control"></asp:TextBox>
                        
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom02">TC Kimlik Numarası</label>
                    <asp:TextBox ID="tcno" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom01">Şehir</label>
                    <asp:TextBox ID="sehir" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Telefon Numarası</label>
                    <asp:TextBox ID="telno" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom01">Adres</label>
                    <asp:TextBox ID="adres" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Okul</label>
                    <asp:TextBox ID="okul" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom01">Fakülte</label>
                    <asp:TextBox ID="fakulte" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Bölüm</label>
                    <asp:TextBox ID="bolum" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                    </div>
                </div>
    
                <div class="row">
                    <div class="col-md-6 mb-3">
                    <label for="validationCustom03">Sınıf</label>
                    <asp:TextBox ID="sinif" runat="server" CssClass="form-control"></asp:TextBox>
                    <div class="invalid-feedback">
                        Lütfen sınıf bilginizi giriniz.
                    </div>
                    </div>
                    <div class="col-md-3 mb-3">
                    <label for="validationCustom04">Cinsiyet</label>

                    <select id="MovieType" name="MovieType" class="form-control">
                        <option value="Kız">Kız</option>
                        <option value="Erkek">Erkek</option>
                    </select>
                    <div class="invalid-feedback">
                        Lütfen cinsiyet bilginizi giriniz.
                    </div>
                    </div>
                    <div class="col-md-3 mb-3">
                    <label for="validationCustom05">Fotoğrafınız</label>
                    <input type="file" class="form-control" id="validationCustom05" required>
                    <div class="invalid-feedback">
                        Lütfen fotoğrafınızı ekleyiniz.
                    </div>
                    </div>
                </div>
                <asp:Button ID="kaydetButton" runat="server" Text="Öğrenciyi Kaydet" CssClass="btn btn-primary btn-lg" OnClick="kaydetButton_Click" />
                <button class="btn btn-danger btn-lg ms-2" type="reset"> <i class="fas fa-broom"></i> Formu Temizle</button>
            </asp:GridView>
           </form>

            <asp:Label ID="durumLabel" runat="server" Text="Label"></asp:Label>

        </div>
</asp:Content>