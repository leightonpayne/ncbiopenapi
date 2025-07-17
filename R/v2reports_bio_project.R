#' Create a new V2reportsBioProject
#'
#' @description
#' V2reportsBioProject Class
#'
#' @docType class
#' @title V2reportsBioProject
#' @description V2reportsBioProject Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field title  character [optional]
#' @field parent_accession  character [optional]
#' @field parent_accessions  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioProject <- R6::R6Class(
  "V2reportsBioProject",
  public = list(
    `accession` = NULL,
    `title` = NULL,
    `parent_accession` = NULL,
    `parent_accessions` = NULL,

    #' @description
    #' Initialize a new V2reportsBioProject class.
    #'
    #' @param accession accession
    #' @param title title
    #' @param parent_accession parent_accession
    #' @param parent_accessions parent_accessions
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `title` = NULL, `parent_accession` = NULL, `parent_accessions` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!is.null(`parent_accession`)) {
        if (!(is.character(`parent_accession`) && length(`parent_accession`) == 1)) {
          stop(paste("Error! Invalid data for `parent_accession`. Must be a string:", `parent_accession`))
        }
        self$`parent_accession` <- `parent_accession`
      }
      if (!is.null(`parent_accessions`)) {
        stopifnot(is.vector(`parent_accessions`), length(`parent_accessions`) != 0)
        sapply(`parent_accessions`, function(x) stopifnot(is.character(x)))
        self$`parent_accessions` <- `parent_accessions`
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
    #' @return V2reportsBioProject as a base R list.
    #' @examples
    #' # convert array of V2reportsBioProject (x) to a data frame
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
    #' Convert V2reportsBioProject to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioProjectObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsBioProjectObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`title`)) {
        V2reportsBioProjectObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`parent_accession`)) {
        V2reportsBioProjectObject[["parent_accession"]] <-
          self$`parent_accession`
      }
      if (!is.null(self$`parent_accessions`)) {
        V2reportsBioProjectObject[["parent_accessions"]] <-
          self$`parent_accessions`
      }
      return(V2reportsBioProjectObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioProject
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioProject
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`parent_accession`)) {
        self$`parent_accession` <- this_object$`parent_accession`
      }
      if (!is.null(this_object$`parent_accessions`)) {
        self$`parent_accessions` <- ApiClient$new()$deserializeObj(this_object$`parent_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioProject in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioProject
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioProject
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`title` <- this_object$`title`
      self$`parent_accession` <- this_object$`parent_accession`
      self$`parent_accessions` <- ApiClient$new()$deserializeObj(this_object$`parent_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioProject and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioProject
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
# V2reportsBioProject$unlock()
#
## Below is an example to define the print function
# V2reportsBioProject$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioProject$lock()

