import 'dart:math';

TestYapisi BenimTestim = new TestYapisi();
var rnd = Random();
int aktif_sorum = 0, sayac = 0, dogru_sayisi = 0, yanlis_sayisi = 0;

//yapı
class TestYapisi {
  //nitelikler özellikler
  List<Soru> Sorular = [
    Soru(
        soru_metni:
            "Mustafa Kemal Atatürk’ün nüfusa kayıtlı olduğu il hangisidir?",
        a: "Bursa",
        b: "Ankara",
        c: "İstanbul",
        d: "Gaziantep",
        cevap: "D"),
    Soru(
        soru_metni: "Çanakkale Zaferi’nin dahil olduğu savaş hangisidir?",
        a: "I. Dünya Savaşı",
        b: "Kurtuluş Savaşı",
        c: "Balkan Savaşları",
        d: "II. Dünya Savaşı",
        cevap: "A"),
    Soru(
        soru_metni: "Romen rakamlarında hangi sayı yoktur?",
        a: "0",
        b: "50",
        c: "100",
        d: "1000",
        cevap: "A"),
    Soru(
        soru_metni:
            "Aşağıdakilerden hangisi Dünya Sağlık Örgütü'nün kısaltılmış ismidir?",
        a: "Uhw",
        b: "Unicef",
        c: "Who",
        d: "Nato",
        cevap: "C"),
    Soru(
        soru_metni: "Bir gün kaç saniyedir?",
        a: "86000",
        b: "88600",
        c: "86400",
        d: "84800",
        cevap: "C"),
    Soru(
        soru_metni:
            "Aşağıda verilen ilk çağ uygarlıklarından hangisi yazıyı icat etmiştir?",
        a: "Hititler",
        b: "Elamlar",
        c: "Sümerler",
        d: "Urartular",
        cevap: "C"),
    Soru(
        soru_metni: "Hangi ilimizde demiryolu yoktur?",
        a: "Batman",
        b: "Kütahya",
        c: "Aydın",
        d: "Muğla",
        cevap: "D"),
    Soru(
        soru_metni: "Aşağıdaki ülkelerden hangisinin nüfusu daha fazladır?",
        a: "İspanya",
        b: "Fransa",
        c: "İngiltere",
        d: "Almanya",
        cevap: "D"),
    Soru(
        soru_metni: "Hangisi periyodik cetvelde bulunan bir element değildir?",
        a: "Ho",
        b: "Pe",
        c: "Tm",
        d: "Ce",
        cevap: "B"),
    Soru(
        soru_metni:
            "Aşağıdakilerden hangisi fizik biliminin ilgi alanına girmez?",
        a: "Dünya'nın manyetik alanı",
        b: "Yüksek hızlı trenler",
        c: "Yanma olayı",
        d: "Teleskopların çalışma prensibi",
        cevap: "C"),
    Soru(
        soru_metni: "'Küçük Prens' adlı hikayenin yazarı kimdir?",
        a: "Charles Dickens",
        b: "Antoine de Saint",
        c: "La Fontaine",
        d: "Samed Behrengi",
        cevap: "B"),
    Soru(
        soru_metni: "Türkiye'nin uluslararası telefon kodu kaçtır?",
        a: "+23",
        b: "+90",
        c: "+453",
        d: "+800",
        cevap: "B"),
    Soru(
        soru_metni: "Hangi gezegen Güneş'e daha uzak mesafededir?",
        a: "Venüs",
        b: "Mars",
        c: "Jüpiter",
        d: "Uranüs",
        cevap: "D"),
    Soru(
        soru_metni: "Aşağıda verilen illerden hangileri aynı bölgededir?",
        a: "Çorum-Amasya",
        b: "Manisa-Balıkesir",
        c: "Osmaniye-Malatya",
        d: "Erzincan-Trabzon",
        cevap: "A"),
    Soru(
        soru_metni: "Ankara ne zaman başkent olmuştur?",
        a: "1919",
        b: "1923",
        c: "1928",
        d: "1933",
        cevap: "B"),
    Soru(
        soru_metni: "Hangi ülkenin iki tane başkenti vardır?",
        a: "Güney Afrika",
        b: "Senegal",
        c: "El Salvador",
        d: "Venezuela",
        cevap: "A"),
    Soru(
        soru_metni: "Düzgün bir sekizgenin iç açıları toplamı kaç derecedir?",
        a: "900",
        b: "1080",
        c: "1200",
        d: "1440",
        cevap: "B"),
    Soru(
        soru_metni: "'Sinekli Bakkal' romanının yazarı kimdir?",
        a: "Reşat Nuri Güntekin",
        b: "Halide Edip Adıvar",
        c: "Ziya Gökalp",
        d: "Ömer Seyfettin",
        cevap: "B"),
    Soru(
        soru_metni:
            "Aşağıdakilerden hangisi en çok şampiyon olan futbol takımıdır?",
        a: "Galatasaray",
        b: "Fenerbahçe",
        c: "Beşiktaş",
        d: "Trabzonspor",
        cevap: "A"),
    Soru(
        soru_metni: "Hangi ülke Avrupa kıtasında değildir?",
        a: "Danimarka",
        b: "Estonya",
        c: "Bosna-Hersek",
        d: "Botsvana",
        cevap: "D"),
    Soru(
        soru_metni: "Hangi hayvan memeli değildir?",
        a: "Yarasa",
        b: "Yunus",
        c: "Penguen",
        d: "Balina",
        cevap: "C"),
    Soru(
        soru_metni: "Hangi şarkı sesi en yüksek perdedir?",
        a: "Bariton",
        b: "Soprano",
        c: "Tenor",
        d: "Alto",
        cevap: "B"),
    Soru(
        soru_metni: "Aşağıdakilerden hangisi en sert doğal maddedir?",
        a: "Yakut",
        b: "Grafit",
        c: "Safir",
        d: "Elmas",
        cevap: "D"),
    Soru(
        soru_metni: "Kanuni Sultan Süleyman kaç yıl hüküm sürmüştür?",
        a: "10",
        b: "25",
        c: "38",
        d: "46",
        cevap: "D"),
    Soru(
        soru_metni: "Fransız ihtilali hangi yılda olmuştur?",
        a: "1678",
        b: "1789",
        c: "1812",
        d: "1923",
        cevap: "B"),
  ];
  //metod

