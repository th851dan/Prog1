# Anleitung Installation der Werkzeuge und Einstiegsaufgabe

für macOS  
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
ein. Ersetzen Sie dabei den Platzhalter `<URL>` durch den eben kopierten Link.  
`curl -o archiv.tar.gz <URL>`  
Das kann einen Moment in Anspruch nehmen.
6. Entpacken Sie das Archiv mit folgedem Befehl:  
`tar -xf archiv.tar.gz`
7. Löschen Sie das Archiv mit:  
`rm archiv.tar.gz`

#### Umgebungsvariablen setzen

8. Fügen Sie das JDK zu Ihrer PATH Umgebunsvariable mit folgendem Befehl hinzu:  
`echo 'export PATH=$HOME/jdk-14.jdk/Contents/Home/bin:$PATH' >> ~/.bash_profile`
9. JAVA_HOME Umgebungsvariable hinzufügen.  
`echo 'export JAVA_HOME=$HOME/jdk-14.jdk/Contents/Home' >> ~/.bash_profile`
10. Führen Sie folgenden Befehl aus, um die Umgebungsvariable zu laden:  
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

1. Um Astyle zu installieren wird der Paketmanager Homebrew (brew) benötigt. Wenn Sie Homebrew bereits
installiert haben können Sie diesenS Schritt überspringen.
Geben Sie folgendes Kommado in das Terminal ein:
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2>
 /dev/null
```
Geben Sie das Admin-Passwort ein, wenn Sie dazu aufgefordert werden. Dieser Schritt kann ein paar Minuten
dauern.

2. Wenn Sie Homebrew installiert haben können Sie das Paket astyle installieren. Führen Sie folgenden
Befehl aus:
`brew install astyle`

#### Test

3. Geben Sie ein: `astyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Artistic Style Version 3.1
```

### 4. checkstyle 

#### Herunterladen und entpacken

1. Führen Sie folgenden Befehl aus, um checkstyle mit Homebrew zu installieren:
`brew install checkstyle`

#### Test

2. Geben Sie ein: `checkstyle --version`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
```
Checkstyle version: 8.31
```

### 5. spotbugs

#### Herunterladen und entpacken

1. Gehen Sie auf https://github.com/spotbugs/spotbugs/releases und kopieren Sie den Link der momentan 
aktuellsten (Version 4.0.1) im `.tgz` Format.
2. Laden Sie das Archiv mit folgendem Befehl herunter und entpacken Sie es. Ersetzen Sie dabei `<URL>` 
durch den kopieten Link:  
`curl -o archiv.tgz -L <URL>`  
`tar -xf archiv.tgz`  
`rm archiv.tgz`


#### Test

2. Geben Sie ein: `java -jar ~/spotbugs-4.0.1/lib/spotbugs.jar -help`. Wenn Sie alles richtig gemacht haben erscheint nun folgender Text: 
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

### 6. TextMate installieren
1. Gehen Sie auf https://macromates.com und klicken Sie ` Download TextMate 2.0` und warten Sie bis der Download fertig ist.
2. Öffnen Sie die heruntergeladene Datei. TextMate wird dann automatisch installiert.
3. Damit Sie TextMate im Terminal aufrufen können, machen Sie folgendes: Öffnen Sie TextMate. TextMate (Neben dem Apple-Symbol) -> Preferences -> Terminal: auf `install` klicken.
5. Schließen Sie TextMate und öffnen Sie ein Terminal zum Testen.
6. Geben Sie `mate` ein.
7. Falls Sie alles richtig gemacht haben, wird TextMate wieder geöffnet.

### 7. meld installieren
1. Führen Sie folgenden Befehl aus, um `meld` mit Homebrew zu installieren:
`brew cask install meld`
2. Öffnen Sie `meld` zum ersten Mal, indem Sie `meld` im Terminal eingeben oder mit der Kombinationstaste `Command + Leerzeichen` nach `meld` suchen. Falls `meld` nicht geöffnet wurde, führen Sie Schritt 3.
3. Klicken Sie auf den Apple-Zeichen(oben links) -> Systemeinstellungen -> Sicherheit -> `meld` erlauben -> Öffnen
4. Danach sollten Sie `meld` wie im Schritt 2 behandelt wurde öffnen.

## Kennenlernen der Programmierwerkzeuge - Einstiegsaufgabe

1. Erstellen Sie ein Arbeitsverzeichnis um Ihre Übungsaufgaben abzuspeichern.  
`mkdir prog1-uebungen`
2. Laden Sie das Archiv `Einstieg-zuhause.jar` herunter und speichern Sie dieses in Ihrem 
Arbeitsverzeichnis.  
`curl -o prog1-uebungen/Einstieg-zuhause.jar www-home.htwg-konstanz.de/~drachen/prog1/Einstieg-zuhause.jar`
3. Entpacken Sie das Archiv, in dem Sie eine Konsole öffnen und mit `cd prog1-uebungen`  
in Ihr Arbeitsverzeichnis wechseln. Führen Sie dann den Konsolenbefehl `jar xf Einstieg-zuhause.jar` aus.
4. Öffnen Sie die Datei `build.xml` in TextMate mit folgendem Befehl: `mate build.xml`.
5. Passen Sie nun die Pfade und Version von Checkstyle und Spotbugs an. Nehem Sie die unten beschriebene
Änderungen vor. Ersetzen Sie dabei den Platzhalter `<USER>` durch Ihren Benutzernamen. Sie können sich 
Ihren Benutzernamen mit dem Befehl `whoami` anzeigen lassen.
Ändern Sie folgende Zeilen von
```xml
    <property name="checkstyle.dir" value="c:/checkstyle/"/>
    <property name="checkstyle.jar" value="${checkstyle.dir}checkstyle-8.30-all.jar"/>

    <property name="spotbugs.home" value="c:/spotbugs-4.0.1/"/>
