#' Create a new V2TaxonomyImageRequest
#'
#' @description
#' V2TaxonomyImageRequest Class
#'
#' @docType class
#' @title V2TaxonomyImageRequest
#' @description V2TaxonomyImageRequest Class
#' @format An \code{R6Class} generator object
#' @field taxon  character [optional]
#' @field image_size  \link{V2ImageSize} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyImageRequest <- R6::R6Class(
  "V2TaxonomyImageRequest",
  public = list(
    `taxon` = NULL,
    `image_size` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyImageRequest class.
    #'
    #' @param taxon taxon
    #' @param image_size image_size
    #' @param ... Other optional arguments.
    initialize = function(`taxon` = NULL, `image_size` = NULL, ...) {
      if (!is.null(`taxon`)) {
        if (!(is.character(`taxon`) && length(`taxon`) == 1)) {
          stop(paste("Error! Invalid data for `taxon`. Must be a string:", `taxon`))
        }
        self$`taxon` <- `taxon`
      }
      if (!is.null(`image_size`)) {
        if (!(`image_size` %in% c())) {
          stop(paste("Error! \"", `image_size`, "\" cannot be assigned to `image_size`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`image_size`))
        self$`image_size` <- `image_size`
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
    #' @return V2TaxonomyImageRequest as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyImageRequest (x) to a data frame
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
    #' Convert V2TaxonomyImageRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyImageRequestObject <- list()
      if (!is.null(self$`taxon`)) {
        V2TaxonomyImageRequestObject[["taxon"]] <-
          self$`taxon`
      }
      if (!is.null(self$`image_size`)) {
        V2TaxonomyImageRequestObject[["image_size"]] <-
          self$`image_size`$toSimpleType()
      }
      return(V2TaxonomyImageRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyImageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyImageRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxon`)) {
        self$`taxon` <- this_object$`taxon`
      }
      if (!is.null(this_object$`image_size`)) {
        `image_size_object` <- V2ImageSize$new()
        `image_size_object`$fromJSON(jsonlite::toJSON(this_object$`image_size`, auto_unbox = TRUE, digits = NA))
        self$`image_size` <- `image_size_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyImageRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyImageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyImageRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxon` <- this_object$`taxon`
      self$`image_size` <- V2ImageSize$new()$fromJSON(jsonlite::toJSON(this_object$`image_size`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyImageRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyImageRequest
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
# V2TaxonomyImageRequest$unlock()
#
## Below is an example to define the print function
# V2TaxonomyImageRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyImageRequest$lock()

