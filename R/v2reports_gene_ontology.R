#' Create a new V2reportsGeneOntology
#'
#' @description
#' V2reportsGeneOntology Class
#'
#' @docType class
#' @title V2reportsGeneOntology
#' @description V2reportsGeneOntology Class
#' @format An \code{R6Class} generator object
#' @field assigned_by  character [optional]
#' @field molecular_functions  list(\link{V2reportsProcessMetadata}) [optional]
#' @field biological_processes  list(\link{V2reportsProcessMetadata}) [optional]
#' @field cellular_components  list(\link{V2reportsProcessMetadata}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGeneOntology <- R6::R6Class(
  "V2reportsGeneOntology",
  public = list(
    `assigned_by` = NULL,
    `molecular_functions` = NULL,
    `biological_processes` = NULL,
    `cellular_components` = NULL,

    #' @description
    #' Initialize a new V2reportsGeneOntology class.
    #'
    #' @param assigned_by assigned_by
    #' @param molecular_functions molecular_functions
    #' @param biological_processes biological_processes
    #' @param cellular_components cellular_components
    #' @param ... Other optional arguments.
    initialize = function(`assigned_by` = NULL, `molecular_functions` = NULL, `biological_processes` = NULL, `cellular_components` = NULL, ...) {
      if (!is.null(`assigned_by`)) {
        if (!(is.character(`assigned_by`) && length(`assigned_by`) == 1)) {
          stop(paste("Error! Invalid data for `assigned_by`. Must be a string:", `assigned_by`))
        }
        self$`assigned_by` <- `assigned_by`
      }
      if (!is.null(`molecular_functions`)) {
        stopifnot(is.vector(`molecular_functions`), length(`molecular_functions`) != 0)
        sapply(`molecular_functions`, function(x) stopifnot(R6::is.R6(x)))
        self$`molecular_functions` <- `molecular_functions`
      }
      if (!is.null(`biological_processes`)) {
        stopifnot(is.vector(`biological_processes`), length(`biological_processes`) != 0)
        sapply(`biological_processes`, function(x) stopifnot(R6::is.R6(x)))
        self$`biological_processes` <- `biological_processes`
      }
      if (!is.null(`cellular_components`)) {
        stopifnot(is.vector(`cellular_components`), length(`cellular_components`) != 0)
        sapply(`cellular_components`, function(x) stopifnot(R6::is.R6(x)))
        self$`cellular_components` <- `cellular_components`
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
    #' @return V2reportsGeneOntology as a base R list.
    #' @examples
    #' # convert array of V2reportsGeneOntology (x) to a data frame
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
    #' Convert V2reportsGeneOntology to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGeneOntologyObject <- list()
      if (!is.null(self$`assigned_by`)) {
        V2reportsGeneOntologyObject[["assigned_by"]] <-
          self$`assigned_by`
      }
      if (!is.null(self$`molecular_functions`)) {
        V2reportsGeneOntologyObject[["molecular_functions"]] <-
          lapply(self$`molecular_functions`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`biological_processes`)) {
        V2reportsGeneOntologyObject[["biological_processes"]] <-
          lapply(self$`biological_processes`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`cellular_components`)) {
        V2reportsGeneOntologyObject[["cellular_components"]] <-
          lapply(self$`cellular_components`, function(x) x$toSimpleType())
      }
      return(V2reportsGeneOntologyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneOntology
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneOntology
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assigned_by`)) {
        self$`assigned_by` <- this_object$`assigned_by`
      }
      if (!is.null(this_object$`molecular_functions`)) {
        self$`molecular_functions` <- ApiClient$new()$deserializeObj(this_object$`molecular_functions`, "array[V2reportsProcessMetadata]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`biological_processes`)) {
        self$`biological_processes` <- ApiClient$new()$deserializeObj(this_object$`biological_processes`, "array[V2reportsProcessMetadata]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`cellular_components`)) {
        self$`cellular_components` <- ApiClient$new()$deserializeObj(this_object$`cellular_components`, "array[V2reportsProcessMetadata]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGeneOntology in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneOntology
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneOntology
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assigned_by` <- this_object$`assigned_by`
      self$`molecular_functions` <- ApiClient$new()$deserializeObj(this_object$`molecular_functions`, "array[V2reportsProcessMetadata]", loadNamespace("ncbiopenapi"))
      self$`biological_processes` <- ApiClient$new()$deserializeObj(this_object$`biological_processes`, "array[V2reportsProcessMetadata]", loadNamespace("ncbiopenapi"))
      self$`cellular_components` <- ApiClient$new()$deserializeObj(this_object$`cellular_components`, "array[V2reportsProcessMetadata]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGeneOntology and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGeneOntology
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
# V2reportsGeneOntology$unlock()
#
## Below is an example to define the print function
# V2reportsGeneOntology$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGeneOntology$lock()

