# Anleitung Installation und Einrichtung der Wekrzeuge

für Windows 10  
Datum: 02.04.2020

## Installation 

### 1. Java Development Kit (JDK)

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf, um das JDK herunter zu laden: https://jdk.java.net 
2. Öffnen Sie die Seite der aktuellen Version. Diese wird bei `Ready for use` genannt. (aktuell: JDK 14) 
3. Unter `Builds` finden Sie das Archiv zum Download. Klicken Sie auf `zip`, hinter `Windows/x64` um den 
Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner, z.B. unter Downloads.
4. Öffnen Sie das die Datei `openjdk-14_windows-x64_bin.zip` mit einem Doppelklick. Das Archiv enthält den 
Ordner `jdk-14`. Entpacken Sie diesen in das Verzeichnis unter `C:\`. Dies können Sie 
einfach erledigen, in dem Sie in einem zweiten Explorer Fenster das Verzeichnis `C:\` öffnen und
anschließend den Ordner `jdk-14` mit der Maus hinüber ziehen. Eventuell werden Sie aufgefordert zu
bestätigen, dass die tatsächlich den Ordner nach `C:\` verschieben wollen. Wenn Sie auf Ihrem Rechner
nicht als Administrator angemeldet sind werden Sie aufgefordert das Passwort des Administrators
einzugeben. Falls Sie keine Aministartor-Rechte auf Ihrem Rechner besitzen, müssen sie das JDK in einen
anderen Order entpacken, zum Beispiel in Ihr Homeverzeichnis unter `C:\Benutzer\IHR_BENUTZERKONTO\`. In 
diesem Fall müssen Sie in den folgenden Schritten, den Pfad jeweils anpassen.

#### Umgebungsvraiablen setzen

5. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvraiablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
6. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
7. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\jdk-14\bin`. Klicken Sie auf 
`Ok`.
8. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

#### Test

9. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
10. Geben Sie ein: `java -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
openjdk version `14` 2020-03-17
OpenJDK Runtime Environment (build 14+36-1461)
OpenJDK 64-Bit Server VM (build 14+36-1461, mixed mode, sharing)
```

### 2. Ant

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://ant.apache.org/bindownload.cgi
2. Unter `Current Release of Ant` wird die aktuell Version genannet (momentan: 1.10.7). Klicken Sie auf 
den link mit der `.zip` Endung, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner 
zum Beispiel unter `Downloads`.
3. Öffnen Sie das die Datei `apache-ant-1.10.7-bin.zip` mit einem Doppelklick. Das Archiv enthält den 
Ordner `apache-ant-1.10.7`. Entpacken Sie diesen ebenfenfalls in das Verzeichnis unter `C:\`. Gehen Sie dabei
gleich vor, wie beim Entpacken des JDKs im vorherigen Abschnitt.

#### Umgebungsvraiablen setzen

4. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvraiablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
5. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
6. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\apache-ant-1.10.7\bin`. Klicken 
Sie auf `Ok`.
7. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

#### Test

8. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
9. Geben Sie ein: `ant -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Apache Ant(TM) version 1.10.7 compiled on September 1 2019
```


### 3. Artistic Style (astyle) 

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://sourceforge.net/projects/astyle/files/ . Klicken Sie auf 
`Download Latest Version`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum 
Beispiel unter `Downloads`.
2. Öffnen Sie das die Datei `ASytle_3.1_windows.zip` mit einem Doppelklick. Das Archiv enthält den 
Ordner `AStyle`. Entpacken Sie diesen in das Verzeichnis unter `C:\. Gehen Sie dabei gleich vor, wie in 
den vorherigen Abschnitten.

#### Umgebungsvraiablen setzen

3. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvraiablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
4. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
5. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\ASytle\bin`. Klicken 
Sie auf `Ok`.
6. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

#### Test

7. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
8. Geben Sie ein: `astyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Artistic Style Version 3.
```

### 4. checkstyle 

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://github.com/checkstyle/checkstyle/releases/ . Die aktuellste 
Version steht an oberster Stelle (momentan: 8.31). Klicken Sie unter `Assets` auf 
`checkstyle-8.31-all.jar`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum 
Beispiel unter `Downloads`.
2. Legen Sie unter `C:\` einen neuen Ordner mit den Namen `Checkstyle` an. Verschieben Sie 
die Datei `checkstyle-8.31-all.jar` aus `Downloads` in diesen neuen Ordner.

#### Test

3. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console. Wechseln Sie in das 
Verzeichnis `Checkstyle` mit folgender Anweisung: `cd C:\Checkstyle`
4. Geben Sie ein: `java -jar checkstyle-8.31-all.jar --version`. Wenn Sie alles richtig gemacht haben 
erscheint nun folgender Text: 
```
Checkstyle version: 8.31
```

### 5. spotbugs

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://spotbugs.readthedocs.io/en/stable/installing.html . Die 
Klicken Sie im ersten Abschnitt auf den Link `zip-format`, um den Download zu starten. Speichern Sie das 
Archiv auf Ihrem Rechner zum Beispiel unter `Downloads`.
2. Öffnen Sie das die Datei `spotbugs-4.0.1.zip` mit einem Doppelklick. Das Archiv enthält den 
Ordner `spotbugs-4.0.1`. Entpacken Sie diesen Ordner nach  `C:\`.

#### Test

3. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Console.
4. Geben Sie ein: `C:\spotbugs-4.0.1\bin\spotbugs -help`. Wenn Sie alles richtig gemacht haben 
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
```
    <property name="checkstyle.dir" value="C:/Users/USERNAME/Checkstyle/"/>
    <property name="checkstyle.jar" value="${checkstyle.dir}checkstyle-8.31-all.jar"/>
```
Und diese Zeile
```
    <property name="spotbugs.home" value="c:/spotbugs-4.0.1/"/>
```

zu 
```
    <property name="spotbugs.home" value="C:/Users/USERNAME/spotbugs-4.0.1/"/>
```
