<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Guncelleme_Silme.aspx.cs" Inherits="OgrenciProje.Guncelleme_Silme" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    
</asp:Content>  
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h6 class="display-6">Öğrenciyi Güncelle & Sil</h6>
              <form class="needs-validation mt-5" novalidate>
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom01">İsim</label>
                    <input type="text" class="form-control" id="validationCustom01" required>
                    <div class="valid-feedback">
                      İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom02">TC Kimlik Numarası</label>
                    <input type="number" class="form-control" id="validationCustom02" required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom01">Şehir</label>
                    <input type="text" class="form-control" id="validationCustom01"required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Telefon Numarası</label>
                    <input type="number" class="form-control" id="validationCustom02" required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom01">Adres</label>
                    <input type="text" class="form-control" id="validationCustom01" required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Okul</label>
                    <input type="text" class="form-control" id="validationCustom02" required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom01">Fakülte</label>
                    <input type="text" class="form-control" id="validationCustom01" required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom02">Bölüm</label>
                    <input type="text" class="form-control" id="validationCustom02" required>
                    <div class="valid-feedback">
                        İyi görünüyor.
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label for="validationCustom03">Sınıf</label>
                    <input type="text" class="form-control" id="validationCustom03" required>
                    <div class="invalid-feedback">
                      Lütfen sınıf bilginizi giriniz.
                    </div>
                  </div>
                  <div class="col-md-3 mb-3">
                    <label for="validationCustom04">Cinsiyet</label>
                    <select class="custom-select" style="display: block; width: 100%; height: 37px;" required>
                        <option selected disabled value="">Seçiniz...</option>
                        <option value="Erkek">Erkek</option>
                        <option value="Kız">Kız</option>
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
                <button class="btn btn-primary btn-lg" type="submit"><i class="fas fa-pen-alt"></i> Bilgileri Güncelle</button>
                <button class="btn btn-danger btn-lg ms-2" type="reset"><i class="fas fa-user-times"></i> Öğrenciyi Sil</button>
            </form>
</asp:Content>
