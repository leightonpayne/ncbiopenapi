#' Create a new V2reportsPairedAssembly
#'
#' @description
#' V2reportsPairedAssembly Class
#'
#' @docType class
#' @title V2reportsPairedAssembly
#' @description V2reportsPairedAssembly Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field status  \link{V2reportsAssemblyStatus} [optional]
#' @field annotation_name  character [optional]
#' @field only_genbank  character [optional]
#' @field only_refseq  character [optional]
#' @field changed  character [optional]
#' @field manual_diff  character [optional]
#' @field refseq_genbank_are_different  character [optional]
#' @field differences  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsPairedAssembly <- R6::R6Class(
  "V2reportsPairedAssembly",
  public = list(
    `accession` = NULL,
    `status` = NULL,
    `annotation_name` = NULL,
    `only_genbank` = NULL,
    `only_refseq` = NULL,
    `changed` = NULL,
    `manual_diff` = NULL,
    `refseq_genbank_are_different` = NULL,
    `differences` = NULL,

    #' @description
    #' Initialize a new V2reportsPairedAssembly class.
    #'
    #' @param accession accession
    #' @param status status
    #' @param annotation_name annotation_name
    #' @param only_genbank only_genbank
    #' @param only_refseq only_refseq
    #' @param changed changed
    #' @param manual_diff manual_diff
    #' @param refseq_genbank_are_different refseq_genbank_are_different
    #' @param differences differences
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `status` = NULL, `annotation_name` = NULL, `only_genbank` = NULL, `only_refseq` = NULL, `changed` = NULL, `manual_diff` = NULL, `refseq_genbank_are_different` = NULL, `differences` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`status`)) {
        if (!(`status` %in% c())) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`annotation_name`)) {
        if (!(is.character(`annotation_name`) && length(`annotation_name`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_name`. Must be a string:", `annotation_name`))
        }
        self$`annotation_name` <- `annotation_name`
      }
      if (!is.null(`only_genbank`)) {
        if (!(is.character(`only_genbank`) && length(`only_genbank`) == 1)) {
          stop(paste("Error! Invalid data for `only_genbank`. Must be a string:", `only_genbank`))
        }
        self$`only_genbank` <- `only_genbank`
      }
      if (!is.null(`only_refseq`)) {
        if (!(is.character(`only_refseq`) && length(`only_refseq`) == 1)) {
          stop(paste("Error! Invalid data for `only_refseq`. Must be a string:", `only_refseq`))
        }
        self$`only_refseq` <- `only_refseq`
      }
      if (!is.null(`changed`)) {
        if (!(is.character(`changed`) && length(`changed`) == 1)) {
          stop(paste("Error! Invalid data for `changed`. Must be a string:", `changed`))
        }
        self$`changed` <- `changed`
      }
      if (!is.null(`manual_diff`)) {
        if (!(is.character(`manual_diff`) && length(`manual_diff`) == 1)) {
          stop(paste("Error! Invalid data for `manual_diff`. Must be a string:", `manual_diff`))
        }
        self$`manual_diff` <- `manual_diff`
      }
      if (!is.null(`refseq_genbank_are_different`)) {
        if (!(is.logical(`refseq_genbank_are_different`) && length(`refseq_genbank_are_different`) == 1)) {
          stop(paste("Error! Invalid data for `refseq_genbank_are_different`. Must be a boolean:", `refseq_genbank_are_different`))
        }
        self$`refseq_genbank_are_different` <- `refseq_genbank_are_different`
      }
      if (!is.null(`differences`)) {
        if (!(is.character(`differences`) && length(`differences`) == 1)) {
          stop(paste("Error! Invalid data for `differences`. Must be a string:", `differences`))
        }
        self$`differences` <- `differences`
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
    #' @return V2reportsPairedAssembly as a base R list.
    #' @examples
    #' # convert array of V2reportsPairedAssembly (x) to a data frame
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
    #' Convert V2reportsPairedAssembly to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsPairedAssemblyObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsPairedAssemblyObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`status`)) {
        V2reportsPairedAssemblyObject[["status"]] <-
          self$`status`$toSimpleType()
      }
      if (!is.null(self$`annotation_name`)) {
        V2reportsPairedAssemblyObject[["annotation_name"]] <-
          self$`annotation_name`
      }
      if (!is.null(self$`only_genbank`)) {
        V2reportsPairedAssemblyObject[["only_genbank"]] <-
          self$`only_genbank`
      }
      if (!is.null(self$`only_refseq`)) {
        V2reportsPairedAssemblyObject[["only_refseq"]] <-
          self$`only_refseq`
      }
      if (!is.null(self$`changed`)) {
        V2reportsPairedAssemblyObject[["changed"]] <-
          self$`changed`
      }
      if (!is.null(self$`manual_diff`)) {
        V2reportsPairedAssemblyObject[["manual_diff"]] <-
          self$`manual_diff`
      }
      if (!is.null(self$`refseq_genbank_are_different`)) {
        V2reportsPairedAssemblyObject[["refseq_genbank_are_different"]] <-
          self$`refseq_genbank_are_different`
      }
      if (!is.null(self$`differences`)) {
        V2reportsPairedAssemblyObject[["differences"]] <-
          self$`differences`
      }
      return(V2reportsPairedAssemblyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsPairedAssembly
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsPairedAssembly
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- V2reportsAssemblyStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`annotation_name`)) {
        self$`annotation_name` <- this_object$`annotation_name`
      }
      if (!is.null(this_object$`only_genbank`)) {
        self$`only_genbank` <- this_object$`only_genbank`
      }
      if (!is.null(this_object$`only_refseq`)) {
        self$`only_refseq` <- this_object$`only_refseq`
      }
      if (!is.null(this_object$`changed`)) {
        self$`changed` <- this_object$`changed`
      }
      if (!is.null(this_object$`manual_diff`)) {
        self$`manual_diff` <- this_object$`manual_diff`
      }
      if (!is.null(this_object$`refseq_genbank_are_different`)) {
        self$`refseq_genbank_are_different` <- this_object$`refseq_genbank_are_different`
      }
      if (!is.null(this_object$`differences`)) {
        self$`differences` <- this_object$`differences`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsPairedAssembly in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsPairedAssembly
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsPairedAssembly
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`status` <- V2reportsAssemblyStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`annotation_name` <- this_object$`annotation_name`
      self$`only_genbank` <- this_object$`only_genbank`
      self$`only_refseq` <- this_object$`only_refseq`
      self$`changed` <- this_object$`changed`
      self$`manual_diff` <- this_object$`manual_diff`
      self$`refseq_genbank_are_different` <- this_object$`refseq_genbank_are_different`
      self$`differences` <- this_object$`differences`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsPairedAssembly and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsPairedAssembly
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
# V2reportsPairedAssembly$unlock()
#
## Below is an example to define the print function
# V2reportsPairedAssembly$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsPairedAssembly$lock()