  //sonraki soruya geç
  void sonraki_soruya_gec() {
    sayac++;
    if (sayac >= 12) {}
  }

  //soru metnini yaz
  String soru_metnini_yaz() {
    aktif_sorum =
        rnd.nextInt(23); //Sorular bulunduktan sonra 25 olarak düzeltilecek.
    return Sorular[aktif_sorum].Soru_Metni;
  }

  String a_sikki_yaz() {
    return Sorular[aktif_sorum].A_sikki;
  }

  String b_sikki_yaz() {
    return Sorular[aktif_sorum].B_sikki;
  }

  String c_sikki_yaz() {
    return Sorular[aktif_sorum].C_sikki;
  }

  String d_sikki_yaz() {
    return Sorular[aktif_sorum].D_sikki;
  }

  void cevabi_kontrol_et(String k_cevabi) {
    if (Sorular[aktif_sorum].Cevap == k_cevabi) {
      dogru_sayisi++;
    } else {
      yanlis_sayisi++;
    }
    sonraki_soruya_gec();
  }
}

//YAPI
class Soru {
  //nitelikler ve özellikler
  String Soru_Metni = "";
  String A_sikki = "";
  String B_sikki = "";
  String C_sikki = "";
  String D_sikki = "";
  String Cevap = "";

  //yapıcı metod
  Soru(
      {required String soru_metni,
      required String a,
      required String b,
      required String c,
      required String d,
      required String cevap}) {
    Soru_Metni = soru_metni;
    A_sikki = a;
    B_sikki = b;
    C_sikki = c;
    D_sikki = d;
    Cevap = cevap;
  }
}
