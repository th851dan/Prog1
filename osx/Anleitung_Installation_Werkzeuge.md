# Anleitung Installation der Werkzeuge und Einstiegsaufgabe

für macOS, Ubuntu, Mint  
Datum: 10.04.2020

## Installation 

### 1. Java Development Kit (JDK)

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf, um das JDK herunter zu laden: https://jdk.java.net 
2. Öffnen Sie die Seite der aktuellen Version. Diese wird bei `Ready for use` genannt. (aktuell: JDK 14) 
3. Unter `Builds` finden Sie das Archiv zum Download. Klicken Sie mit der rechten Maustaste auf 
`tar.gz` hinter `macOS` und wählen Sie `Link kopieren`.
4. Öffnen Sie eine Termianl. Dafür öffnen Sie mit `Command + Leertaste` die Suche und geben Sie 
anschließend `Terminal` ein. Bestätigen Sie mit Enter. Geben Sie im Terminal `cd ~` ein und 
bestätigen Sie mit Enter, um in das Homeverzeichnis zu wechseln.  
5. Um das Archiv mit dem Commandline-Tool curl herunterzuladen geben Sie nun folgenden Konsolenbefehl 
ein. Ersetzen Sie dabei den Platzhalter <URL> durch den eben kopierten Link.
`curl -o archiv.tar.gz <URL>`
Dies kann einen Moment in Anspruch nehmen.
6. Entpacken Sie das Archiv mit folgedem Befehl:  
`tar -xf archiv.tar.gz`
7. Löschen Sie das Archiv mit:  
`rm archiv.tar.gz`

#### Umgebungsvariablen setzen

8. Fügen Sie das JDK zu Ihrer PATH Umgebunsvariable mit folgendem Befehl hinzu:  
`echo 'export PATH=$HOME/jdk-14.jdk/Contents/Home/bin:$PATH' >> ~/.bash_profile`
9. Führen Sie folgenden Befehl aus, um die Umgebungsvariable zu laden:  
`source ~/.bash_profile`.

#### Test

10. Geben Sie ein: `java -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
openjdk version `14` 2020-03-17
OpenJDK Runtime Environment (build 14+36-1461)
OpenJDK 64-Bit Server VM (build 14+36-1461, mixed mode, sharing)
```

### 2. Ant

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://ant.apache.org/bindownload.cgi
2. Unter `Current Release of Ant` wird die aktuell Version genannt (momentan: 1.10.7). Klicken Sie mit
der rechten Maustaste auf den Link mit der `.tar.gz` Endung. Kopieren Sie den Link.
3. Um das Archiv zu downloaden und zu entpacken führen Sie die folgenden drei Befehle aus. Vergessen Sie
nicht, den Platzhalter <URL> durch den kopierten Link zu ersetzten.  
`curl -o archiv.tar.gz <URL>`  
`tar -xf archiv.tar.gz`  
`rm archiv.tar.gz`  

#### Umgebungsvariablen setzen

4. Fügen Sie Ant zu Ihrer PATH Umgebunsvariable mit folgendem Befehl hinzu:  
`echo 'export PATH=$HOME/apache-ant-1.10.7/bin:$PATH' >> ~/.bash_profile`
5. Führen Sie folgenden Befehl aus:  
`source ~/.bash_profile`.

#### Test

