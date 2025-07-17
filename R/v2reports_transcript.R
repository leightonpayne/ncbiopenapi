#' Create a new V2reportsTranscript
#'
#' @description
#' V2reportsTranscript Class
#'
#' @docType class
#' @title V2reportsTranscript
#' @description V2reportsTranscript Class
#' @format An \code{R6Class} generator object
#' @field accession_version  character [optional]
#' @field name  character [optional]
#' @field length  integer [optional]
#' @field cds  \link{V2reportsSeqRangeSet} [optional]
#' @field genomic_locations  list(\link{V2reportsGenomicLocation}) [optional]
#' @field ensembl_transcript  character [optional]
#' @field protein  \link{V2reportsProtein} [optional]
#' @field type  \link{V2reportsTranscriptTranscriptType} [optional]
#' @field select_category  \link{V2reportsTranscriptSelectCategory} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsTranscript <- R6::R6Class(
  "V2reportsTranscript",
  public = list(
    `accession_version` = NULL,
    `name` = NULL,
    `length` = NULL,
    `cds` = NULL,
    `genomic_locations` = NULL,
    `ensembl_transcript` = NULL,
    `protein` = NULL,
    `type` = NULL,
    `select_category` = NULL,

    #' @description
    #' Initialize a new V2reportsTranscript class.
    #'
    #' @param accession_version accession_version
    #' @param name name
    #' @param length length
    #' @param cds cds
    #' @param genomic_locations genomic_locations
    #' @param ensembl_transcript ensembl_transcript
    #' @param protein protein
    #' @param type type
    #' @param select_category select_category
    #' @param ... Other optional arguments.
    initialize = function(`accession_version` = NULL, `name` = NULL, `length` = NULL, `cds` = NULL, `genomic_locations` = NULL, `ensembl_transcript` = NULL, `protein` = NULL, `type` = NULL, `select_category` = NULL, ...) {
      if (!is.null(`accession_version`)) {
        if (!(is.character(`accession_version`) && length(`accession_version`) == 1)) {
          stop(paste("Error! Invalid data for `accession_version`. Must be a string:", `accession_version`))
        }
        self$`accession_version` <- `accession_version`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`cds`)) {
        stopifnot(R6::is.R6(`cds`))
        self$`cds` <- `cds`
      }
      if (!is.null(`genomic_locations`)) {
        stopifnot(is.vector(`genomic_locations`), length(`genomic_locations`) != 0)
        sapply(`genomic_locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`genomic_locations` <- `genomic_locations`
      }
      if (!is.null(`ensembl_transcript`)) {
        if (!(is.character(`ensembl_transcript`) && length(`ensembl_transcript`) == 1)) {
          stop(paste("Error! Invalid data for `ensembl_transcript`. Must be a string:", `ensembl_transcript`))
        }
        self$`ensembl_transcript` <- `ensembl_transcript`
      }
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!is.null(`select_category`)) {
        if (!(`select_category` %in% c())) {
          stop(paste("Error! \"", `select_category`, "\" cannot be assigned to `select_category`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`select_category`))
        self$`select_category` <- `select_category`
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
    #' @return V2reportsTranscript as a base R list.
    #' @examples
    #' # convert array of V2reportsTranscript (x) to a data frame
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
    #' Convert V2reportsTranscript to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsTranscriptObject <- list()
      if (!is.null(self$`accession_version`)) {
        V2reportsTranscriptObject[["accession_version"]] <-
          self$`accession_version`
      }
      if (!is.null(self$`name`)) {
        V2reportsTranscriptObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`length`)) {
        V2reportsTranscriptObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`cds`)) {
        V2reportsTranscriptObject[["cds"]] <-
          self$`cds`$toSimpleType()
      }
      if (!is.null(self$`genomic_locations`)) {
        V2reportsTranscriptObject[["genomic_locations"]] <-
          lapply(self$`genomic_locations`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`ensembl_transcript`)) {
        V2reportsTranscriptObject[["ensembl_transcript"]] <-
          self$`ensembl_transcript`
      }
      if (!is.null(self$`protein`)) {
        V2reportsTranscriptObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`type`)) {
        V2reportsTranscriptObject[["type"]] <-
          self$`type`$toSimpleType()
      }
      if (!is.null(self$`select_category`)) {
        V2reportsTranscriptObject[["select_category"]] <-
          self$`select_category`$toSimpleType()
      }
      return(V2reportsTranscriptObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTranscript
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTranscript
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession_version`)) {
        self$`accession_version` <- this_object$`accession_version`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`cds`)) {
        `cds_object` <- V2reportsSeqRangeSet$new()
        `cds_object`$fromJSON(jsonlite::toJSON(this_object$`cds`, auto_unbox = TRUE, digits = NA))
        self$`cds` <- `cds_object`
      }
      if (!is.null(this_object$`genomic_locations`)) {
        self$`genomic_locations` <- ApiClient$new()$deserializeObj(this_object$`genomic_locations`, "array[V2reportsGenomicLocation]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`ensembl_transcript`)) {
        self$`ensembl_transcript` <- this_object$`ensembl_transcript`
      }
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- V2reportsProtein$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- V2reportsTranscriptTranscriptType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`select_category`)) {
        `select_category_object` <- V2reportsTranscriptSelectCategory$new()
        `select_category_object`$fromJSON(jsonlite::toJSON(this_object$`select_category`, auto_unbox = TRUE, digits = NA))
        self$`select_category` <- `select_category_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsTranscript in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTranscript
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTranscript
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession_version` <- this_object$`accession_version`
      self$`name` <- this_object$`name`
      self$`length` <- this_object$`length`
      self$`cds` <- V2reportsSeqRangeSet$new()$fromJSON(jsonlite::toJSON(this_object$`cds`, auto_unbox = TRUE, digits = NA))
      self$`genomic_locations` <- ApiClient$new()$deserializeObj(this_object$`genomic_locations`, "array[V2reportsGenomicLocation]", loadNamespace("ncbiopenapi"))
      self$`ensembl_transcript` <- this_object$`ensembl_transcript`
      self$`protein` <- V2reportsProtein$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`type` <- V2reportsTranscriptTranscriptType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`select_category` <- V2reportsTranscriptSelectCategory$new()$fromJSON(jsonlite::toJSON(this_object$`select_category`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsTranscript and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsTranscript
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
# V2reportsTranscript$unlock()
#
## Below is an example to define the print function
# V2reportsTranscript$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsTranscript$lock()

