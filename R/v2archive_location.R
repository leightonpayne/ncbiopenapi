#' Create a new V2archiveLocation
#'
#' @description
#' V2archiveLocation Class
#'
#' @docType class
#' @title V2archiveLocation
#' @description V2archiveLocation Class
#' @format An \code{R6Class} generator object
#' @field city  character [optional]
#' @field sub  character [optional]
#' @field country  character [optional]
#' @field street  character [optional]
#' @field postal_code  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveLocation <- R6::R6Class(
  "V2archiveLocation",
  public = list(
    `city` = NULL,
    `sub` = NULL,
    `country` = NULL,
    `street` = NULL,
    `postal_code` = NULL,

    #' @description
    #' Initialize a new V2archiveLocation class.
    #'
    #' @param city city
    #' @param sub sub
    #' @param country country
    #' @param street street
    #' @param postal_code postal_code
    #' @param ... Other optional arguments.
    initialize = function(`city` = NULL, `sub` = NULL, `country` = NULL, `street` = NULL, `postal_code` = NULL, ...) {
      if (!is.null(`city`)) {
        if (!(is.character(`city`) && length(`city`) == 1)) {
          stop(paste("Error! Invalid data for `city`. Must be a string:", `city`))
        }
        self$`city` <- `city`
      }
      if (!is.null(`sub`)) {
        if (!(is.character(`sub`) && length(`sub`) == 1)) {
          stop(paste("Error! Invalid data for `sub`. Must be a string:", `sub`))
        }
        self$`sub` <- `sub`
      }
      if (!is.null(`country`)) {
        if (!(is.character(`country`) && length(`country`) == 1)) {
          stop(paste("Error! Invalid data for `country`. Must be a string:", `country`))
        }
        self$`country` <- `country`
      }
      if (!is.null(`street`)) {
        if (!(is.character(`street`) && length(`street`) == 1)) {
          stop(paste("Error! Invalid data for `street`. Must be a string:", `street`))
        }
        self$`street` <- `street`
      }
      if (!is.null(`postal_code`)) {
        if (!(is.character(`postal_code`) && length(`postal_code`) == 1)) {
          stop(paste("Error! Invalid data for `postal_code`. Must be a string:", `postal_code`))
        }
        self$`postal_code` <- `postal_code`
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
    #' @return V2archiveLocation as a base R list.
    #' @examples
    #' # convert array of V2archiveLocation (x) to a data frame
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
    #' Convert V2archiveLocation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveLocationObject <- list()
      if (!is.null(self$`city`)) {
        V2archiveLocationObject[["city"]] <-
          self$`city`
      }
      if (!is.null(self$`sub`)) {
        V2archiveLocationObject[["sub"]] <-
          self$`sub`
      }
      if (!is.null(self$`country`)) {
        V2archiveLocationObject[["country"]] <-
          self$`country`
      }
      if (!is.null(self$`street`)) {
        V2archiveLocationObject[["street"]] <-
          self$`street`
      }
      if (!is.null(self$`postal_code`)) {
        V2archiveLocationObject[["postal_code"]] <-
          self$`postal_code`
      }
      return(V2archiveLocationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveLocation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`city`)) {
        self$`city` <- this_object$`city`
      }
      if (!is.null(this_object$`sub`)) {
        self$`sub` <- this_object$`sub`
      }
      if (!is.null(this_object$`country`)) {
        self$`country` <- this_object$`country`
      }
      if (!is.null(this_object$`street`)) {
        self$`street` <- this_object$`street`
      }
      if (!is.null(this_object$`postal_code`)) {
        self$`postal_code` <- this_object$`postal_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveLocation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveLocation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`city` <- this_object$`city`
      self$`sub` <- this_object$`sub`
      self$`country` <- this_object$`country`
      self$`street` <- this_object$`street`
      self$`postal_code` <- this_object$`postal_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveLocation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveLocation
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
# V2archiveLocation$unlock()
#
## Below is an example to define the print function
# V2archiveLocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveLocation$lock()

