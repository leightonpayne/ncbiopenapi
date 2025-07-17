#' Create a new V2reportsBuscoStat
#'
#' @description
#' V2reportsBuscoStat Class
#'
#' @docType class
#' @title V2reportsBuscoStat
#' @description V2reportsBuscoStat Class
#' @format An \code{R6Class} generator object
#' @field busco_lineage  character [optional]
#' @field busco_ver  character [optional]
#' @field complete  numeric [optional]
#' @field single_copy  numeric [optional]
#' @field duplicated  numeric [optional]
#' @field fragmented  numeric [optional]
#' @field missing  numeric [optional]
#' @field total_count  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBuscoStat <- R6::R6Class(
  "V2reportsBuscoStat",
  public = list(
    `busco_lineage` = NULL,
    `busco_ver` = NULL,
    `complete` = NULL,
    `single_copy` = NULL,
    `duplicated` = NULL,
    `fragmented` = NULL,
    `missing` = NULL,
    `total_count` = NULL,

    #' @description
    #' Initialize a new V2reportsBuscoStat class.
    #'
    #' @param busco_lineage busco_lineage
    #' @param busco_ver busco_ver
    #' @param complete complete
    #' @param single_copy single_copy
    #' @param duplicated duplicated
    #' @param fragmented fragmented
    #' @param missing missing
    #' @param total_count total_count
    #' @param ... Other optional arguments.
    initialize = function(`busco_lineage` = NULL, `busco_ver` = NULL, `complete` = NULL, `single_copy` = NULL, `duplicated` = NULL, `fragmented` = NULL, `missing` = NULL, `total_count` = NULL, ...) {
      if (!is.null(`busco_lineage`)) {
        if (!(is.character(`busco_lineage`) && length(`busco_lineage`) == 1)) {
          stop(paste("Error! Invalid data for `busco_lineage`. Must be a string:", `busco_lineage`))
        }
        self$`busco_lineage` <- `busco_lineage`
      }
      if (!is.null(`busco_ver`)) {
        if (!(is.character(`busco_ver`) && length(`busco_ver`) == 1)) {
          stop(paste("Error! Invalid data for `busco_ver`. Must be a string:", `busco_ver`))
        }
        self$`busco_ver` <- `busco_ver`
      }
      if (!is.null(`complete`)) {
        if (!(is.numeric(`complete`) && length(`complete`) == 1)) {
          stop(paste("Error! Invalid data for `complete`. Must be a number:", `complete`))
        }
        self$`complete` <- `complete`
      }
      if (!is.null(`single_copy`)) {
        if (!(is.numeric(`single_copy`) && length(`single_copy`) == 1)) {
          stop(paste("Error! Invalid data for `single_copy`. Must be a number:", `single_copy`))
        }
        self$`single_copy` <- `single_copy`
      }
      if (!is.null(`duplicated`)) {
        if (!(is.numeric(`duplicated`) && length(`duplicated`) == 1)) {
          stop(paste("Error! Invalid data for `duplicated`. Must be a number:", `duplicated`))
        }
        self$`duplicated` <- `duplicated`
      }
      if (!is.null(`fragmented`)) {
        if (!(is.numeric(`fragmented`) && length(`fragmented`) == 1)) {
          stop(paste("Error! Invalid data for `fragmented`. Must be a number:", `fragmented`))
        }
        self$`fragmented` <- `fragmented`
      }
      if (!is.null(`missing`)) {
        if (!(is.numeric(`missing`) && length(`missing`) == 1)) {
          stop(paste("Error! Invalid data for `missing`. Must be a number:", `missing`))
        }
        self$`missing` <- `missing`
      }
      if (!is.null(`total_count`)) {
        if (!(is.character(`total_count`) && length(`total_count`) == 1)) {
          stop(paste("Error! Invalid data for `total_count`. Must be a string:", `total_count`))
        }
        self$`total_count` <- `total_count`
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
    #' @return V2reportsBuscoStat as a base R list.
    #' @examples
    #' # convert array of V2reportsBuscoStat (x) to a data frame
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
    #' Convert V2reportsBuscoStat to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBuscoStatObject <- list()
      if (!is.null(self$`busco_lineage`)) {
        V2reportsBuscoStatObject[["busco_lineage"]] <-
          self$`busco_lineage`
      }
      if (!is.null(self$`busco_ver`)) {
        V2reportsBuscoStatObject[["busco_ver"]] <-
          self$`busco_ver`
      }
      if (!is.null(self$`complete`)) {
        V2reportsBuscoStatObject[["complete"]] <-
          self$`complete`
      }
      if (!is.null(self$`single_copy`)) {
        V2reportsBuscoStatObject[["single_copy"]] <-
          self$`single_copy`
      }
      if (!is.null(self$`duplicated`)) {
        V2reportsBuscoStatObject[["duplicated"]] <-
          self$`duplicated`
      }
      if (!is.null(self$`fragmented`)) {
        V2reportsBuscoStatObject[["fragmented"]] <-
          self$`fragmented`
      }
      if (!is.null(self$`missing`)) {
        V2reportsBuscoStatObject[["missing"]] <-
          self$`missing`
      }
      if (!is.null(self$`total_count`)) {
        V2reportsBuscoStatObject[["total_count"]] <-
          self$`total_count`
      }
      return(V2reportsBuscoStatObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBuscoStat
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBuscoStat
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`busco_lineage`)) {
        self$`busco_lineage` <- this_object$`busco_lineage`
      }
      if (!is.null(this_object$`busco_ver`)) {
        self$`busco_ver` <- this_object$`busco_ver`
      }
      if (!is.null(this_object$`complete`)) {
        self$`complete` <- this_object$`complete`
      }
      if (!is.null(this_object$`single_copy`)) {
        self$`single_copy` <- this_object$`single_copy`
      }
      if (!is.null(this_object$`duplicated`)) {
        self$`duplicated` <- this_object$`duplicated`
      }
      if (!is.null(this_object$`fragmented`)) {
        self$`fragmented` <- this_object$`fragmented`
      }
      if (!is.null(this_object$`missing`)) {
        self$`missing` <- this_object$`missing`
      }
      if (!is.null(this_object$`total_count`)) {
        self$`total_count` <- this_object$`total_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBuscoStat in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBuscoStat
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBuscoStat
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`busco_lineage` <- this_object$`busco_lineage`
      self$`busco_ver` <- this_object$`busco_ver`
      self$`complete` <- this_object$`complete`
      self$`single_copy` <- this_object$`single_copy`
      self$`duplicated` <- this_object$`duplicated`
      self$`fragmented` <- this_object$`fragmented`
      self$`missing` <- this_object$`missing`
      self$`total_count` <- this_object$`total_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBuscoStat and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBuscoStat
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
# V2reportsBuscoStat$unlock()
#
## Below is an example to define the print function
# V2reportsBuscoStat$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBuscoStat$lock()

