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
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "reactR" version))
              (sha256
               (base32
                "14nqaxgfnqrwl67b705jna8vljhx9xlakvkdl76bwk759myhsscv"))))
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
    (native-inputs (list r-testthat))
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
    (native-inputs (list r-testthat))
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
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "bigD" version))
              (sha256
               (base32
                "1lc8c3g22sb3mkmr0vjw6x92cs04gdfsny1iii0v3xj9337v1cc6"))))
    (properties `((upstream-name . "bigD")))
    (build-system r-build-system)
    (native-inputs (list r-testthat r-vctrs))
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
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gt" version))
              (sha256
               (base32
                "06sq5gscf16nkygnfmchg0kjbrd07qyybyg7mqzz0m3a0g81pskf"))))
    (properties `((upstream-name . "gt")))
    (build-system r-build-system)
    (native-inputs (list r-rvest r-testthat r-tidyr))
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
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gtsummary" version))
              (sha256
               (base32
                "1nkx78n7xf8hcd9c3adbdplj39mv819bd83n8ii6mq0j9vp5bpls"))))
    (properties `((upstream-name . "gtsummary")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cards
                             r-cli
                             r-dplyr
                             r-glue
                             r-gt
                             r-lifecycle
                             r-rlang
                             r-tidyr
                             r-vctrs))
    (native-inputs (list r-broom
                         r-broom-helpers
                         r-broom-mixed
                         r-car
                         r-cardx
                         r-flextable
                         r-geepack
                         r-knitr
                         r-lme4
                         r-mice
                         r-nnet
                         r-parsnip
                         r-spelling
                         r-survey
                         r-survival
                         r-testthat
                         r-withr
                         r-workflows))
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

(define-public r-cards
  (package
    (name "r-cards")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "cards" version))
       (sha256
        (base32 "1ndzhsk9c82hr8c3w9b2a7lgfns24p2hk2nqkmwpymb8a7yx9fbc"))))
    (properties `((upstream-name . "cards")))
    (build-system r-build-system)
    (native-inputs (list r-testthat r-withr))
    (propagated-inputs (list r-cli
                             r-dplyr
                             r-glue
                             r-lifecycle
                             r-rlang
                             r-tidyr
                             r-tidyselect))
    (home-page "https://github.com/insightsengineering/cards")
    (synopsis "Analysis Results Data")
    (description
     "Construct CDISC (Clinical Data Interchange Standards Consortium) compliant
Analysis Results Data objects.  These objects are used and re-used to construct
summary tables, visualizations, and written reports.  The package also exports
utilities for working with these objects and creating new Analysis Results Data
objects.")
    (license asl2.0)))

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
  (let ((commit "e12cd00f48f2763b06959c44ddf78394bf3fca06")
        (revision "1"))
    (package
      (name "r-ameld")
      (version (git-version "0.0.32" revision commit))
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
      (native-inputs (list r-knitr r-testthat))
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
    (package
      (name "r-dltr")
      (version "0.0.4")
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/umg-minai/dltr")
               (commit version)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1a9kff0lyv9jkpmw2vxd2n8ncxf7dzs3jz4cg8rr522caxqmmmc7"))))
      (properties `((upstream-name . "dltr")))
      (build-system r-build-system)
      (native-inputs (list r-testthat))
      (propagated-inputs (list r-data-table r-lubridate))
      (home-page "https://github.com/umg-minai/dltr")
      (synopsis "Draeger logbook and trend reader")
      (description
       "This package provides a reader for logbook and trend data exported from Draeger
anaesthesia machines.")
      (license gpl3+)))

(define-public r-minair
    (package
      (name "r-minair")
      (version "0.0.5")
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/umg-minai/minair")
               (commit version)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0xy6p5m1rb1kaqj0kiib2znlpqsx4rj3fx32lphvxssjym794by7"))))
      (properties `((upstream-name . "minair")))
      (build-system r-build-system)
      (native-inputs (list r-testthat))
      (propagated-inputs (list r-rprojroot))
      (home-page "https://github.com/umg-minai/minair")
      (synopsis "minai r utils")
      (description
       "R utilities and functions used in the Medizinische Informatik working group at
the Klinik für Anästhesie, Universitätsmedizin Greifswald.")
      (license gpl3+)))

(define-public r-nestedcv-bates
  (let ((commit "7f9d5ae46f941dbff11d7aa74b68f88f9be3eb20")
        (revision "1"))
    (package
      (name "r-nestedcv-bates")
      (version (git-version "0.1.0" revision commit))
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
               (url "https://github.com/stephenbates19/nestedcv.git")
               (commit commit)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "0q4jji77xm00nq0pqxcl5a7w4k3p89s6sk6l7z87izradx7a32hm"))))
      (properties `((upstream-name . "nestedcv")))
      (build-system r-build-system)
      (native-inputs (list r-knitr))
      (home-page "https://github.com/stephenbates19/nestedcv.git")
      (synopsis "Nested Cross-Validation")
      (description
       "This package implements nested cross-validation to return adjusted
cross-validation confidence intervals for prediction error.")
      (license expat))))

(define-public r-glue.1.8
  (package
    (inherit r-glue)
    (name "r-glue.1.8")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "glue" version))
       (sha256
        (base32 "183j9gpffmi30lfifl8d9sq1l25f8dgsgqd3blpndf4rm15kcvy8"))))))

(define-public r-tableone
  (package
    (name "r-tableone")
    (version "0.13.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "tableone" version))
       (sha256
        (base32 "1br78y68037g5v5jhgi9l393kj2msamdklim8ki40hmxk9bibkxi"))))
    (properties `((upstream-name . "tableone")))
    (build-system r-build-system)
    (propagated-inputs (list r-e1071
                             r-gmodels
                             r-labelled
                             r-mass
                             r-nlme
                             r-survey
                             r-zoo))
    (native-inputs (list r-geepack
                         r-knitr
                         r-lme4
                         r-lmertest
                         r-matrix
                         r-survival
                         r-testthat))
    (home-page "https://github.com/kaz-yos/tableone")
    (synopsis
     "Create 'Table 1' to Describe Baseline Characteristics with or without Propensity Score Weights")
    (description
     "This package creates Table 1', i.e., description of baseline patient
characteristics, which is essential in every medical research.  Supports both
continuous and categorical variables, as well as p-values and standardized mean
differences.  Weighted data are supported via the survey package.")
    (license gpl2)))

(define-public r-stddiff
  (package
    (name "r-stddiff")
    (version "3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "stddiff" version))
       (sha256
        (base32 "1lirfxqiq59vhjkq1zv27ycybbs9n62c14klkkcf74j15a54cmbn"))))
    (properties `((upstream-name . "stddiff")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=stddiff")
    (synopsis
     "Calculate the Standardized Difference for Numeric, Binary and Category Variables")
    (description
     "This package contains three main functions including @code{stddiff.numeric()},
@code{stddiff.binary()} and @code{stddiff.category()}.  These are used to
calculate the standardized difference between two groups.  It is especially used
to evaluate the balance between two groups before and after propensity score
matching.")
    (license gpl3)))

(define-public r-smd
  (package
    (name "r-smd")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "smd" version))
       (sha256
        (base32 "1f5pph3728jb15bmyv0xdanww490gjm5ixz9dbvdv27av02p12js"))))
    (properties `((upstream-name . "smd")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr r-purrr r-stddiff r-tableone r-testthat))
    (home-page "https://bsaul.github.io/smd/")
    (synopsis "Compute Standardized Mean Differences")
    (description
     "Computes standardized mean differences and confidence intervals for multiple
data types based on Yang, D., & Dalton, J. E. (2012)
<https://support.sas.com/resources/papers/proceedings12/335-2012.pdf>.")
    (license expat)))

