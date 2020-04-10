pandoc -f markdown-raw_tex Anleitung_Installation_Werkzeuge.md -o Anleitung_Installation_Werkzeuge.html --from markdown
pandoc -f markdown-raw_tex Anleitung_Installation_Werkzeuge.md -o Anleitung_Installation_Werkzeuge.docx --from markdown
pandoc -f markdown-raw_tex -V geometry:margin=2cm Anleitung_Installation_Werkzeuge.md -o Anleitung_Installation_Werkzeuge.pdf --from markdown
