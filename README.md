Template LaTeX Teknik Mesin ITB
===================================
oleh: Nicholas Putra Rihandoko
templat asli oleh: Petra Novandi <me@petrabarus.net>
diperbarui oleh: [Dionesius Agung](https://github.com/dionesiusap)  
diadaptasi oleh: [Irfan Tito](https://github.com/titoirfan)

Dokumen ini merupakan templat LaTeX yang ditujukan untuk laporan
tesis di program studi Teknik Mesin ITB. Template ini penulis
gunakan dalam penulisan laporan tesis penulis dan dengan semangat
berbagi penulis memutuskan untuk mempublikasikan template ini agar
dapat digunakan oleh banyak orang.

Silakan mengunduh, menggunakan, memodifikasi, dan menyebarkan
templat ini. :)

Kebutuhan
---------

Program telah diuji dalam sistem operasi Linux Ubuntu 14.04.
> **Update (2020/06/04)** Template telah diuji dan berjalan dengan baik dalam OS Linux
> Ubuntu 16.04 dan 18.04.
> **Update (2020/09/28)** Template telah diuji dan berjalan dengan baik dalam OS Linux
> Ubuntu 20.04
> **Update (2022/06/22)** Template telah diuji dan berjalan dengan baik dalam OS Windows
> Windows 11 21H2

Untuk melakukan instalasi perangkat lunak yang dibutuhkan pada sistem operasi Linux, eksekusi perintah berikut.

```
sudo apt-get -qq update && sudo apt-get install -y --no-install-recommends \
    texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra \
    dvipng texlive-latex-recommended \
    texlive-bibtex-extra biber xzdec texlive-lang-other \
    latexmk
```

Untuk melakukan instalasi perangkat lunak yang dibutuhkan pada sistem operasi Windows, dengan VSCode telah ter-install lakukan tiga langkah berikut:

1. Install TexLive dari link berikut.
* https://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe

2. Install VSCode extension:
* LaTex Workshop (by James Yu)
* LaTex Utilities (by tecosaur)

3. Ikuti pengaturan pada link youtube berikut ini.
* 
```
// pada bagian "latex-workshop.latex.recipes"
        {
            "name": "latexmk ➞ copyPDF",
            "tools": [
                "latexmk",
                "copyPDF"
            ]
        },

//pada bagian "latex-workshop.latex.tools"
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=ignore",
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "copyPDF",
            "command": "powershell.exe",
            "args": [
                "Copy-Item -Path '.\\ignore\\thesis.pdf' -Destination '.\\out'",
            ],
            "env": {}
        },
```
Penggunaan
----------

Template ini telah dilengkapi oleh skrip untuk melakukan kompilasi
Makefile. Untuk melakukan kompilasi pertama kali pada Linux, cukup eksekusi perintah berikut.

```
make
```

atau pada Windows

```
.\make
```

Hasil kompilasi akan berada pada berkas `out/thesis.pdf`. Untuk selanjutnya, cukup save file .tes yang telah di-edit maka thesis.pdf akan otomatis ter-update.

Menulis dokumen juga bisa menggunakan aplikasi tex editor seperti
[TeXstudio](https://www.texstudio.org/) atau [overleaf](https://www.overleaf.com).

Terima Kasih
-----------

* Steven Lolong atas pemberian template LaTeX yang asli.
* Peb Ruswono Aryan atas bantuan pelengkapan struktur dokumen.
* Petra Novandi sebagai pemilik Template LaTeX Tesis Informatika ITB.
* Dionesius Agung atas pembaharuan Template LaTeX Tesis Informatika ITB.
* Irfan Tito atas adaptasi Template LaTeX Tesis Informatika ITB untuk Teknik Biomedis.
* Mario Gunawan dan Adrian Stanislaus atas bantuan penggunaan LaTex dan VSCode