(define-public r-geepack
  (package
    (name "r-geepack")
    (version "1.3.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "geepack" version))
       (sha256
        (base32 "0k856hw7zh553yrqp9g3s19hjviadh36drg2vvaddv2ma5ayj6z0"))))
    (properties `((upstream-name . "geepack")))
    (build-system r-build-system)
    (propagated-inputs (list r-broom r-magrittr r-mass))
    (home-page "https://cran.r-project.org/package=geepack")
    (synopsis "Generalized Estimating Equation Package")
    (description
     "Generalized estimating equations solver for parameters in mean, scale, and
correlation structures, through mean link, scale link, and correlation link.
Can also handle clustered categorical responses.  See e.g. Halekoh and
HÃ¸jsgaard, (2005, <doi:10.18637/jss.v015.i02>), for details.")
    (license gpl3+)))

(define-public r-broom-mixed
  (package
    (name "r-broom-mixed")
    (version "0.2.9.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "broom.mixed" version))
       (sha256
        (base32 "134qwdwhm0ih55n26hbyqb1hxj8d5k5jpc6gagpn9ny2vryzsszh"))))
    (properties `((upstream-name . "broom.mixed")))
    (build-system r-build-system)
    (propagated-inputs (list r-broom
                             r-coda
                             r-dplyr
                             r-forcats
                             r-furrr
                             r-nlme
                             r-purrr
                             r-stringr
                             r-tibble
                             r-tidyr))
    (native-inputs (list r-gamlss-data r-glmmtmb r-knitr r-rstan r-testthat))
    (home-page "https://github.com/bbolker/broom.mixed")
    (synopsis "Tidying Methods for Mixed Models")
    (description
     "Convert fitted objects from various R mixed-model packages into tidy data frames
along the lines of the broom package.  The package provides three S3 generics
for each model: @code{tidy()}, which summarizes a model's statistical findings
such as coefficients of a regression; @code{augment()}, which adds columns to
the original data such as predictions, residuals and cluster assignments; and
@code{glance()}, which provides a one-row summary of model-level statistics.")
    (license gpl3)))

(define-public r-ggsurvfit
  (package
    (name "r-ggsurvfit")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ggsurvfit" version))
       (sha256
        (base32 "0c3qv9gii3ndqip3nxs08bx7lvh6sm46mxz8nyi627zbgqmhwrr5"))))
    (properties `((upstream-name . "ggsurvfit")))
    (build-system r-build-system)
    ;; ggsurvfit and cardx both suggest each other and introduce a cyclic
    ;; dependency; unfortunately tests fail without these suggested packages
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-broom
                             r-cli
                             r-dplyr
                             r-ggplot2
                             r-glue
                             r-gtable
                             r-patchwork
                             r-rlang
                             r-survival
                             r-tidyr))
    (native-inputs (list r-knitr
                         r-scales
                         r-spelling
                         r-testthat
                         r-tidycmprsk
                         r-vdiffr
                         r-withr))
    (home-page "https://github.com/pharmaverse/ggsurvfit")
    (synopsis "Flexible Time-to-Event Figures")
    (description
     "Ease the creation of time-to-event (i.e.  survival) endpoint figures.  The
modular functions create figures ready for publication.  Each of the functions
that add to or modify the figure are written as proper ggplot2 geoms or stat
methods, allowing the functions from this package to be combined with any
function or customization from ggplot2 and other ggplot2 extension packages.")
    (license expat)))

(define-public r-tidycmprsk
  (package
    (name "r-tidycmprsk")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "tidycmprsk" version))
       (sha256
        (base32 "1w88zz5wscb25j59hx1bzlmf13mh8wqngkffnhmp6vwn1a53i8lx"))))
    (properties `((upstream-name . "tidycmprsk")))
    (build-system r-build-system)
    (propagated-inputs (list r-broom
                             r-cli
                             r-cmprsk
                             r-dplyr
                             r-ggplot2
                             r-gtsummary
                             r-hardhat
                             r-purrr
                             r-rlang
                             r-stringr
                             r-survival
                             r-tibble
                             r-tidyr))
    (native-inputs (list r-spelling r-testthat))
    (home-page "https://mskcc-epi-bio.github.io/tidycmprsk/")
    (synopsis "Competing Risks Estimation")
    (description
     "This package provides an intuitive interface for working with the competing risk
endpoints.  The package wraps the cmprsk package, and exports functions for
univariate cumulative incidence estimates and competing risk regression.
Methods follow those introduced in Fine and Gray (1999) <doi:10.1002/sim.7501>.")
    (license agpl3+)))
