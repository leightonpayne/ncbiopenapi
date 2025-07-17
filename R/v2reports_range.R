#' Create a new V2reportsRange
#'
#' @description
#' V2reportsRange Class
#'
#' @docType class
#' @title V2reportsRange
#' @description V2reportsRange Class
#' @format An \code{R6Class} generator object
#' @field begin  character [optional]
#' @field end  character [optional]
#' @field orientation  \link{V2reportsOrientation} [optional]
#' @field order  integer [optional]
#' @field ribosomal_slippage  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsRange <- R6::R6Class(
  "V2reportsRange",
  public = list(
    `begin` = NULL,
    `end` = NULL,
    `orientation` = NULL,
    `order` = NULL,
    `ribosomal_slippage` = NULL,

    #' @description
    #' Initialize a new V2reportsRange class.
    #'
    #' @param begin begin
    #' @param end end
    #' @param orientation orientation
    #' @param order order
    #' @param ribosomal_slippage ribosomal_slippage
    #' @param ... Other optional arguments.
    initialize = function(`begin` = NULL, `end` = NULL, `orientation` = NULL, `order` = NULL, `ribosomal_slippage` = NULL, ...) {
      if (!is.null(`begin`)) {
        if (!(is.character(`begin`) && length(`begin`) == 1)) {
          stop(paste("Error! Invalid data for `begin`. Must be a string:", `begin`))
        }
        self$`begin` <- `begin`
      }
      if (!is.null(`end`)) {
        if (!(is.character(`end`) && length(`end`) == 1)) {
          stop(paste("Error! Invalid data for `end`. Must be a string:", `end`))
        }
        self$`end` <- `end`
      }
      if (!is.null(`orientation`)) {
        if (!(`orientation` %in% c())) {
          stop(paste("Error! \"", `orientation`, "\" cannot be assigned to `orientation`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`orientation`))
        self$`orientation` <- `orientation`
      }
      if (!is.null(`order`)) {
        if (!(is.numeric(`order`) && length(`order`) == 1)) {
          stop(paste("Error! Invalid data for `order`. Must be an integer:", `order`))
        }
        self$`order` <- `order`
      }
      if (!is.null(`ribosomal_slippage`)) {
        if (!(is.numeric(`ribosomal_slippage`) && length(`ribosomal_slippage`) == 1)) {
          stop(paste("Error! Invalid data for `ribosomal_slippage`. Must be an integer:", `ribosomal_slippage`))
        }
        self$`ribosomal_slippage` <- `ribosomal_slippage`
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
    #' @return V2reportsRange as a base R list.
    #' @examples
    #' # convert array of V2reportsRange (x) to a data frame
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
    #' Convert V2reportsRange to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsRangeObject <- list()
      if (!is.null(self$`begin`)) {
        V2reportsRangeObject[["begin"]] <-
          self$`begin`
      }
      if (!is.null(self$`end`)) {
        V2reportsRangeObject[["end"]] <-
          self$`end`
      }
      if (!is.null(self$`orientation`)) {
        V2reportsRangeObject[["orientation"]] <-
          self$`orientation`$toSimpleType()
      }
      if (!is.null(self$`order`)) {
        V2reportsRangeObject[["order"]] <-
          self$`order`
      }
      if (!is.null(self$`ribosomal_slippage`)) {
        V2reportsRangeObject[["ribosomal_slippage"]] <-
          self$`ribosomal_slippage`
      }
      return(V2reportsRangeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsRange
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`begin`)) {
        self$`begin` <- this_object$`begin`
      }
      if (!is.null(this_object$`end`)) {
        self$`end` <- this_object$`end`
      }
      if (!is.null(this_object$`orientation`)) {
        `orientation_object` <- V2reportsOrientation$new()
        `orientation_object`$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
        self$`orientation` <- `orientation_object`
      }
      if (!is.null(this_object$`order`)) {
        self$`order` <- this_object$`order`
      }
      if (!is.null(this_object$`ribosomal_slippage`)) {
        self$`ribosomal_slippage` <- this_object$`ribosomal_slippage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsRange in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsRange
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsRange
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`begin` <- this_object$`begin`
      self$`end` <- this_object$`end`
      self$`orientation` <- V2reportsOrientation$new()$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
      self$`order` <- this_object$`order`
      self$`ribosomal_slippage` <- this_object$`ribosomal_slippage`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsRange and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsRange
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
# V2reportsRange$unlock()
#
## Below is an example to define the print function
# V2reportsRange$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsRange$lock()

