# Typst Template for BAA/Wipro at HSLU

This is my personal template for the BAA/Wipro at HSLU using [Typst](https://typst.app).\
No guarantee for correctness or completeness.

## How to use this template

Fill in your details in the `#show: project.with()` section of the [Typst_Template.typ](Typst_Template.typ) file.\
This will automatically fill in the details in the title page and the declaration of honesty.

If you create a tag on your GitHub repository, the CI/CD pipeline will automatically create a PDF file and upload it to the release section of your repository.

So if you rename the [Typst_Template.typ](Typst_Template.typ), don't forget to adjust the [pipeline](.github/workflows/build.yaml).

## References/Citations

This template uses BibLaTeX for references.\
You can add your references to the [Bibliography](Referenzen.bib) file.\
To cite a reference in the text, use `@reference_key`.

## How to use Typst

To learn how to use Typst, visit the [Typst Documentation](https://typst.app/docs).

## PDF/A

HSLU requires the Bachelor's thesis to be in the PDF/A format.\
Unfortunately, Typst does not support this format yet.\
To convert the PDF to a valid PDF/A format, use Adobe Acrobat.