6. Geben Sie ein: `ant -version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
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

#### Umgebungsvariablen setzen

3. Öffnen Sie das Start-Menu und suchen Sie nach `Umgebungsvariablen`. Wählen Sie den Vorschlag
`Umgebungsvariablen für dieses Konto bearbeiten`. Es öffnet sich ein Fenster, in dem Sie die 
Umgebungsvariablen bearbeiten können.
4. Wählen Sie im Oberen Bereich die Variable `Path` aus und klicken Sie anschließend auf `Bearbeiten`. 
Es öffnet sich ein weiteres Fenster, in dem Sie den Inhalt der Path-Variable bearbeiten können.
5. Gehen Sie auf `Neu` und tragen Sie folgendes ein: `C:\ASytle\bin`. Klicken 
Sie auf `Ok`.
6. Klicken Sie auch im Fenster `Umgebungsvariablen` auf `Ok`.

#### Test

7. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen` 
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Konsole.
8. Geben Sie ein: `astyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Artistic Style Version 3.1
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
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Konsole. Wechseln Sie in das 
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
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Konsole.
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

### 6. Notepad++

#### Herunterladen und entpacken

1. Rufen Sie folgende Seite auf: https://notepad-plus-plus.org/downloads/ . Die aktuellste
Version steht an oberster Stelle (momentan: 7.8.5). Klicken Sie unter `Download 64-bit x64` auf 
`zip-package`, um den Download zu starten. Speichern Sie das Archiv auf Ihrem Rechner zum
Beispiel unter `Downloads`.
2. Klick Sie mit der rechten Maustaste auf die Datei `npp.7.8.5.bin.x64.zip`. Wählen Sie im Kontextmenu 
`Alle extrahieren`. Geben Sie nun im Textfeld `C:\Notepad++` ein und klicken auf `Extrahieren`.

#### Umgebungsvariablen setzen

3. Fügen Sie `C:\Notepad++\` zu Ihrer `Path` Umgebungsvariable hinzu. Gehen Sie dazu vor, wie in den 
vorherigen Abschnitten beschrieben.


#### Test

4. Drücken Sie die die Tastenkombination Windows-Taste + R auf Ihrer Tastatur. Im Fenster `Ausführen`
geben Sie `cmd` ein und bestätigen mit Enter. Es öffnet sich die Konsole. Geben Sie folgende Anweisung 
ein: `notepad++`. Der Editor sollte sich nun in einem neuen Fenster öffnen.


## Kennenlernen der Programmierwerkzeuge - Einstiegsaufgabe

1. Erstellen Sie ein Arbeitsverzeichnis um Ihre Übungsaufgaben abzuspeichern. Legen Sie dieses 
Verzeichnis beispielsweise unter `C:\` an und vergeb Sie den Namen `prog1-uebungen`.
2. Laden Sie das Archiv `Einstieg-zuhause.jar` unter dem Link 
www-home.htwg-konstanz.de/~drachen/prog1/Einstieg-zuhause.jar herunter und speichern Sie dieses in 
Ihrem Arbeitsverzeichnis.
3. Entpacken Sie das Archiv, in dem Sie eine Konsole öffnen und mit `cd C:\prog1-uebungen` in Ihr 
Arbeitsverzeichnis wechseln. Führen Sie dann den Konsolenbefehl `jar xf Einstieg-zuhause.jar` aus.
4. Öffnen Sie die Datei build.xml in Notepad++ mit folgendem Befehl: `notepad++ build.xml`.
5. Passen Sie die Versionsnummer von Checkstyle an. Ändern Sie dafür in Zeile 13 die Version `8.30` zu 
`8.31`, wenn Sie diese Version verwenden.
6. Wecheln Sie in der Konsole mit `cd einstieg` in den Ordner `einstieg`. Starten Sie in der Konsole den 
Editor Notepad++, indem Sie den folgenden Befehl eintippen `notepad++ Einstieg.java`. Geben Sie im 
Editor das folgende Programm ein. Beenden Sie den Editor und speichern Sie dabei Ihr Programm.

```java
//Einstieg.java
package einstieg;

import java.util.Scanner;

/**
 * Einstieg ist ein kleinesJava-Programm.
 * Es verwendet die Klassen Scanner und System aus der Java-Bibliothek.
 * @author TODO: Name eintragenund TODO inklusive Doppelpunkt löschen
 * @version TODO: Datum eintragenund TODO inklusive Doppelpunkt löschen
 */

public final class Einstieg {
	private Einstieg() { }

	private static final Scanner EINGABE = new Scanner(System.in);

	/**
	 * Die Klassenmethodemain ist der Startpunkt des Programms.
	 * main verwendet die Methoden print und printf zum Ausgeben von Text
	 * sowie die Methodennext und nextInt zum Einlesen von Text
	 * und einer ganzen Zahl.
	 * @param args wird nicht verwendet
	 */

	public static void main(String[] args) {
		System.out.print("Vorname:");
		String vorname = EINGABE.next();
		
		System.out.print("Anzahl bisher geschriebener Java-Programme: ");
		int anzahl = EINGABE.nextInt();

		System.out.printf("%ss %d. Java-Programm funktioniert!%n",
			vorname, anzahl + 1);
	}
}
````

7. Übersetzen Sie Ihr Programm im Terminal mit dem Befehl `javac Einstieg.java`.
8. Wechseln Sie mit dem cd-Befehl in das Oberverzeichnis von einstieg/, also in das Arbeitsverzeichnis 
(auf die Leerstelle zwischen cd und .. achten): `cd ..`.
9. Lassen Sie Ihr Programm laufen mit dem Befehl `java einstieg.Einstieg`. Das Programm fordert Sie auf, 
Ihren Vornamen sowie die Anzahl Ihrer bisher geschriebenen Java-Programme einzugeben, und gibt 
anschließend einen Text aus.
10. Prüfen Siemit dem Werkzeug checkstyle, ob Sie in Ihrem Programm Stilregeln verletzt haben. Sie 
können checkstyle über das Automatisierungswerkzeug ant aufrufen: `ant -Dpackage=einstieg style`.
Bessern Sie nach, falls checkstyle Stilverletzungen meldet und gehen Sie zurück zu Schritt 7.
11. Erzeugen Sie HTML-Dokumentation zum Programm mit dem Befehl: 
`javadoc -html5 -d doc -linksource -author -version einstieg`. Betrachten Sie die Dokumentation. Im 
Dateimanager im neuen Unterverzeichnis doc/ die Datei index.html anklicken und dann die Links auf der 
angezeigten Seite weiterverfolgen, oder die Datei Lesezeichen.html im Arbeitsverzeichnis als Einstieg 
verwenden. Untersuchen Sie, welche Texte aus den .java-Dateien wo in den HTML-Seiten stehen.

