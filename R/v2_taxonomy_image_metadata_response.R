#' Create a new V2TaxonomyImageMetadataResponse
#'
#' @description
#' V2TaxonomyImageMetadataResponse Class
#'
#' @docType class
#' @title V2TaxonomyImageMetadataResponse
#' @description V2TaxonomyImageMetadataResponse Class
#' @format An \code{R6Class} generator object
#' @field tax_id  character [optional]
#' @field src  character [optional]
#' @field license  character [optional]
#' @field attribution  character [optional]
#' @field source  character [optional]
#' @field image_sizes  list(\link{V2ImageSize}) [optional]
#' @field format  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyImageMetadataResponse <- R6::R6Class(
  "V2TaxonomyImageMetadataResponse",
  public = list(
    `tax_id` = NULL,
    `src` = NULL,
    `license` = NULL,
    `attribution` = NULL,
    `source` = NULL,
    `image_sizes` = NULL,
    `format` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyImageMetadataResponse class.
    #'
    #' @param tax_id tax_id
    #' @param src src
    #' @param license license
    #' @param attribution attribution
    #' @param source source
    #' @param image_sizes image_sizes
    #' @param format format
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `src` = NULL, `license` = NULL, `attribution` = NULL, `source` = NULL, `image_sizes` = NULL, `format` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.character(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be a string:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`src`)) {
        if (!(is.character(`src`) && length(`src`) == 1)) {
          stop(paste("Error! Invalid data for `src`. Must be a string:", `src`))
        }
        self$`src` <- `src`
      }
      if (!is.null(`license`)) {
        if (!(is.character(`license`) && length(`license`) == 1)) {
          stop(paste("Error! Invalid data for `license`. Must be a string:", `license`))
        }
        self$`license` <- `license`
      }
      if (!is.null(`attribution`)) {
        if (!(is.character(`attribution`) && length(`attribution`) == 1)) {
          stop(paste("Error! Invalid data for `attribution`. Must be a string:", `attribution`))
        }
        self$`attribution` <- `attribution`
      }
      if (!is.null(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!is.null(`image_sizes`)) {
        stopifnot(is.vector(`image_sizes`), length(`image_sizes`) != 0)
        sapply(`image_sizes`, function(x) stopifnot(R6::is.R6(x)))
        self$`image_sizes` <- `image_sizes`
      }
      if (!is.null(`format`)) {
        if (!(is.character(`format`) && length(`format`) == 1)) {
          stop(paste("Error! Invalid data for `format`. Must be a string:", `format`))
        }
        self$`format` <- `format`
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
    #' @return V2TaxonomyImageMetadataResponse as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyImageMetadataResponse (x) to a data frame
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
    #' Convert V2TaxonomyImageMetadataResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyImageMetadataResponseObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2TaxonomyImageMetadataResponseObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`src`)) {
        V2TaxonomyImageMetadataResponseObject[["src"]] <-
          self$`src`
      }
      if (!is.null(self$`license`)) {
        V2TaxonomyImageMetadataResponseObject[["license"]] <-
          self$`license`
      }
      if (!is.null(self$`attribution`)) {
        V2TaxonomyImageMetadataResponseObject[["attribution"]] <-
          self$`attribution`
      }
      if (!is.null(self$`source`)) {
        V2TaxonomyImageMetadataResponseObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`image_sizes`)) {
        V2TaxonomyImageMetadataResponseObject[["image_sizes"]] <-
          lapply(self$`image_sizes`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`format`)) {
        V2TaxonomyImageMetadataResponseObject[["format"]] <-
          self$`format`
      }
      return(V2TaxonomyImageMetadataResponseObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyImageMetadataResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyImageMetadataResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`src`)) {
        self$`src` <- this_object$`src`
      }
      if (!is.null(this_object$`license`)) {
        self$`license` <- this_object$`license`
      }
      if (!is.null(this_object$`attribution`)) {
        self$`attribution` <- this_object$`attribution`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`image_sizes`)) {
        self$`image_sizes` <- ApiClient$new()$deserializeObj(this_object$`image_sizes`, "array[V2ImageSize]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`format`)) {
        self$`format` <- this_object$`format`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyImageMetadataResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyImageMetadataResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyImageMetadataResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`src` <- this_object$`src`
      self$`license` <- this_object$`license`
      self$`attribution` <- this_object$`attribution`
      self$`source` <- this_object$`source`
      self$`image_sizes` <- ApiClient$new()$deserializeObj(this_object$`image_sizes`, "array[V2ImageSize]", loadNamespace("ncbiopenapi"))
      self$`format` <- this_object$`format`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyImageMetadataResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyImageMetadataResponse
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
# V2TaxonomyImageMetadataResponse$unlock()
#
## Below is an example to define the print function
# V2TaxonomyImageMetadataResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyImageMetadataResponse$lock()

