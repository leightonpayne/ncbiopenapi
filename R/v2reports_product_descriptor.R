#' Create a new V2reportsProductDescriptor
#'
#' @description
#' V2reportsProductDescriptor Class
#'
#' @docType class
#' @title V2reportsProductDescriptor
#' @description V2reportsProductDescriptor Class
#' @format An \code{R6Class} generator object
#' @field gene_id  character [optional]
#' @field symbol  character [optional]
#' @field description  character [optional]
#' @field tax_id  character [optional]
#' @field taxname  character [optional]
#' @field common_name  character [optional]
#' @field type  \link{V2reportsGeneType} [optional]
#' @field rna_type  \link{V2reportsRnaType} [optional]
#' @field transcripts  list(\link{V2reportsTranscript}) [optional]
#' @field transcript_count  integer [optional]
#' @field protein_count  integer [optional]
#' @field transcript_type_counts  list(\link{V2reportsTranscriptTypeCount}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsProductDescriptor <- R6::R6Class(
  "V2reportsProductDescriptor",
  public = list(
    `gene_id` = NULL,
    `symbol` = NULL,
    `description` = NULL,
    `tax_id` = NULL,
    `taxname` = NULL,
    `common_name` = NULL,
    `type` = NULL,
    `rna_type` = NULL,
    `transcripts` = NULL,
    `transcript_count` = NULL,
    `protein_count` = NULL,
    `transcript_type_counts` = NULL,

    #' @description
    #' Initialize a new V2reportsProductDescriptor class.
    #'
    #' @param gene_id gene_id
    #' @param symbol symbol
    #' @param description description
    #' @param tax_id tax_id
    #' @param taxname taxname
    #' @param common_name common_name
    #' @param type type
    #' @param rna_type rna_type
    #' @param transcripts transcripts
    #' @param transcript_count transcript_count
    #' @param protein_count protein_count
    #' @param transcript_type_counts transcript_type_counts
    #' @param ... Other optional arguments.
    initialize = function(`gene_id` = NULL, `symbol` = NULL, `description` = NULL, `tax_id` = NULL, `taxname` = NULL, `common_name` = NULL, `type` = NULL, `rna_type` = NULL, `transcripts` = NULL, `transcript_count` = NULL, `protein_count` = NULL, `transcript_type_counts` = NULL, ...) {
      if (!is.null(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`tax_id`)) {
        if (!(is.character(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be a string:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`taxname`)) {
        if (!(is.character(`taxname`) && length(`taxname`) == 1)) {
          stop(paste("Error! Invalid data for `taxname`. Must be a string:", `taxname`))
        }
        self$`taxname` <- `taxname`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!is.null(`rna_type`)) {
        if (!(`rna_type` %in% c())) {
          stop(paste("Error! \"", `rna_type`, "\" cannot be assigned to `rna_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`rna_type`))
        self$`rna_type` <- `rna_type`
      }
      if (!is.null(`transcripts`)) {
        stopifnot(is.vector(`transcripts`), length(`transcripts`) != 0)
        sapply(`transcripts`, function(x) stopifnot(R6::is.R6(x)))
        self$`transcripts` <- `transcripts`
      }
      if (!is.null(`transcript_count`)) {
        if (!(is.numeric(`transcript_count`) && length(`transcript_count`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_count`. Must be an integer:", `transcript_count`))
        }
        self$`transcript_count` <- `transcript_count`
      }
      if (!is.null(`protein_count`)) {
        if (!(is.numeric(`protein_count`) && length(`protein_count`) == 1)) {
          stop(paste("Error! Invalid data for `protein_count`. Must be an integer:", `protein_count`))
        }
        self$`protein_count` <- `protein_count`
      }
      if (!is.null(`transcript_type_counts`)) {
        stopifnot(is.vector(`transcript_type_counts`), length(`transcript_type_counts`) != 0)
        sapply(`transcript_type_counts`, function(x) stopifnot(R6::is.R6(x)))
        self$`transcript_type_counts` <- `transcript_type_counts`
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
    #' @return V2reportsProductDescriptor as a base R list.
    #' @examples
    #' # convert array of V2reportsProductDescriptor (x) to a data frame
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
    #' Convert V2reportsProductDescriptor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsProductDescriptorObject <- list()
      if (!is.null(self$`gene_id`)) {
        V2reportsProductDescriptorObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`symbol`)) {
        V2reportsProductDescriptorObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`description`)) {
        V2reportsProductDescriptorObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`tax_id`)) {
        V2reportsProductDescriptorObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`taxname`)) {
        V2reportsProductDescriptorObject[["taxname"]] <-
          self$`taxname`
      }
      if (!is.null(self$`common_name`)) {
        V2reportsProductDescriptorObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`type`)) {
        V2reportsProductDescriptorObject[["type"]] <-
          self$`type`$toSimpleType()
      }
      if (!is.null(self$`rna_type`)) {
        V2reportsProductDescriptorObject[["rna_type"]] <-
          self$`rna_type`$toSimpleType()
      }
      if (!is.null(self$`transcripts`)) {
        V2reportsProductDescriptorObject[["transcripts"]] <-
          lapply(self$`transcripts`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`transcript_count`)) {
        V2reportsProductDescriptorObject[["transcript_count"]] <-
          self$`transcript_count`
      }
      if (!is.null(self$`protein_count`)) {
        V2reportsProductDescriptorObject[["protein_count"]] <-
          self$`protein_count`
      }
      if (!is.null(self$`transcript_type_counts`)) {
        V2reportsProductDescriptorObject[["transcript_type_counts"]] <-
          lapply(self$`transcript_type_counts`, function(x) x$toSimpleType())
      }
      return(V2reportsProductDescriptorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsProductDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsProductDescriptor
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`taxname`)) {
        self$`taxname` <- this_object$`taxname`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- V2reportsGeneType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`rna_type`)) {
        `rna_type_object` <- V2reportsRnaType$new()
        `rna_type_object`$fromJSON(jsonlite::toJSON(this_object$`rna_type`, auto_unbox = TRUE, digits = NA))
        self$`rna_type` <- `rna_type_object`
      }
      if (!is.null(this_object$`transcripts`)) {
        self$`transcripts` <- ApiClient$new()$deserializeObj(this_object$`transcripts`, "array[V2reportsTranscript]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`transcript_count`)) {
        self$`transcript_count` <- this_object$`transcript_count`
      }
      if (!is.null(this_object$`protein_count`)) {
        self$`protein_count` <- this_object$`protein_count`
      }
      if (!is.null(this_object$`transcript_type_counts`)) {
        self$`transcript_type_counts` <- ApiClient$new()$deserializeObj(this_object$`transcript_type_counts`, "array[V2reportsTranscriptTypeCount]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsProductDescriptor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsProductDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsProductDescriptor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_id` <- this_object$`gene_id`
      self$`symbol` <- this_object$`symbol`
      self$`description` <- this_object$`description`
      self$`tax_id` <- this_object$`tax_id`
      self$`taxname` <- this_object$`taxname`
      self$`common_name` <- this_object$`common_name`
      self$`type` <- V2reportsGeneType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`rna_type` <- V2reportsRnaType$new()$fromJSON(jsonlite::toJSON(this_object$`rna_type`, auto_unbox = TRUE, digits = NA))
      self$`transcripts` <- ApiClient$new()$deserializeObj(this_object$`transcripts`, "array[V2reportsTranscript]", loadNamespace("ncbiopenapi"))
      self$`transcript_count` <- this_object$`transcript_count`
      self$`protein_count` <- this_object$`protein_count`
      self$`transcript_type_counts` <- ApiClient$new()$deserializeObj(this_object$`transcript_type_counts`, "array[V2reportsTranscriptTypeCount]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsProductDescriptor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsProductDescriptor
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
# V2reportsProductDescriptor$unlock()
#
## Below is an example to define the print function
# V2reportsProductDescriptor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsProductDescriptor$lock()

