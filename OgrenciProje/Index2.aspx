<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Index2.aspx.cs" Inherits="OgrenciProje.Index" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-3">
        <img src="/Assets/images/logo.png" alt="" class="img-thumbnail"> 
        <div class="list-group mt-5">
            <img src="/Assets/images/bayrak.jpg" alt="" class="img-thumbnail">
        </div>
       </div>
        <div class="col-9">
            <div class="jumbotron">
                <h1 class="display-4">Karabük Üniversitesi Öğrenci Portalı</h1>
                <p class="lead">Karabük Üniversitesi Öğrenci Portalı'na Hoşgeldin ! Üniversiteye öğrenci ekleme, güncelleme ve silme işlemleri bu portal üzerinden gerçekleştirilmektedir.</p>
                <hr class="my-4">
                <p>Karabük Üniversitesi Öğrenci Hizmet Servislerine ulaşmak için aşağıdaki linklere tıklayınız</p>
                <a class="btn btn-primary" target="_blank" href="https://www.karabuk.edu.tr/" role="button">Sayfaya Git</a>
                <a class="btn btn-success" target="_blank" href="https://oys.karabuk.edu.tr/login/index.php" role="button">OYS Öğrenci</a>
                <a class="btn btn-danger" target="_blank" href="https://obs.karabuk.edu.tr/oibs/ogrenci/login.aspx" role="button">OBS Öğrenci</a>
            </div>
            <div class="mt-5">
                <h6 class="fw-bolder">Üniversitemiz Hakkında</h6>
                <p class="fw-lighter">Karabük Üniversitesi ya da kısaca KBÜ, 2007 yılında kurulmuş bir devlet üniversitesidir. Bulunduğu il olan Karabük'ün ismini taşımaktadır. 2014-2015 Eğitim-Öğretim döneminden itibaren bünyesindeki 14 fakülte, 7 meslek yüksek okulu, 4 yüksek okul ve 4 enstitü ile akademik etkinliklerini sürdürmektedir. Rektörlüğünü Refik Polat, Rektör Yardımcılıklarını Ali Güneş ve İbrahim Kadı yapmaktadır.</p>
            </div>
        </div>
</asp:Content>