
# [Nebulous: Fleet Command] · Min-Max Tool

---

## Installation

No installation is required, the site is hosted on GitHub Pages and can be viewed [here]. To work with tools offline simply clone the repo, and open index.html in your browser (some functions may not work).

## Debugging XSLT Errors

The browser based XSLT processor is pretty bad at displaying errors during transformation.
I recommend grabbing a better XSLT processor and running the transform through that if you see cryptic error messages like "failure to append node" during an XSLT related process.
If you have Powershell you should be able to run the following commands in a shell.

```
$xslt = New-Object System.Xml.Xsl.XslCompiledTransform;
$xslt.Load(".\skirmish-report.xsl");
$xslt.Transform(".\skirmish-report.xml", ".\test.html");
```
Substitute the problematic XSL file and problematic XML file.
If there is a problem the second or third line will error.

---

[Nebulous: Fleet Command]: https://steamdb.info/app/887570/
[here]: https://rocketpuppy.github.io/Nebulous-Fleet-Command-Minmax-Tool/
