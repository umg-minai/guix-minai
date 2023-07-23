(define-module (minai packages cran)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system r)
  #:use-module (gnu packages)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages web))

(define-public r-reactr
  (package
    (name "r-reactr")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "reactR" version))
              (sha256
               (base32
                "15c0ij3xglsdavkpzgnkbyl5yb39jrn6zhlrdjiwp1m9cnrqzf2w"))))
    (properties `((upstream-name . "reactR")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmltools))
    (native-inputs (list esbuild r-knitr))
    (home-page "https://github.com/react-R/reactR")
    (synopsis "React Helpers")
    (description
     "Make it easy to use React in R with htmlwidget scaffolds, helper dependency
functions, an embedded Babel transpiler', and examples.")
    (license expat)))

(define-public r-reactable
  (package
    (name "r-reactable")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "reactable" version))
              (sha256
               (base32
                "1wkamzyyl3k3772n5g4rjklkkhdb07jiax064r9alnnq5nzfdaml"))))
    (properties `((upstream-name . "reactable")))
    (build-system r-build-system)
    (propagated-inputs (list r-digest r-htmltools r-htmlwidgets r-jsonlite
                             r-reactr))
    (home-page "https://glin.github.io/reactable/")
    (synopsis "Interactive Data Tables for R")
    (description
     "Interactive data tables for R, based on the React Table @code{JavaScript}
library.  Provides an HTML widget that can be used in R Markdown or Quarto
documents, Shiny applications, or viewed from an R console.")
    (license expat)))

(define-public r-juicyjuice
  (package
    (name "r-juicyjuice")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "juicyjuice" version))
              (sha256
               (base32
                "0ap1nsyihlagc1yqvwr2x9s16kzb3c8azfi50mzv95275a5l3xb4"))))
    (properties `((upstream-name . "juicyjuice")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (home-page "https://github.com/rich-iannone/juicyjuice")
    (synopsis "Inline CSS Properties into HTML Tags Using 'juice'")
    (description
     "There are occasions where you need a piece of HTML with integrated styles.  A
prime example of this is HTML email.  This transformation involves moving the
CSS and associated formatting instructions from the style block in the head of
your document into the body of the HTML. Many prominent email clients require
integrated styles in HTML email; otherwise a received HTML email will be
displayed without any styling.  This package will quickly and precisely perform
these CSS transformations when given HTML text and it does so by using the
@code{JavaScript} juice library.")
    (license expat)))

(define-public r-bigd
  (package
    (name "r-bigd")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "bigD" version))
              (sha256
               (base32
                "0pzzqqazn1nv2b613vzdyhxvr454lyqq8235jydia6r3k86fpadw"))))
    (properties `((upstream-name . "bigD")))
    (build-system r-build-system)
    (home-page "https://github.com/rich-iannone/bigD")
    (synopsis "Flexibly Format Dates and Times to a Given Locale")
    (description
     "Format dates and times flexibly and to whichever locales make sense.  Parses
dates, times, and date-times in various formats (including string-based ISO 8601
constructions).  The formatting syntax gives the user many options for
formatting the date and time output in a precise manner.  Time zones in the
input can be expressed in multiple ways and there are many options for
formatting time zones in the output as well.  Several of the provided helper
functions allow for automatic generation of locale-aware formatting patterns
based on date/time skeleton formats and standardized date/time formats with
varying specificity.")
    (license expat)))

(define-public r-gt
  (package
    (name "r-gt")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gt" version))
              (sha256
               (base32
                "0l60f38r7wnd2dh4c5il9axabxzqd0zdzlhkp1cibdp14zi7xr9y"))))
    (properties `((upstream-name . "gt")))
    (build-system r-build-system)
    (propagated-inputs (list r-base64enc
                             r-bigd
                             r-bitops
                             r-cli
                             r-commonmark
                             r-dplyr
                             r-fs
                             r-glue
                             r-htmltools
                             r-htmlwidgets
                             r-juicyjuice
                             r-magrittr
                             r-markdown
                             r-reactable
                             r-rlang
                             r-sass
                             r-scales
                             r-tibble
                             r-tidyselect
                             r-xml2))
    (home-page "https://gt.rstudio.com/")
    (synopsis "Easily Create Presentation-Ready Display Tables")
    (description
     "Build display tables from tabular data with an easy-to-use set of functions.
With its progressive approach, we can construct display tables with a cohesive
set of table parts.  Table values can be formatted using any of the included
formatting functions.  Footnotes and cell styles can be precisely added through
a location targeting system.  The way in which gt handles things for you means
that you don't often have to worry about the fine details.")
    (license expat)))

(define-public r-broom-helpers
  (package
    (name "r-broom-helpers")
    (version "1.13.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "broom.helpers" version))
              (sha256
               (base32
                "0k3bd9f42dzp7xjqn43yfwajxzzm2h6f66npp9wjyx750jkaf1q1"))))
    (properties `((upstream-name . "broom.helpers")))
    (build-system r-build-system)
    (propagated-inputs (list r-broom
                             r-cli
                             r-dplyr
                             r-labelled
                             r-lifecycle
                             r-purrr
                             r-rlang
                             r-stringr
                             r-tibble
                             r-tidyr))
    (native-inputs (list r-knitr))
    (home-page "https://larmarange.github.io/broom.helpers/")
    (synopsis "Helpers for Model Coefficients Tibbles")
    (description
     "This package provides suite of functions to work with regression model
broom::tidy() tibbles.  The suite includes functions to group regression model
terms by variable, insert reference and header rows for categorical variables,
add variable labels, and more.")
    (license gpl3+)))

(define-public r-gtsummary
  (package
    (name "r-gtsummary")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gtsummary" version))
              (sha256
               (base32
                "02jbsdv8wwncnrmqmf12pz3ld759s8ll5dl5rrxv8ad6qgqjbhnx"))))
    (properties `((upstream-name . "gtsummary")))
    (build-system r-build-system)
    (propagated-inputs (list r-broom
                             r-broom-helpers
                             r-cli
                             r-dplyr
                             r-forcats
                             r-glue
                             r-gt
                             r-knitr
                             r-lifecycle
                             r-purrr
                             r-rlang
                             r-stringr
                             r-tibble
                             r-tidyr
                             r-vctrs))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ddsjoberg/gtsummary")
    (synopsis "Presentation-Ready Data Summary and Analytic Result Tables")
    (description
     "This package creates presentation-ready tables summarizing data sets, regression
models, and more.  The code to create the tables is concise and highly
customizable.  Data frames can be summarized with any function, e.g. mean(),
median(), even user-written functions.  Regression models are summarized and
include the reference rows for categorical variables.  Common regression models,
such as logistic regression and Cox proportional hazards regression, are
automatically identified and the tables are pre-filled with appropriate column
headers.")
    (license expat)))

(define-public r-consort
  (package
    (name "r-consort")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "consort" version))
              (sha256
               (base32
                "1jshk53121w58i4if593qzxm6lcrrggz8parwhqvv6hnbx51rhck"))))
    (properties `((upstream-name . "consort")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adayim/consort/")
    (synopsis "Create Consort Diagram")
    (description
     "To make it easy to create CONSORT diagrams for the transparent reporting of
participant allocation in randomized, controlled clinical trials.  This is done
by creating a standardized disposition data, and using this data as the source
for the creation a standard CONSORT diagram.  Human effort by supplying text
labels on the node can also be achieved.")
    (license expat)))