```
zu
```xml
    <property name="checkstyle.dir" value="/usr/local/Cellar/checkstyle/8.31/libexec/"/>
    <property name="checkstyle.jar" value="${checkstyle.dir}checkstyle-8.31-all.jar"/>

    <property name="spotbugs.home" value="/Users/<USER>/spotbugs-4.0.1/"/>
```
6. Wecheln Sie im Terminal mit `cd einstieg` in den Ordner `einstieg`. Starten Sie in der Konsole den 
Editor TextMate, indem Sie den folgenden Befehl eintippen `mate Einstieg.java`. Geben Sie im 
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
		System.out.print("Vorname: ");
		String vorname = EINGABE.next();
		
		System.out.print("Anzahl bisher geschriebener Java-Programme: ");
		int anzahl = EINGABE.nextInt();

		System.out.printf("%ss %d. Java-Programm funktioniert!%n",
			vorname, anzahl + 1);
	}
}
```

7. Übersetzen Sie Ihr Programm im Terminal mit dem Befehl `javac Einstieg.java`.
8. Wechseln Sie mit dem cd-Befehl in das Oberverzeichnis von `einstieg/`, also in das Arbeitsverzeichnis 
(auf die Leerstelle zwischen cd und .. achten): `cd ..` .
9. Lassen Sie Ihr Programm laufen mit dem Befehl `java einstieg.Einstieg`. Das Programm fordert Sie auf, 
Ihren Vornamen sowie die Anzahl Ihrer bisher geschriebenen Java-Programme einzugeben, und gibt 
anschließend einen Text aus.
10. Prüfen Sie mit dem Werkzeug checkstyle, ob Sie in Ihrem Programm Stilregeln verletzt haben. Sie 
können checkstyle über das Automatisierungswerkzeug ant aufrufen:  
`ant -Dpackage=einstieg style`  
Bessern Sie nach, falls checkstyle Stilverletzungen meldet und gehen Sie zurück zu Schritt 7.
11. Erzeugen Sie HTML-Dokumentation zum Programm mit dem Befehl:  
`javadoc -html5 -d doc -linksource -author -version einstieg`  
Betrachten Sie die Dokumentation. Im Dateimanager im neuen Unterverzeichnis doc/ die Datei index.html 
anklicken und dann die Links auf der angezeigten Seite weiterverfolgen, oder die Datei Lesezeichen.html 
im Arbeitsverzeichnis als Einstieg verwenden. Untersuchen Sie, welche Texte aus den .java-Dateien wo 
in den HTML-Seiten stehen.
