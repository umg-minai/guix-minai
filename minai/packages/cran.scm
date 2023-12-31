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

(define-public r-diagrammer
  (package
    (name "r-diagrammer")
    (version "1.0.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "DiagrammeR" version))
              (sha256
               (base32
                "147q7zgwhd7vc0l134sqkkf6n6s6bznxvcmsrdx2f5df12bsixkj"))))
    (properties `((upstream-name . "DiagrammeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-downloader
                             r-dplyr
                             r-glue
                             r-htmltools
                             r-htmlwidgets
                             r-igraph
                             r-magrittr
                             r-purrr
                             r-rcolorbrewer
                             r-readr
                             r-rlang
                             r-rstudioapi
                             r-scales
                             r-stringr
                             r-tibble
                             r-tidyr
                             r-viridis
                             r-visnetwork))
    (native-inputs (list esbuild))
    (home-page "https://github.com/rich-iannone/DiagrammeR")
    (synopsis "Graph/Network Visualization")
    (description
     "Build graph/network structures using functions for stepwise addition and
deletion of nodes and edges.  Work with data available in tables for bulk
addition of nodes, edges, and associated metadata.  Use graph selections and
traversals to apply changes to specific nodes or edges.  A wide selection of
graph algorithms allow for the analysis of graphs.  Visualize the graphs and
take advantage of any aesthetic properties assigned to nodes and edges.")
    (license expat)))

(define-public r-diagrammersvg
  (package
    (name "r-diagrammersvg")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "DiagrammeRsvg" version))
              (sha256
               (base32
                "0j2cm1mx3zrb2k3pcrb96z2z3kws61gyyjsjjv5rqcb5lzdgi65k"))))
    (properties `((upstream-name . "DiagrammeRsvg")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (native-inputs (list esbuild))
    (home-page "https://github.com/rich-iannone/DiagrammeRsvg")
    (synopsis "Export DiagrammeR Graphviz Graphs as SVG")
    (description
     "Allows for export of @code{DiagrammeR} Graphviz objects to SVG.")
    (license expat)))

