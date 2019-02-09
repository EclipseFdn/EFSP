# Eclipse Foundation Specification Process

This repository holds the source for [Eclipse Foundation Specification Process](https://www.eclipse.org/projects/efsp).

Pull requests are accepted. Note that the changes to the process document (`process.adoc`) require approval from the Eclipse Board of Directors; any pull requests that include this file should *only* include this file.
## Style

We use AsciiDoc to capture the contents and render using [Asciidoctor](http://www.asciidoctor.org).

The following authoring styles apply:

* A single paragraph occupies as single line (i.e. soft wrapping);
* All defined terms (e.g. _Specification Project_) use pseudo-legal _title case_; and
* Where possible images are rendered as `SVG`.

## Build

The Maven `pom.xml` file will generate both an HTML and PDF version of the document. Note that the HTML is generated as `body` content only (i.e. no header) as it is intended to be included as part of a web page on the Eclipse.org website and leverage the styles defined in that site's CSS. All images are rendered inline.

PDF generation is out-of-the-box; no attempts have been made to tune or tweak the output (hint: contribution opportunity).

````bash
mvn clean:generate-resources
````
