# Anleitung: Installation der Werkzeuge unter Windows 10
Datum: 02.04.2020

## 1. Java Development Kit (JDK)

### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf, um das JDK herunter zu laden: https://jdk.java.net/  
2. Öffnen Sie die Seite der aktuellen Version. Diese wird bei `Ready for use` genannt. (aktuell: JDK 14) 
3. Unter `Builds` finden Sie das Archiv zum Download. Klicken Sie auf `zip`, hinter `Windows/x64` um den 
Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner, z.B. unter Downloads.
4. Öffnen Sie das die Datei openjdk-14_windows-x64_bin.zip mit einem Doppelklick. Das Archiv enthält den 
Ordner `jdk-14`. Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME. Dies können Sie 
einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer Fenster öffnen und
anschließend den Ordner `jdk-14` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.

### Umgebungsvraiablen setzen

Damit das JDK in der Console und von anderen Programmen gefunden werden kann, muss der Speicherort durch
Umgebungsvraiablen bekannt gemacht werden.  

5. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvraiablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
6. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
7. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\Users\USERNAME\jdk-14\bin`. Klicken Sie auf 
`Ok`.
8. Wählen Sie nun im Fenster `Umgebungsvariablen` wieder im oberen Bereich `Neu...`. Geben Sie bei 
`JAVA_HOME` als Name und `C:\Users\USERNAME\jdk-14\` als Wert der Variable ein und klicken Sie auf `Ok`.
9. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

### Test

10. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
11. Geben Sie ein: `java -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
openjdk version `14` 2020-03-17
OpenJDK Runtime Environment (build 14+36-1461)
OpenJDK 64-Bit Server VM (build 14+36-1461, mixed mode, sharing)
```
12. Geben Sie nun `%JAVA_HOME%\bin\java -version` ein. Sie sollten die gleiche ausgabe erhalten.


## 2. Ant

### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://ant.apache.org/bindownload.cgi  
2. Unter `Current Release of Ant` wird die aktuell Version genannet (momentan: 1.10.7). Klicken Sie auf 
den link mit der .zip Endung, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner 
zum Beispiel unter `Downloads`.
3. Öffnen Sie das die Datei apache-ant-1.10.7-bin.zip mit einem Doppelklick. Das Archiv enthält den 
Ordner `apache-ant-1.10.7`. Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME. Dies 
können Sie einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer Fenster öffnen 
und anschließend den Ordner `apache-ant-1.10.7` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.

### Umgebungsvraiablen setzen

Damit Ant in der Console und von anderen Programmen gefunden werden kann, muss der Speicherort durch
Umgebungsvraiablen bekannt gemacht werden.  

4. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvraiablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
5. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
6. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\Users\USERNAME\apache-ant-1.10.7\bin`. Klicken 
Sie auf `Ok`.
7. Wählen Sie nun im Fenster `Umgebungsvariablen` wieder im oberen Bereich `Neu...`. Geben Sie bei 
`ANT_HOME` als Name und `C:\Users\USERNAME\apache-ant-1.10.7\` als Wert der Variable ein und klicken Sie 
auf `Ok`.
8. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

### Test

9. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
10. Geben Sie ein: `ant -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Apache Ant(TM) version 1.10.7 compiled on September 1 2019
```
11. Geben Sie nun `%ANT_HOME%\bin\ant -version` ein. Sie sollten die gleiche ausgabe erhalten.


## 3. Artistic Style (astyle) 

### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://sourceforge.net/projects/astyle/files/ . Klicken Sie auf 
`Download Latest Version`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum 
Beispiel unter `Downloads`.
3. Öffnen Sie das die Datei `ASytle_3.1_windows.zip` mit einem Doppelklick. Das Archiv enthält den 
Ordner `AStyle`. Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME. Dies 
können Sie einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer Fenster öffnen und
anschließend den Ordner `AStyle` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.

### Umgebungsvraiablen setzen

4. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvraiablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
5. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
6. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\Users\USERNAME\ASytle\bin`. Klicken 
Sie auf `Ok`.
7. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

### Test

8. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
9. Geben Sie ein: `astyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Artistic Style Version 3.
```

## 4. checkstyle


## 5. spotbugs
