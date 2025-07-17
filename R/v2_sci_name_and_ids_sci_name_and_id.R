#' Create a new V2SciNameAndIdsSciNameAndId
#'
#' @description
#' V2SciNameAndIdsSciNameAndId Class
#'
#' @docType class
#' @title V2SciNameAndIdsSciNameAndId
#' @description V2SciNameAndIdsSciNameAndId Class
#' @format An \code{R6Class} generator object
#' @field sci_name  character [optional]
#' @field tax_id  character [optional]
#' @field common_name  character [optional]
#' @field matched_term  character [optional]
#' @field rank  \link{V2reportsRankType} [optional]
#' @field group_name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2SciNameAndIdsSciNameAndId <- R6::R6Class(
  "V2SciNameAndIdsSciNameAndId",
  public = list(
    `sci_name` = NULL,
    `tax_id` = NULL,
    `common_name` = NULL,
    `matched_term` = NULL,
    `rank` = NULL,
    `group_name` = NULL,

    #' @description
    #' Initialize a new V2SciNameAndIdsSciNameAndId class.
    #'
    #' @param sci_name sci_name
    #' @param tax_id tax_id
    #' @param common_name common_name
    #' @param matched_term matched_term
    #' @param rank rank
    #' @param group_name group_name
    #' @param ... Other optional arguments.
    initialize = function(`sci_name` = NULL, `tax_id` = NULL, `common_name` = NULL, `matched_term` = NULL, `rank` = NULL, `group_name` = NULL, ...) {
      if (!is.null(`sci_name`)) {
        if (!(is.character(`sci_name`) && length(`sci_name`) == 1)) {
          stop(paste("Error! Invalid data for `sci_name`. Must be a string:", `sci_name`))
        }
        self$`sci_name` <- `sci_name`
      }
      if (!is.null(`tax_id`)) {
        if (!(is.character(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be a string:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
      }
      if (!is.null(`matched_term`)) {
        if (!(is.character(`matched_term`) && length(`matched_term`) == 1)) {
          stop(paste("Error! Invalid data for `matched_term`. Must be a string:", `matched_term`))
        }
        self$`matched_term` <- `matched_term`
      }
      if (!is.null(`rank`)) {
        if (!(`rank` %in% c())) {
          stop(paste("Error! \"", `rank`, "\" cannot be assigned to `rank`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`rank`))
        self$`rank` <- `rank`
      }
      if (!is.null(`group_name`)) {
        if (!(is.character(`group_name`) && length(`group_name`) == 1)) {
          stop(paste("Error! Invalid data for `group_name`. Must be a string:", `group_name`))
        }
        self$`group_name` <- `group_name`
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
    #' @return V2SciNameAndIdsSciNameAndId as a base R list.
    #' @examples
    #' # convert array of V2SciNameAndIdsSciNameAndId (x) to a data frame
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
    #' Convert V2SciNameAndIdsSciNameAndId to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2SciNameAndIdsSciNameAndIdObject <- list()
      if (!is.null(self$`sci_name`)) {
        V2SciNameAndIdsSciNameAndIdObject[["sci_name"]] <-
          self$`sci_name`
      }
      if (!is.null(self$`tax_id`)) {
        V2SciNameAndIdsSciNameAndIdObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`common_name`)) {
        V2SciNameAndIdsSciNameAndIdObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`matched_term`)) {
        V2SciNameAndIdsSciNameAndIdObject[["matched_term"]] <-
          self$`matched_term`
      }
      if (!is.null(self$`rank`)) {
        V2SciNameAndIdsSciNameAndIdObject[["rank"]] <-
          self$`rank`$toSimpleType()
      }
      if (!is.null(self$`group_name`)) {
        V2SciNameAndIdsSciNameAndIdObject[["group_name"]] <-
          self$`group_name`
      }
      return(V2SciNameAndIdsSciNameAndIdObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SciNameAndIdsSciNameAndId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SciNameAndIdsSciNameAndId
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sci_name`)) {
        self$`sci_name` <- this_object$`sci_name`
      }
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`matched_term`)) {
        self$`matched_term` <- this_object$`matched_term`
      }
      if (!is.null(this_object$`rank`)) {
        `rank_object` <- V2reportsRankType$new()
        `rank_object`$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
        self$`rank` <- `rank_object`
      }
      if (!is.null(this_object$`group_name`)) {
        self$`group_name` <- this_object$`group_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2SciNameAndIdsSciNameAndId in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2SciNameAndIdsSciNameAndId
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2SciNameAndIdsSciNameAndId
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`sci_name` <- this_object$`sci_name`
      self$`tax_id` <- this_object$`tax_id`
      self$`common_name` <- this_object$`common_name`
      self$`matched_term` <- this_object$`matched_term`
      self$`rank` <- V2reportsRankType$new()$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
      self$`group_name` <- this_object$`group_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2SciNameAndIdsSciNameAndId and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2SciNameAndIdsSciNameAndId
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
# V2SciNameAndIdsSciNameAndId$unlock()
#
## Below is an example to define the print function
# V2SciNameAndIdsSciNameAndId$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2SciNameAndIdsSciNameAndId$lock()

