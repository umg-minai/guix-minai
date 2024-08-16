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

(define-public r-blockrand
  (package
    (name "r-blockrand")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "blockrand" version))
       (sha256
        (base32 "0bic3b8l7mp2hpwd8k1diwy6a4lj92i7s5k20i2wy8kw0c74jwfh"))))
    (properties `((upstream-name . "blockrand")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=blockrand")
    (synopsis "Randomization for Block Random Clinical Trials")
    (description
     "Create randomizations for block random clinical trials.  Can also produce a pdf
file of randomization cards.")
    (license gpl2)))

(define-public r-reactr
  (package
    (name "r-reactr")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "reactR" version))
              (sha256
               (base32
                "0mi9zfy50njvykmp4rfgpvsmf7q8l92n2196jw9sc06q7ybjn92v"))))
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
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gt" version))
              (sha256
               (base32
                "1jg9kg2b1qig1awfgnb5fi54qjmvl2qw1ny0l4vsqh87c2f3yij3"))))
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
                             r-tidyselect
                             r-vctrs
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

(define-public r-gtsummary
  (package
    (name "r-gtsummary")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gtsummary" version))
              (sha256
               (base32
                "0xg3lvnl822vwrd8rr31vmv1lp9yg2i2p9l8fa77l07nkvalvg32"))))
    (properties `((upstream-name . "gtsummary")))
    (build-system r-build-system)
    (propagated-inputs (list r-cards
                             r-cli
                             r-dplyr
                             r-glue
                             r-gt
                             r-lifecycle
                             r-rlang
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
    (version "1.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "DiagrammeR" version))
              (sha256
               (base32
                "1py4yii88lsyj8y71d2v0rb9lk5hvhfh0q8n2q4288wqw7bf6wz8"))))
    (properties `((upstream-name . "DiagrammeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-cli
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
                             r-viridislite
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

(define-public r-settings
  (package
    (name "r-settings")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "settings" version))
       (sha256
        (base32 "1i9ij5k8p2v9gxr48vas8hj337mbyx9c4ywv9bbdwkz6kzah46k5"))))
    (properties `((upstream-name . "settings")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/markvanderloo/settings")
    (synopsis "Software Option Settings Manager for R")
    (description
     "This package provides option settings management that goes beyond R's default
options function.  With this package, users can define their own option settings
manager holding option names, default values and (if so desired) ranges or sets
of allowed option values that will be automatically checked.  Settings can then
be retrieved, altered and reset to defaults with ease.  For R programmers and
package developers it offers cloning and merging functionality which allows for
conveniently defining global and local options, possibly in a multilevel options
hierarchy.  See the package vignette for some examples concerning functions, S4
classes, and reference classes.  There are convenience functions to reset par()
and options() to their factory defaults'.")
    (license gpl3)))

(define-public r-validate
  (package
    (name "r-validate")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validate" version))
       (sha256
        (base32 "0c7f33cm6v0rngbpgdkkqzjf3v024lzk6fjn6xd5sbnlbfrrkiqz"))))
    (properties `((upstream-name . "validate")))
    (build-system r-build-system)
    (propagated-inputs (list r-settings r-yaml))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/data-cleaning/validate")
    (synopsis "Data Validation Infrastructure")
    (description
     "Declare data validation rules and data quality indicators; confront data with
them and analyze or visualize the results.  The package supports rules that are
per-field, in-record, cross-record or cross-dataset.  Rules can be automatically
analyzed for rule type and connectivity.  Supports checks implied by an SDMX DSD
file as well.  See also Van der Loo and De Jonge (2018)
<doi:10.1002/9781118897126>, Chapter 6 and the JSS paper (2021)
<doi:10.18637/jss.v097.i10>.")
    (license gpl3)))

(define-public r-ameld
  (let ((commit "ac7414b87524dd76ffbb0d5c6b8947a224926528")
        (revision "1"))
    (package
      (name "r-ameld")
      (version (git-version "0.0.31" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/ampel-leipzig/ameld")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1bh4fp0k9qqml33g664dx22xagdfdb2bcvfvajwyb2s3fs1cgrl0"))))
      (properties `((upstream-name . "ameld")))
      (build-system r-build-system)
      (propagated-inputs (list r-glmnet r-survival))
      (native-inputs (list r-knitr))
      (home-page "https://github.com/ampel-leipzig/ameld")
      (synopsis
       "Data and Model of End-Stage Liver Disease used in the AMPEL Project")
      (description
       "This package provides a dataset of patients evaluated for liver transplantation
at the University Hospital Leipzig from November 2012 to June 2015.  Additional
the model used to predict survival in patients with end-stage liver disease in
the AMPEL (Analysis and Reporting System for the Improvement of Patient Safety
through Real-Time Integration of Laboratory Findings, \\url{https://ampel.care})
is provided.")
      (license gpl3+))))

(define-public r-dltr
  (let ((commit "c73a3ddfbb03421551c86b40d009cf2754ae8fb2")
        (revision "1"))
    (package
      (name "r-dltr")
      (version (git-version "0.0.3" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/umg-minai/dltr")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1znfxi6aqjcm8mmys9ykf3ssp4jrpc27si0d6nc7w9wl4g6ik1mz"))))
      (properties `((upstream-name . "dltr")))
      (build-system r-build-system)
      (propagated-inputs (list r-data-table r-lubridate))
      (home-page "https://github.com/umg-minai/dltr")
      (synopsis "Draeger logbook and trend reader")
      (description
       "This package provides a reader for logbook and trend data exported from Draeger
anaesthesia machines.")
      (license gpl3+))))

(define-public r-minair
  (let ((commit "07f0eaf97deead3d235f4b55637f5bef8e963938")
        (revision "1"))
    (package
      (name "r-minair")
      (version (git-version "0.0.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/umg-minai/minair")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1pan7d2k76drsnqpm66vjdsm4g5bw6kq5f18bf2y3r5m0p01937v"))))
      (properties `((upstream-name . "minair")))
      (build-system r-build-system)
      (propagated-inputs (list r-rprojroot))
      (home-page "https://github.com/umg-minai/minair")
      (synopsis "minai r utils")
      (description
       "R utilities and functions used in the Medizinische Informatik working group at
the Klinik für Anästhesie, Universitätsmedizin Greifswald.")
      (license gpl3+))))
