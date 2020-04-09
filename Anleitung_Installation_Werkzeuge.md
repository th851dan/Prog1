# Anleitung Installation und Einrichtung der Wekrzeuge

für Windows 10, MacOS  
Datum: 07.04.2020

## Installation 

### 1. Java Development Kit (JDK)

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf, um das JDK herunter zu laden: https://jdk.java.net 
2. Öffnen Sie die Seite der aktuellen Version. Diese wird bei `Ready for use` genannt. (aktuell: JDK 14) 
3. Unter `Builds` finden Sie das Archiv zum Download. Klicken Sie auf `zip`, hinter `Windows/x64`(auf MacOS tar.gz hinter `macOS/x64`) um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner, z.B. unter Downloads.
4. Öffnen Sie die Datei `openjdk-14_windows-x64_bin.zip`(`openjdk-14_osx-x64_bin.tar` auf MacOS) mit einem Doppelklick. Das Archiv enthält den Ordner `jdk-14`(`jdk-14.jdk` auf MacOS). Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME(`/Users/USERNAME` auf MacOS). Dies können Sie einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer(Finder auf MacOS) Fenster öffnen und anschließend den Ordner `jdk-14` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.
    

#### Umgebungsvariablen setzen

##### Auf Windows 10

5. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvariablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können. 
6. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können. 
7. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\Users\USERNAME\jdk-14\bin`. Klicken Sie auf 
`Ok`. 
8. Wählen Sie nun im Fenster `Umgebungsvariablen` wieder im oberen Bereich `Neu...`. Geben Sie bei 
`JAVA_HOME` als Name und `C:\Users\USERNAME\jdk-14\` als Wert der Variable ein und klicken Sie auf `Ok`.
9. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`. 

##### Auf MacOS

5M. Öffnen Sie Terminal, indem Sie die Tastenkombination Command + Leerzeichen drücken und nach Terminal suchen.

6M. Führen Sie diesen Kommand aus: `echo export "JAVA_HOME=/Users/USERNAME/jdk-14.jdk/Contents/Home" >> ~/.bash_profile`.

7M. Dann führen Sie diesen Kommand: `source .bash_profile` aus.

#### Test

##### Auf Windows 10

10. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
11. Geben Sie ein: `java -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
openjdk version `14` 2020-03-17
OpenJDK Runtime Environment (build 14+36-1461)
OpenJDK 64-Bit Server VM (build 14+36-1461, mixed mode, sharing)
```
12. Geben Sie nun `%JAVA_HOME%\bin\java -version` ein. Sie sollten die gleiche ausgabe erhalten.

##### Auf MacOS

8M. Offnen Sie wieder Terminal.

9M. Geben Sie ein: `java -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
openjdk version `14` 2020-03-17
OpenJDK Runtime Environment (build 14+36-1461)
OpenJDK 64-Bit Server VM (build 14+36-1461, mixed mode, sharing)
```
10M. Geben Sie nun `$JAVA_HOME/bin/java -version` ein. Sie sollten die gleiche ausgabe erhalten.

### 2. Ant

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://ant.apache.org/bindownload.cgi
2. Unter `Current Release of Ant` wird die aktuell Version genannet (momentan: 1.10.7). Klicken Sie auf 
den link mit der .zip(.tar.gz auf MacOS) Endung, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner 
zum Beispiel unter `Downloads`.
3. Öffnen Sie das die Datei apache-ant-1.10.7-bin.zip(.tar.gz auf MacOS) mit einem Doppelklick. Das Archiv enthält den 
Ordner `apache-ant-1.10.7`. Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME(`/Users/USERNAME` auf MacOS). Dies können Sie einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer Fenster öffnen 
und anschließend den Ordner `apache-ant-1.10.7` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.

#### Umgebungsvariablen setzen

##### Auf Windows 10

4. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvariablen`. Wählen Sie den Vorschlag
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

##### Auf MacOS 10

4M. Öffnen Sie Terminal.

5M. Geben Sie `echo export "ANT_HOME=/Users/USERNAME/apache-ant-1.10.7" >> ~/.bash_profile` ein und drücken Sie die Eingabetaste.

6M. Dann führen Sie diesen Kommand: `source .bash_profile` aus.

7M. Dannach führen Sie diesen Kommand aus: `echo export "PATH=$PATH:$ANT_HOME/bin" >> ~/.bash_profile`.

8M. Anschließen führen Sie nochmals den Kommand: `source .bash_profile` aus.

#### Test

##### Auf Windows 10

9. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
10. Geben Sie ein: `ant -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Apache Ant(TM) version 1.10.7 compiled on September 1 2019
```
11. Geben Sie nun `%ANT_HOME%\bin\ant -version` ein. Sie sollten die gleiche ausgabe erhalten.

##### Auf MacOS

9M. Offnen Sie wieder Terminal.

10M. Geben Sie ein: `ant -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Apache Ant(TM) version 1.10.7 compiled on September 1 2019
```

11M. Geben Sie nun `$ANT_HOME/bin/ant -version` ein. Sie sollten die gleiche ausgabe erhalten.

### 3. Artistic Style (astyle) 

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://sourceforge.net/projects/astyle/files/ . Klicken Sie auf 
`Download Latest Version`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum 
Beispiel unter `Downloads`.
2. Öffnen Sie das die Datei `ASytle_3.1_windows.zip(.tar.gz auf macOS)` mit einem Doppelklick. Das Archiv enthält den 
Ordner `AStyle`(astyle auf MacOS). Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME(/Users/USERNAME auf MacOS). Dies können Sie einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer Fenster öffnen und
anschließend den Ordner `AStyle` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.

#### Umgebungsvariablen setzen

##### Auf Windows 10

3. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvariablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
4. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
5. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\Users\USERNAME\ASytle\bin`. Klicken 
Sie auf `Ok`.
6. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

##### Auf MacOS 10

3M. Öffnen Sie Terminal.

4M. Homebrew installieren, indem Sie den Kommand `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null` ausführen. Sie können diesen Schritt vernachlässigen, wenn Sie bereits Brew haben.

5M. Dann führen Sie diesen Kommand: `brew install astyle` aus.

#### Test

##### Auf Windows 10

7. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
8. Geben Sie ein: `astyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Artistic Style Version 3.
```
##### Auf MacOS 10

6M. Geben Sie in Terminal ein: `astyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Artistic Style Version 3.1
```

### 4. checkstyle 

#### Herunterladen und entpacken

##### Auf Windows 10 und MacOS

1. Rufen Sie folgende Seite auf: https://github.com/checkstyle/checkstyle/releases/ . Die aktuellste 
Version steht an oberster Stelle (momentan: 8.31). Klicken Sie unter `Assets` auf 
`checkstyle-8.31-all.jar`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum 
Beispiel unter `Downloads`.
2. Legen Sie in Ihrem Homeverzeichnis einen neuen Ordner mit dem Name `Checkstyle` an. Verschieben Sie 
die Datei `checkstyle-8.31-all.jar` aus `Downloads` in diesen neuen Ordner.


#### Test

##### Auf Windows 10

3. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console. Wechseln Sie in das 
Verzeichnis `Checkstyle` mit folgender Anweisung: `cd C:\Users\USERNAME\Checkstyle`
4. Geben Sie ein: `java -jar checkstyle-8.31-all.jar --version`. Wenn Sie alles richtig gemacht haben 
erscheint nun folgender Text: 
```
Checkstyle version: 8.31
```
##### Auf MacOS 10

3M. Öffnen Sie Terminal. 

4M. Wechseln Sie in das Verzeichnis `Checkstyle` mit folgender Anweisung: `cd /Users/USERNAME/Checkstyle`.

5M. Geben Sie `java -jar checkstyle-8.31-all.jar --version` ein und drücken Sie die Eingabetaste. Wenn Sie alles richtig gemacht haben.
erscheint nun folgender Text: 
```
Checkstyle version: 8.31
``` 

### 5. spotbugs

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://spotbugs.readthedocs.io/en/stable/installing.html . Die 
Klicken Sie im ersten Abschnitt auf den Link `zip-format(gzipped tar format auf MacOS)`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum Beispiel unter `Downloads`.
2. Öffnen Sie das die Datei `spotbugs-4.0.1.zip(spotbugs-4.0.1.tgz auf MacOS)` mit einem Doppelklick. Das Archiv enthält den 
Ordner `spotbugs-4.0.1`. Entpacken Sie diesen in Ihr Homeverzeichnis unter C:\Users\USERNAME(/Users/USERNAME auf MacOS). Dies 
können Sie einfach erledigen, in dem Sie Ihr Homeverzeichnis in einem zweiten Explorer Fenster öffnen und
anschließend den Ordner `spotbugs-4.0.1` mit der Maus in Ihr Homeverzeichnis hinüber ziehen.

#### Test

##### Auf Windows 10

3. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
4. Geben Sie ein: `C:\Users\USERNAME\spotbugs-4.0.1\bin\spotbugs -help`. Wenn Sie alles richtig gemacht haben 
erscheint nun folgender Text: 
```
SpotBugs version 4.0.1, https://spotbugs.github.io/
Command line options
fb analyze                   Perform SpotBugs Analysis
fb errors                    List analysis errors stored in results file
fb filter                    Filter analysis results
fb gui                       Launch SpotBugs GUI
fb help                      Provide help for commands
fb list                      Convert analysis results to textual form
fb set                       Set project configuration/options
fb version                   List SpotBugs version
fb history      history      List details from multi-version analysis results
fb merge        history      Combine analysis results from different versions of software to produce multi-version analysis results
fb union        history      Merge analysis results from disjoint components
fb addMessages  poweruser    Add msgs (e.g., textual descriptions of bugs) to analysis results
fb dis          utility      Disassemble a class file

General options:
  -jvmArgs args    Pass args to JVM
  -maxHeap size    Maximum Java heap size in megabytes (default=768)
  -javahome <dir>  Specify location of JRE
```

##### Auf MacOS 10

3M. Öffnen Sie Terminal. 

4M. Wechseln Sie in das Verzeichnis `Checkstyle` mit folgender Anweisung: `cd /Users/USERNAME/spotbugs-4.0.1/bin`.

5M. Dann führen Sie den Kommand `chmod 755 spotbugs` aus.

6M. Geben Sie `./spotbugs -help` ein und drücken Sie die Eingabetaste. Wenn Sie alles richtig gemacht haben.
erscheint nun folgender Text: 
```
SpotBugs version 4.0.1, https://spotbugs.github.io/
Command line options
fb analyze                   Perform SpotBugs Analysis
fb errors                    List analysis errors stored in results file
fb filter                    Filter analysis results
fb gui                       Launch SpotBugs GUI
fb help                      Provide help for commands
fb list                      Convert analysis results to textual form
fb set                       Set project configuration/options
fb version                   List SpotBugs version
fb history      history      List details from multi-version analysis results
fb merge        history      Combine analysis results from different versions of software to produce multi-version analysis results
fb union        history      Merge analysis results from disjoint components
fb addMessages  poweruser    Add msgs (e.g., textual descriptions of bugs) to analysis results
fb dis          utility      Disassemble a class file

General options:
  -jvmArgs args    Pass args to JVM
  -maxHeap size    Maximum Java heap size in megabytes (default=768)
  -javahome <dir>  Specify location of JRE
```

## Einrichtung der Einstiegsaufgabe

#### Anlegen des Arbeitsverzeichnis und herunterladen der Einstiegsaufgabe

1. Erstellen Sie ein Arbeitsverzeichnis um Ihre Übungsaufgaben abzuspeichern. Legen Sie dieses Verzeichnis beispielsweise in Ihrem Homeverzeichnis an und vergeben Sie den Namen `prog1-uebungen`.
2. Laden Sie das Archiv `Einstieg-zuhause.jar` unter dem Link www-home.htwg-konstanz.de/~drachen/prog1/Einstieg-zuhause.jar herunter und speichern Sie dieses in Ihrem Arbeitsverzeichnis.
3. Entpacken Sie das Archiv, in dem Sie eine Konsole öffnen und mit `cd` in Ihr Arbeitsverzeichnis wechseln. Führen Sie dann den Konsolenbefehl `jar xf Einstieg-zuhause.jar` aus.

#### Anpassen der build.xml Datei

4. Öffnen Sie die Datei build.xml in einem Text Editor.
5. Geben Sie den Pfad zu Checkstyle und Sportbugs in den entsprechenden Eigenschaften an. Wenn Sie die Wekrkzeuge wie in der Anleitung vorgeschlagen installiert haben können Sie folgende Anpassungen vornehmen:  
Ändern Sie folgende Zeilen von
```
    <property name="checkstyle.dir" value="c:/checkstyle/"/>
    <property name="checkstyle.jar" value="${checkstyle.dir}checkstyle-8.30-all.jar"/>
```
zu
##### Auf Windows 10
```
    <property name="checkstyle.dir" value="C:/Users/USERNAME/Checkstyle/"/>
    <property name="checkstyle.jar" value="${checkstyle.dir}checkstyle-8.31-all.jar"/>
```
##### Auf MacOS
```
    <property name="checkstyle.dir" value="/Users/USERNAME/Checkstyle/"/>
    <property name="checkstyle.jar" value="${checkstyle.dir}checkstyle-8.31-all.jar"/>
```
Und diese Zeile
```
    <property name="spotbugs.home" value="c:/spotbugs-4.0.1/"/>
```

zu 
##### Auf Windows 10
```
    <property name="spotbugs.home" value="C:/Users/USERNAME/spotbugs-4.0.1/"/>
```
##### Auf MacOS
```
    <property name="checkstyle.dir" value="/Users/USERNAME/spotbugs-4.0.1/"/>
```
