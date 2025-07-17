#' Create a new V2reportsVirusAssemblyCollectionLocation
#'
#' @description
#' V2reportsVirusAssemblyCollectionLocation Class
#'
#' @docType class
#' @title V2reportsVirusAssemblyCollectionLocation
#' @description V2reportsVirusAssemblyCollectionLocation Class
#' @format An \code{R6Class} generator object
#' @field geographic_location  character [optional]
#' @field geographic_region  character [optional]
#' @field usa_state  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusAssemblyCollectionLocation <- R6::R6Class(
  "V2reportsVirusAssemblyCollectionLocation",
  public = list(
    `geographic_location` = NULL,
    `geographic_region` = NULL,
    `usa_state` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusAssemblyCollectionLocation class.
    #'
    #' @param geographic_location geographic_location
    #' @param geographic_region geographic_region
    #' @param usa_state usa_state
    #' @param ... Other optional arguments.
    initialize = function(`geographic_location` = NULL, `geographic_region` = NULL, `usa_state` = NULL, ...) {
      if (!is.null(`geographic_location`)) {
        if (!(is.character(`geographic_location`) && length(`geographic_location`) == 1)) {
          stop(paste("Error! Invalid data for `geographic_location`. Must be a string:", `geographic_location`))
        }
        self$`geographic_location` <- `geographic_location`
      }
      if (!is.null(`geographic_region`)) {
        if (!(is.character(`geographic_region`) && length(`geographic_region`) == 1)) {
          stop(paste("Error! Invalid data for `geographic_region`. Must be a string:", `geographic_region`))
        }
        self$`geographic_region` <- `geographic_region`
      }
      if (!is.null(`usa_state`)) {
        if (!(is.character(`usa_state`) && length(`usa_state`) == 1)) {
          stop(paste("Error! Invalid data for `usa_state`. Must be a string:", `usa_state`))
        }
        self$`usa_state` <- `usa_state`
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
    #' @return V2reportsVirusAssemblyCollectionLocation as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusAssemblyCollectionLocation (x) to a data frame
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
    #' Convert V2reportsVirusAssemblyCollectionLocation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusAssemblyCollectionLocationObject <- list()
      if (!is.null(self$`geographic_location`)) {
        V2reportsVirusAssemblyCollectionLocationObject[["geographic_location"]] <-
          self$`geographic_location`
      }
      if (!is.null(self$`geographic_region`)) {
        V2reportsVirusAssemblyCollectionLocationObject[["geographic_region"]] <-
          self$`geographic_region`
      }
      if (!is.null(self$`usa_state`)) {
        V2reportsVirusAssemblyCollectionLocationObject[["usa_state"]] <-
          self$`usa_state`
      }
      return(V2reportsVirusAssemblyCollectionLocationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAssemblyCollectionLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAssemblyCollectionLocation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`geographic_location`)) {
        self$`geographic_location` <- this_object$`geographic_location`
      }
      if (!is.null(this_object$`geographic_region`)) {
        self$`geographic_region` <- this_object$`geographic_region`
      }
      if (!is.null(this_object$`usa_state`)) {
        self$`usa_state` <- this_object$`usa_state`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusAssemblyCollectionLocation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAssemblyCollectionLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAssemblyCollectionLocation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`geographic_location` <- this_object$`geographic_location`
      self$`geographic_region` <- this_object$`geographic_region`
      self$`usa_state` <- this_object$`usa_state`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusAssemblyCollectionLocation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusAssemblyCollectionLocation
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
# V2reportsVirusAssemblyCollectionLocation$unlock()
#
## Below is an example to define the print function
# V2reportsVirusAssemblyCollectionLocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusAssemblyCollectionLocation$lock()

