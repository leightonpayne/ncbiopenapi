#' Create a new V2archiveSubmitter
#'
#' @description
#' V2archiveSubmitter Class
#'
#' @docType class
#' @title V2archiveSubmitter
#' @description V2archiveSubmitter Class
#' @format An \code{R6Class} generator object
#' @field name  list(\link{V2archiveName}) [optional]
#' @field role  character [optional]
#' @field affiliation  \link{V2archiveAffiliation} [optional]
#' @field date  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveSubmitter <- R6::R6Class(
  "V2archiveSubmitter",
  public = list(
    `name` = NULL,
    `role` = NULL,
    `affiliation` = NULL,
    `date` = NULL,

    #' @description
    #' Initialize a new V2archiveSubmitter class.
    #'
    #' @param name name
    #' @param role role
    #' @param affiliation affiliation
    #' @param date date
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `role` = NULL, `affiliation` = NULL, `date` = NULL, ...) {
      if (!is.null(`name`)) {
        stopifnot(is.vector(`name`), length(`name`) != 0)
        sapply(`name`, function(x) stopifnot(R6::is.R6(x)))
        self$`name` <- `name`
      }
      if (!is.null(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`affiliation`)) {
        stopifnot(R6::is.R6(`affiliation`))
        self$`affiliation` <- `affiliation`
      }
      if (!is.null(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
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
    #' @return V2archiveSubmitter as a base R list.
    #' @examples
    #' # convert array of V2archiveSubmitter (x) to a data frame
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
    #' Convert V2archiveSubmitter to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveSubmitterObject <- list()
      if (!is.null(self$`name`)) {
        V2archiveSubmitterObject[["name"]] <-
          lapply(self$`name`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`role`)) {
        V2archiveSubmitterObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`affiliation`)) {
        V2archiveSubmitterObject[["affiliation"]] <-
          self$`affiliation`$toSimpleType()
      }
      if (!is.null(self$`date`)) {
        V2archiveSubmitterObject[["date"]] <-
          self$`date`
      }
      return(V2archiveSubmitterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveSubmitter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveSubmitter
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- ApiClient$new()$deserializeObj(this_object$`name`, "array[V2archiveName]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`affiliation`)) {
        `affiliation_object` <- V2archiveAffiliation$new()
        `affiliation_object`$fromJSON(jsonlite::toJSON(this_object$`affiliation`, auto_unbox = TRUE, digits = NA))
        self$`affiliation` <- `affiliation_object`
      }
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveSubmitter in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveSubmitter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveSubmitter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- ApiClient$new()$deserializeObj(this_object$`name`, "array[V2archiveName]", loadNamespace("ncbiopenapi"))
      self$`role` <- this_object$`role`
      self$`affiliation` <- V2archiveAffiliation$new()$fromJSON(jsonlite::toJSON(this_object$`affiliation`, auto_unbox = TRUE, digits = NA))
      self$`date` <- this_object$`date`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveSubmitter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveSubmitter
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
# V2archiveSubmitter$unlock()
#
## Below is an example to define the print function
# V2archiveSubmitter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveSubmitter$lock()

