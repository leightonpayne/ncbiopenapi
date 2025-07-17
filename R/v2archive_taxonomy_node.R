#' Create a new V2archiveTaxonomyNode
#'
#' @description
#' V2archiveTaxonomyNode Class
#'
#' @docType class
#' @title V2archiveTaxonomyNode
#' @description V2archiveTaxonomyNode Class
#' @format An \code{R6Class} generator object
#' @field tax_id  integer [optional]
#' @field current_scientific_name  \link{V2reportsNameAndAuthority} [optional]
#' @field basionym  \link{V2reportsNameAndAuthority} [optional]
#' @field curator_common_name  character [optional]
#' @field group_name  character [optional]
#' @field classification  \link{V2reportsClassification} [optional]
#' @field modifiers  list(\link{V2archiveModifier}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveTaxonomyNode <- R6::R6Class(
  "V2archiveTaxonomyNode",
  public = list(
    `tax_id` = NULL,
    `current_scientific_name` = NULL,
    `basionym` = NULL,
    `curator_common_name` = NULL,
    `group_name` = NULL,
    `classification` = NULL,
    `modifiers` = NULL,

    #' @description
    #' Initialize a new V2archiveTaxonomyNode class.
    #'
    #' @param tax_id tax_id
    #' @param current_scientific_name current_scientific_name
    #' @param basionym basionym
    #' @param curator_common_name curator_common_name
    #' @param group_name group_name
    #' @param classification classification
    #' @param modifiers modifiers
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `current_scientific_name` = NULL, `basionym` = NULL, `curator_common_name` = NULL, `group_name` = NULL, `classification` = NULL, `modifiers` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.numeric(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be an integer:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`current_scientific_name`)) {
        stopifnot(R6::is.R6(`current_scientific_name`))
        self$`current_scientific_name` <- `current_scientific_name`
      }
      if (!is.null(`basionym`)) {
        stopifnot(R6::is.R6(`basionym`))
        self$`basionym` <- `basionym`
      }
      if (!is.null(`curator_common_name`)) {
        if (!(is.character(`curator_common_name`) && length(`curator_common_name`) == 1)) {
          stop(paste("Error! Invalid data for `curator_common_name`. Must be a string:", `curator_common_name`))
        }
        self$`curator_common_name` <- `curator_common_name`
      }
      if (!is.null(`group_name`)) {
        if (!(is.character(`group_name`) && length(`group_name`) == 1)) {
          stop(paste("Error! Invalid data for `group_name`. Must be a string:", `group_name`))
        }
        self$`group_name` <- `group_name`
      }
      if (!is.null(`classification`)) {
        stopifnot(R6::is.R6(`classification`))
        self$`classification` <- `classification`
      }
      if (!is.null(`modifiers`)) {
        stopifnot(is.vector(`modifiers`), length(`modifiers`) != 0)
        sapply(`modifiers`, function(x) stopifnot(R6::is.R6(x)))
        self$`modifiers` <- `modifiers`
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
    #' @return V2archiveTaxonomyNode as a base R list.
    #' @examples
    #' # convert array of V2archiveTaxonomyNode (x) to a data frame
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
    #' Convert V2archiveTaxonomyNode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveTaxonomyNodeObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2archiveTaxonomyNodeObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`current_scientific_name`)) {
        V2archiveTaxonomyNodeObject[["current_scientific_name"]] <-
          self$`current_scientific_name`$toSimpleType()
      }
      if (!is.null(self$`basionym`)) {
        V2archiveTaxonomyNodeObject[["basionym"]] <-
          self$`basionym`$toSimpleType()
      }
      if (!is.null(self$`curator_common_name`)) {
        V2archiveTaxonomyNodeObject[["curator_common_name"]] <-
          self$`curator_common_name`
      }
      if (!is.null(self$`group_name`)) {
        V2archiveTaxonomyNodeObject[["group_name"]] <-
          self$`group_name`
      }
      if (!is.null(self$`classification`)) {
        V2archiveTaxonomyNodeObject[["classification"]] <-
          self$`classification`$toSimpleType()
      }
      if (!is.null(self$`modifiers`)) {
        V2archiveTaxonomyNodeObject[["modifiers"]] <-
          lapply(self$`modifiers`, function(x) x$toSimpleType())
      }
      return(V2archiveTaxonomyNodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveTaxonomyNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveTaxonomyNode
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`current_scientific_name`)) {
        `current_scientific_name_object` <- V2reportsNameAndAuthority$new()
        `current_scientific_name_object`$fromJSON(jsonlite::toJSON(this_object$`current_scientific_name`, auto_unbox = TRUE, digits = NA))
        self$`current_scientific_name` <- `current_scientific_name_object`
      }
      if (!is.null(this_object$`basionym`)) {
        `basionym_object` <- V2reportsNameAndAuthority$new()
        `basionym_object`$fromJSON(jsonlite::toJSON(this_object$`basionym`, auto_unbox = TRUE, digits = NA))
        self$`basionym` <- `basionym_object`
      }
      if (!is.null(this_object$`curator_common_name`)) {
        self$`curator_common_name` <- this_object$`curator_common_name`
      }
      if (!is.null(this_object$`group_name`)) {
        self$`group_name` <- this_object$`group_name`
      }
      if (!is.null(this_object$`classification`)) {
        `classification_object` <- V2reportsClassification$new()
        `classification_object`$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
        self$`classification` <- `classification_object`
      }
      if (!is.null(this_object$`modifiers`)) {
        self$`modifiers` <- ApiClient$new()$deserializeObj(this_object$`modifiers`, "array[V2archiveModifier]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveTaxonomyNode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveTaxonomyNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveTaxonomyNode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`current_scientific_name` <- V2reportsNameAndAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`current_scientific_name`, auto_unbox = TRUE, digits = NA))
      self$`basionym` <- V2reportsNameAndAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`basionym`, auto_unbox = TRUE, digits = NA))
      self$`curator_common_name` <- this_object$`curator_common_name`
      self$`group_name` <- this_object$`group_name`
      self$`classification` <- V2reportsClassification$new()$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
      self$`modifiers` <- ApiClient$new()$deserializeObj(this_object$`modifiers`, "array[V2archiveModifier]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveTaxonomyNode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveTaxonomyNode
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
# V2archiveTaxonomyNode$unlock()
#
## Below is an example to define the print function
# V2archiveTaxonomyNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveTaxonomyNode$lock()

