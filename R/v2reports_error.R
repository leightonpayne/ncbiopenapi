#' Create a new V2reportsError
#'
#' @description
#' V2reportsError Class
#'
#' @docType class
#' @title V2reportsError
#' @description V2reportsError Class
#' @format An \code{R6Class} generator object
#' @field assembly_error_code  \link{V2reportsErrorAssemblyErrorCode} [optional]
#' @field gene_error_code  \link{V2reportsErrorGeneErrorCode} [optional]
#' @field organelle_error_code  \link{V2reportsErrorOrganelleErrorCode} [optional]
#' @field virus_error_code  \link{V2reportsErrorVirusErrorCode} [optional]
#' @field taxonomy_error_code  \link{V2reportsErrorTaxonomyErrorCode} [optional]
#' @field reason  character [optional]
#' @field message  character [optional]
#' @field invalid_identifiers  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsError <- R6::R6Class(
  "V2reportsError",
  public = list(
    `assembly_error_code` = NULL,
    `gene_error_code` = NULL,
    `organelle_error_code` = NULL,
    `virus_error_code` = NULL,
    `taxonomy_error_code` = NULL,
    `reason` = NULL,
    `message` = NULL,
    `invalid_identifiers` = NULL,

    #' @description
    #' Initialize a new V2reportsError class.
    #'
    #' @param assembly_error_code assembly_error_code
    #' @param gene_error_code gene_error_code
    #' @param organelle_error_code organelle_error_code
    #' @param virus_error_code virus_error_code
    #' @param taxonomy_error_code taxonomy_error_code
    #' @param reason reason
    #' @param message message
    #' @param invalid_identifiers invalid_identifiers
    #' @param ... Other optional arguments.
    initialize = function(`assembly_error_code` = NULL, `gene_error_code` = NULL, `organelle_error_code` = NULL, `virus_error_code` = NULL, `taxonomy_error_code` = NULL, `reason` = NULL, `message` = NULL, `invalid_identifiers` = NULL, ...) {
      if (!is.null(`assembly_error_code`)) {
        if (!(`assembly_error_code` %in% c())) {
          stop(paste("Error! \"", `assembly_error_code`, "\" cannot be assigned to `assembly_error_code`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_error_code`))
        self$`assembly_error_code` <- `assembly_error_code`
      }
      if (!is.null(`gene_error_code`)) {
        if (!(`gene_error_code` %in% c())) {
          stop(paste("Error! \"", `gene_error_code`, "\" cannot be assigned to `gene_error_code`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`gene_error_code`))
        self$`gene_error_code` <- `gene_error_code`
      }
      if (!is.null(`organelle_error_code`)) {
        if (!(`organelle_error_code` %in% c())) {
          stop(paste("Error! \"", `organelle_error_code`, "\" cannot be assigned to `organelle_error_code`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`organelle_error_code`))
        self$`organelle_error_code` <- `organelle_error_code`
      }
      if (!is.null(`virus_error_code`)) {
        if (!(`virus_error_code` %in% c())) {
          stop(paste("Error! \"", `virus_error_code`, "\" cannot be assigned to `virus_error_code`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`virus_error_code`))
        self$`virus_error_code` <- `virus_error_code`
      }
      if (!is.null(`taxonomy_error_code`)) {
        if (!(`taxonomy_error_code` %in% c())) {
          stop(paste("Error! \"", `taxonomy_error_code`, "\" cannot be assigned to `taxonomy_error_code`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`taxonomy_error_code`))
        self$`taxonomy_error_code` <- `taxonomy_error_code`
      }
      if (!is.null(`reason`)) {
        if (!(is.character(`reason`) && length(`reason`) == 1)) {
          stop(paste("Error! Invalid data for `reason`. Must be a string:", `reason`))
        }
        self$`reason` <- `reason`
      }
      if (!is.null(`message`)) {
        if (!(is.character(`message`) && length(`message`) == 1)) {
          stop(paste("Error! Invalid data for `message`. Must be a string:", `message`))
        }
        self$`message` <- `message`
      }
      if (!is.null(`invalid_identifiers`)) {
        stopifnot(is.vector(`invalid_identifiers`), length(`invalid_identifiers`) != 0)
        sapply(`invalid_identifiers`, function(x) stopifnot(is.character(x)))
        self$`invalid_identifiers` <- `invalid_identifiers`
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
    #' @return V2reportsError as a base R list.
    #' @examples
    #' # convert array of V2reportsError (x) to a data frame
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
    #' Convert V2reportsError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsErrorObject <- list()
      if (!is.null(self$`assembly_error_code`)) {
        V2reportsErrorObject[["assembly_error_code"]] <-
          self$`assembly_error_code`$toSimpleType()
      }
      if (!is.null(self$`gene_error_code`)) {
        V2reportsErrorObject[["gene_error_code"]] <-
          self$`gene_error_code`$toSimpleType()
      }
      if (!is.null(self$`organelle_error_code`)) {
        V2reportsErrorObject[["organelle_error_code"]] <-
          self$`organelle_error_code`$toSimpleType()
      }
      if (!is.null(self$`virus_error_code`)) {
        V2reportsErrorObject[["virus_error_code"]] <-
          self$`virus_error_code`$toSimpleType()
      }
      if (!is.null(self$`taxonomy_error_code`)) {
        V2reportsErrorObject[["taxonomy_error_code"]] <-
          self$`taxonomy_error_code`$toSimpleType()
      }
      if (!is.null(self$`reason`)) {
        V2reportsErrorObject[["reason"]] <-
          self$`reason`
      }
      if (!is.null(self$`message`)) {
        V2reportsErrorObject[["message"]] <-
          self$`message`
      }
      if (!is.null(self$`invalid_identifiers`)) {
        V2reportsErrorObject[["invalid_identifiers"]] <-
          self$`invalid_identifiers`
      }
      return(V2reportsErrorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsError
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_error_code`)) {
        `assembly_error_code_object` <- V2reportsErrorAssemblyErrorCode$new()
        `assembly_error_code_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_error_code`, auto_unbox = TRUE, digits = NA))
        self$`assembly_error_code` <- `assembly_error_code_object`
      }
      if (!is.null(this_object$`gene_error_code`)) {
        `gene_error_code_object` <- V2reportsErrorGeneErrorCode$new()
        `gene_error_code_object`$fromJSON(jsonlite::toJSON(this_object$`gene_error_code`, auto_unbox = TRUE, digits = NA))
        self$`gene_error_code` <- `gene_error_code_object`
      }
      if (!is.null(this_object$`organelle_error_code`)) {
        `organelle_error_code_object` <- V2reportsErrorOrganelleErrorCode$new()
        `organelle_error_code_object`$fromJSON(jsonlite::toJSON(this_object$`organelle_error_code`, auto_unbox = TRUE, digits = NA))
        self$`organelle_error_code` <- `organelle_error_code_object`
      }
      if (!is.null(this_object$`virus_error_code`)) {
        `virus_error_code_object` <- V2reportsErrorVirusErrorCode$new()
        `virus_error_code_object`$fromJSON(jsonlite::toJSON(this_object$`virus_error_code`, auto_unbox = TRUE, digits = NA))
        self$`virus_error_code` <- `virus_error_code_object`
      }
      if (!is.null(this_object$`taxonomy_error_code`)) {
        `taxonomy_error_code_object` <- V2reportsErrorTaxonomyErrorCode$new()
        `taxonomy_error_code_object`$fromJSON(jsonlite::toJSON(this_object$`taxonomy_error_code`, auto_unbox = TRUE, digits = NA))
        self$`taxonomy_error_code` <- `taxonomy_error_code_object`
      }
      if (!is.null(this_object$`reason`)) {
        self$`reason` <- this_object$`reason`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      if (!is.null(this_object$`invalid_identifiers`)) {
        self$`invalid_identifiers` <- ApiClient$new()$deserializeObj(this_object$`invalid_identifiers`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsError in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsError
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_error_code` <- V2reportsErrorAssemblyErrorCode$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_error_code`, auto_unbox = TRUE, digits = NA))
      self$`gene_error_code` <- V2reportsErrorGeneErrorCode$new()$fromJSON(jsonlite::toJSON(this_object$`gene_error_code`, auto_unbox = TRUE, digits = NA))
      self$`organelle_error_code` <- V2reportsErrorOrganelleErrorCode$new()$fromJSON(jsonlite::toJSON(this_object$`organelle_error_code`, auto_unbox = TRUE, digits = NA))
      self$`virus_error_code` <- V2reportsErrorVirusErrorCode$new()$fromJSON(jsonlite::toJSON(this_object$`virus_error_code`, auto_unbox = TRUE, digits = NA))
      self$`taxonomy_error_code` <- V2reportsErrorTaxonomyErrorCode$new()$fromJSON(jsonlite::toJSON(this_object$`taxonomy_error_code`, auto_unbox = TRUE, digits = NA))
      self$`reason` <- this_object$`reason`
      self$`message` <- this_object$`message`
      self$`invalid_identifiers` <- ApiClient$new()$deserializeObj(this_object$`invalid_identifiers`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsError
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
# V2reportsError$unlock()
#
## Below is an example to define the print function
# V2reportsError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsError$lock()

