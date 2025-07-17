#' Create a new V2Sars2ProteinDatasetRequest
#'
#' @description
#' V2Sars2ProteinDatasetRequest Class
#'
#' @docType class
#' @title V2Sars2ProteinDatasetRequest
#' @description V2Sars2ProteinDatasetRequest Class
#' @format An \code{R6Class} generator object
#' @field proteins  list(character) [optional]
#' @field refseq_only  character [optional]
#' @field annotated_only  character [optional]
#' @field released_since  character [optional]
#' @field updated_since  character [optional]
#' @field host  character [optional]
#' @field pangolin_classification  character [optional]
#' @field geo_location  character [optional]
#' @field usa_state  character [optional]
#' @field complete_only  character [optional]
#' @field table_fields  list(\link{V2VirusTableField}) [optional]
#' @field include_sequence  list(\link{V2ViralSequenceType}) [optional]
#' @field aux_report  list(\link{V2VirusDatasetReportType}) [optional]
#' @field format  \link{V2TableFormat} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2Sars2ProteinDatasetRequest <- R6::R6Class(
  "V2Sars2ProteinDatasetRequest",
  public = list(
    `proteins` = NULL,
    `refseq_only` = NULL,
    `annotated_only` = NULL,
    `released_since` = NULL,
    `updated_since` = NULL,
    `host` = NULL,
    `pangolin_classification` = NULL,
    `geo_location` = NULL,
    `usa_state` = NULL,
    `complete_only` = NULL,
    `table_fields` = NULL,
    `include_sequence` = NULL,
    `aux_report` = NULL,
    `format` = NULL,

    #' @description
    #' Initialize a new V2Sars2ProteinDatasetRequest class.
    #'
    #' @param proteins proteins
    #' @param refseq_only refseq_only
    #' @param annotated_only annotated_only
    #' @param released_since released_since
    #' @param updated_since updated_since
    #' @param host host
    #' @param pangolin_classification pangolin_classification
    #' @param geo_location geo_location
    #' @param usa_state usa_state
    #' @param complete_only complete_only
    #' @param table_fields table_fields
    #' @param include_sequence include_sequence
    #' @param aux_report aux_report
    #' @param format format
    #' @param ... Other optional arguments.
    initialize = function(`proteins` = NULL, `refseq_only` = NULL, `annotated_only` = NULL, `released_since` = NULL, `updated_since` = NULL, `host` = NULL, `pangolin_classification` = NULL, `geo_location` = NULL, `usa_state` = NULL, `complete_only` = NULL, `table_fields` = NULL, `include_sequence` = NULL, `aux_report` = NULL, `format` = NULL, ...) {
      if (!is.null(`proteins`)) {
        stopifnot(is.vector(`proteins`), length(`proteins`) != 0)
        sapply(`proteins`, function(x) stopifnot(is.character(x)))
        self$`proteins` <- `proteins`
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
      if (!is.null(`table_fields`)) {
        stopifnot(is.vector(`table_fields`), length(`table_fields`) != 0)
        sapply(`table_fields`, function(x) stopifnot(R6::is.R6(x)))
        self$`table_fields` <- `table_fields`
      }
      if (!is.null(`include_sequence`)) {
        stopifnot(is.vector(`include_sequence`), length(`include_sequence`) != 0)
        sapply(`include_sequence`, function(x) stopifnot(R6::is.R6(x)))
        self$`include_sequence` <- `include_sequence`
      }
      if (!is.null(`aux_report`)) {
        stopifnot(is.vector(`aux_report`), length(`aux_report`) != 0)
        sapply(`aux_report`, function(x) stopifnot(R6::is.R6(x)))
        self$`aux_report` <- `aux_report`
      }
      if (!is.null(`format`)) {
        if (!(`format` %in% c())) {
          stop(paste("Error! \"", `format`, "\" cannot be assigned to `format`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`format`))
        self$`format` <- `format`
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
    #' @return V2Sars2ProteinDatasetRequest as a base R list.
    #' @examples
    #' # convert array of V2Sars2ProteinDatasetRequest (x) to a data frame
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
    #' Convert V2Sars2ProteinDatasetRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2Sars2ProteinDatasetRequestObject <- list()
      if (!is.null(self$`proteins`)) {
        V2Sars2ProteinDatasetRequestObject[["proteins"]] <-
          self$`proteins`
      }
      if (!is.null(self$`refseq_only`)) {
        V2Sars2ProteinDatasetRequestObject[["refseq_only"]] <-
          self$`refseq_only`
      }
      if (!is.null(self$`annotated_only`)) {
        V2Sars2ProteinDatasetRequestObject[["annotated_only"]] <-
          self$`annotated_only`
      }
      if (!is.null(self$`released_since`)) {
        V2Sars2ProteinDatasetRequestObject[["released_since"]] <-
          self$`released_since`
      }
      if (!is.null(self$`updated_since`)) {
        V2Sars2ProteinDatasetRequestObject[["updated_since"]] <-
          self$`updated_since`
      }
      if (!is.null(self$`host`)) {
        V2Sars2ProteinDatasetRequestObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`pangolin_classification`)) {
        V2Sars2ProteinDatasetRequestObject[["pangolin_classification"]] <-
          self$`pangolin_classification`
      }
      if (!is.null(self$`geo_location`)) {
        V2Sars2ProteinDatasetRequestObject[["geo_location"]] <-
          self$`geo_location`
      }
      if (!is.null(self$`usa_state`)) {
        V2Sars2ProteinDatasetRequestObject[["usa_state"]] <-
          self$`usa_state`
      }
      if (!is.null(self$`complete_only`)) {
        V2Sars2ProteinDatasetRequestObject[["complete_only"]] <-
          self$`complete_only`
      }
      if (!is.null(self$`table_fields`)) {
        V2Sars2ProteinDatasetRequestObject[["table_fields"]] <-
          lapply(self$`table_fields`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`include_sequence`)) {
        V2Sars2ProteinDatasetRequestObject[["include_sequence"]] <-
          lapply(self$`include_sequence`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`aux_report`)) {
        V2Sars2ProteinDatasetRequestObject[["aux_report"]] <-
          lapply(self$`aux_report`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`format`)) {
        V2Sars2ProteinDatasetRequestObject[["format"]] <-
          self$`format`$toSimpleType()
      }
      return(V2Sars2ProteinDatasetRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2Sars2ProteinDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2Sars2ProteinDatasetRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`proteins`)) {
        self$`proteins` <- ApiClient$new()$deserializeObj(this_object$`proteins`, "array[character]", loadNamespace("ncbiopenapi"))
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
      if (!is.null(this_object$`table_fields`)) {
        self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[V2VirusTableField]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`include_sequence`)) {
        self$`include_sequence` <- ApiClient$new()$deserializeObj(this_object$`include_sequence`, "array[V2ViralSequenceType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`aux_report`)) {
        self$`aux_report` <- ApiClient$new()$deserializeObj(this_object$`aux_report`, "array[V2VirusDatasetReportType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`format`)) {
        `format_object` <- V2TableFormat$new()
        `format_object`$fromJSON(jsonlite::toJSON(this_object$`format`, auto_unbox = TRUE, digits = NA))
        self$`format` <- `format_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2Sars2ProteinDatasetRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2Sars2ProteinDatasetRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2Sars2ProteinDatasetRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`proteins` <- ApiClient$new()$deserializeObj(this_object$`proteins`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`refseq_only` <- this_object$`refseq_only`
      self$`annotated_only` <- this_object$`annotated_only`
      self$`released_since` <- this_object$`released_since`
      self$`updated_since` <- this_object$`updated_since`
      self$`host` <- this_object$`host`
      self$`pangolin_classification` <- this_object$`pangolin_classification`
      self$`geo_location` <- this_object$`geo_location`
      self$`usa_state` <- this_object$`usa_state`
      self$`complete_only` <- this_object$`complete_only`
      self$`table_fields` <- ApiClient$new()$deserializeObj(this_object$`table_fields`, "array[V2VirusTableField]", loadNamespace("ncbiopenapi"))
      self$`include_sequence` <- ApiClient$new()$deserializeObj(this_object$`include_sequence`, "array[V2ViralSequenceType]", loadNamespace("ncbiopenapi"))
      self$`aux_report` <- ApiClient$new()$deserializeObj(this_object$`aux_report`, "array[V2VirusDatasetReportType]", loadNamespace("ncbiopenapi"))
      self$`format` <- V2TableFormat$new()$fromJSON(jsonlite::toJSON(this_object$`format`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2Sars2ProteinDatasetRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2Sars2ProteinDatasetRequest
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
# V2Sars2ProteinDatasetRequest$unlock()
#
## Below is an example to define the print function
# V2Sars2ProteinDatasetRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2Sars2ProteinDatasetRequest$lock()

