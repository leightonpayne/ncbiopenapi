#' Create a new V2VirusAnnotationFilter
#'
#' @description
#' V2VirusAnnotationFilter Class
#'
#' @docType class
#' @title V2VirusAnnotationFilter
#' @description V2VirusAnnotationFilter Class
#' @format An \code{R6Class} generator object
#' @field accessions  list(character) [optional]
#' @field taxon  character [optional]
#' @field taxons  list(character) [optional]
#' @field refseq_only  character [optional]
#' @field annotated_only  character [optional]
#' @field released_since  character [optional]
#' @field updated_since  character [optional]
#' @field host  character [optional]
#' @field pangolin_classification  character [optional]
#' @field geo_location  character [optional]
#' @field usa_state  character [optional]
#' @field complete_only  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2VirusAnnotationFilter <- R6::R6Class(
  "V2VirusAnnotationFilter",
  public = list(
    `accessions` = NULL,
    `taxon` = NULL,
    `taxons` = NULL,
    `refseq_only` = NULL,
    `annotated_only` = NULL,
    `released_since` = NULL,
    `updated_since` = NULL,
    `host` = NULL,
    `pangolin_classification` = NULL,
    `geo_location` = NULL,
    `usa_state` = NULL,
    `complete_only` = NULL,

    #' @description
    #' Initialize a new V2VirusAnnotationFilter class.
    #'
    #' @param accessions accessions
    #' @param taxon taxon
    #' @param taxons taxons
    #' @param refseq_only refseq_only
    #' @param annotated_only annotated_only
    #' @param released_since released_since
    #' @param updated_since updated_since
    #' @param host host
    #' @param pangolin_classification pangolin_classification
    #' @param geo_location geo_location
    #' @param usa_state usa_state
    #' @param complete_only complete_only
    #' @param ... Other optional arguments.
    initialize = function(`accessions` = NULL, `taxon` = NULL, `taxons` = NULL, `refseq_only` = NULL, `annotated_only` = NULL, `released_since` = NULL, `updated_since` = NULL, `host` = NULL, `pangolin_classification` = NULL, `geo_location` = NULL, `usa_state` = NULL, `complete_only` = NULL, ...) {
      if (!is.null(`accessions`)) {
        stopifnot(is.vector(`accessions`), length(`accessions`) != 0)
        sapply(`accessions`, function(x) stopifnot(is.character(x)))
        self$`accessions` <- `accessions`
      }
      if (!is.null(`taxon`)) {
        if (!(is.character(`taxon`) && length(`taxon`) == 1)) {
          stop(paste("Error! Invalid data for `taxon`. Must be a string:", `taxon`))
        }
        self$`taxon` <- `taxon`
      }
      if (!is.null(`taxons`)) {
        stopifnot(is.vector(`taxons`), length(`taxons`) != 0)
        sapply(`taxons`, function(x) stopifnot(is.character(x)))
        self$`taxons` <- `taxons`
      }
      if (!is.null(`refseq_only`)) {
        if (!(is.logical(`refseq_only`) && length(`refseq_only`) == 1)) {
          stop(paste("Error! Invalid data for `refseq_only`. Must be a boolean:", `refseq_only`))
        }
        self$`refseq_only` <- `refseq_only`
      }
      if (!is.null(`annotated_only`)) {
        if (!(is.logical(`annotated_only`) && length(`annotated_only`) == 1)) {
          stop(paste("Error! Invalid data for `annotated_only`. Must be a boolean:", `annotated_only`))
        }
        self$`annotated_only` <- `annotated_only`
      }
      if (!is.null(`released_since`)) {
        if (!is.character(`released_since`)) {
          stop(paste("Error! Invalid data for `released_since`. Must be a string:", `released_since`))
        }
        self$`released_since` <- `released_since`
      }
      if (!is.null(`updated_since`)) {
        if (!is.character(`updated_since`)) {
          stop(paste("Error! Invalid data for `updated_since`. Must be a string:", `updated_since`))
        }
        self$`updated_since` <- `updated_since`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`pangolin_classification`)) {
        if (!(is.character(`pangolin_classification`) && length(`pangolin_classification`) == 1)) {
          stop(paste("Error! Invalid data for `pangolin_classification`. Must be a string:", `pangolin_classification`))
        }
        self$`pangolin_classification` <- `pangolin_classification`
      }
      if (!is.null(`geo_location`)) {
        if (!(is.character(`geo_location`) && length(`geo_location`) == 1)) {
          stop(paste("Error! Invalid data for `geo_location`. Must be a string:", `geo_location`))
        }
        self$`geo_location` <- `geo_location`
      }
      if (!is.null(`usa_state`)) {
        if (!(is.character(`usa_state`) && length(`usa_state`) == 1)) {
          stop(paste("Error! Invalid data for `usa_state`. Must be a string:", `usa_state`))
        }
        self$`usa_state` <- `usa_state`
      }
      if (!is.null(`complete_only`)) {
        if (!(is.logical(`complete_only`) && length(`complete_only`) == 1)) {
          stop(paste("Error! Invalid data for `complete_only`. Must be a boolean:", `complete_only`))
        }
        self$`complete_only` <- `complete_only`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return V2VirusAnnotationFilter as a base R list.
    #' @examples
    #' # convert array of V2VirusAnnotationFilter (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert V2VirusAnnotationFilter to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2VirusAnnotationFilterObject <- list()
      if (!is.null(self$`accessions`)) {
        V2VirusAnnotationFilterObject[["accessions"]] <-
          self$`accessions`
      }
      if (!is.null(self$`taxon`)) {
        V2VirusAnnotationFilterObject[["taxon"]] <-
          self$`taxon`
      }
      if (!is.null(self$`taxons`)) {
        V2VirusAnnotationFilterObject[["taxons"]] <-
          self$`taxons`
      }
      if (!is.null(self$`refseq_only`)) {
        V2VirusAnnotationFilterObject[["refseq_only"]] <-
          self$`refseq_only`
      }
      if (!is.null(self$`annotated_only`)) {
        V2VirusAnnotationFilterObject[["annotated_only"]] <-
          self$`annotated_only`
      }
      if (!is.null(self$`released_since`)) {
        V2VirusAnnotationFilterObject[["released_since"]] <-
          self$`released_since`
      }
      if (!is.null(self$`updated_since`)) {
        V2VirusAnnotationFilterObject[["updated_since"]] <-
          self$`updated_since`
      }
      if (!is.null(self$`host`)) {
        V2VirusAnnotationFilterObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`pangolin_classification`)) {
        V2VirusAnnotationFilterObject[["pangolin_classification"]] <-
          self$`pangolin_classification`
      }
      if (!is.null(self$`geo_location`)) {
        V2VirusAnnotationFilterObject[["geo_location"]] <-
          self$`geo_location`
      }
      if (!is.null(self$`usa_state`)) {
        V2VirusAnnotationFilterObject[["usa_state"]] <-
          self$`usa_state`
      }
      if (!is.null(self$`complete_only`)) {
        V2VirusAnnotationFilterObject[["complete_only"]] <-
          self$`complete_only`
      }
      return(V2VirusAnnotationFilterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAnnotationFilter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAnnotationFilter
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accessions`)) {
        self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`taxon`)) {
        self$`taxon` <- this_object$`taxon`
      }
      if (!is.null(this_object$`taxons`)) {
        self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`refseq_only`)) {
        self$`refseq_only` <- this_object$`refseq_only`
      }
      if (!is.null(this_object$`annotated_only`)) {
        self$`annotated_only` <- this_object$`annotated_only`
      }
      if (!is.null(this_object$`released_since`)) {
        self$`released_since` <- this_object$`released_since`
      }
      if (!is.null(this_object$`updated_since`)) {
        self$`updated_since` <- this_object$`updated_since`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`pangolin_classification`)) {
        self$`pangolin_classification` <- this_object$`pangolin_classification`
      }
      if (!is.null(this_object$`geo_location`)) {
        self$`geo_location` <- this_object$`geo_location`
      }
      if (!is.null(this_object$`usa_state`)) {
        self$`usa_state` <- this_object$`usa_state`
      }
      if (!is.null(this_object$`complete_only`)) {
        self$`complete_only` <- this_object$`complete_only`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2VirusAnnotationFilter in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2VirusAnnotationFilter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2VirusAnnotationFilter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accessions` <- ApiClient$new()$deserializeObj(this_object$`accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`taxon` <- this_object$`taxon`
      self$`taxons` <- ApiClient$new()$deserializeObj(this_object$`taxons`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`refseq_only` <- this_object$`refseq_only`
      self$`annotated_only` <- this_object$`annotated_only`
      self$`released_since` <- this_object$`released_since`
      self$`updated_since` <- this_object$`updated_since`
      self$`host` <- this_object$`host`
      self$`pangolin_classification` <- this_object$`pangolin_classification`
      self$`geo_location` <- this_object$`geo_location`
      self$`usa_state` <- this_object$`usa_state`
      self$`complete_only` <- this_object$`complete_only`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2VirusAnnotationFilter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2VirusAnnotationFilter
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# V2VirusAnnotationFilter$unlock()
#
## Below is an example to define the print function
# V2VirusAnnotationFilter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2VirusAnnotationFilter$lock()

