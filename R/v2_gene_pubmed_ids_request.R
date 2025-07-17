#' Create a new V2GenePubmedIdsRequest
#'
#' @description
#' V2GenePubmedIdsRequest Class
#'
#' @docType class
#' @title V2GenePubmedIdsRequest
#' @description V2GenePubmedIdsRequest Class
#' @format An \code{R6Class} generator object
#' @field gene_ids  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GenePubmedIdsRequest <- R6::R6Class(
  "V2GenePubmedIdsRequest",
  public = list(
    `gene_ids` = NULL,

    #' @description
    #' Initialize a new V2GenePubmedIdsRequest class.
    #'
    #' @param gene_ids gene_ids
    #' @param ... Other optional arguments.
    initialize = function(`gene_ids` = NULL, ...) {
      if (!is.null(`gene_ids`)) {
        if (!(is.numeric(`gene_ids`) && length(`gene_ids`) == 1)) {
          stop(paste("Error! Invalid data for `gene_ids`. Must be an integer:", `gene_ids`))
        }
        self$`gene_ids` <- `gene_ids`
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
    #' @return V2GenePubmedIdsRequest as a base R list.
    #' @examples
    #' # convert array of V2GenePubmedIdsRequest (x) to a data frame
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
    #' Convert V2GenePubmedIdsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GenePubmedIdsRequestObject <- list()
      if (!is.null(self$`gene_ids`)) {
        V2GenePubmedIdsRequestObject[["gene_ids"]] <-
          self$`gene_ids`
      }
      return(V2GenePubmedIdsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenePubmedIdsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenePubmedIdsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_ids`)) {
        self$`gene_ids` <- this_object$`gene_ids`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GenePubmedIdsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GenePubmedIdsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GenePubmedIdsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_ids` <- this_object$`gene_ids`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GenePubmedIdsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GenePubmedIdsRequest
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
# V2GenePubmedIdsRequest$unlock()
#
## Below is an example to define the print function
# V2GenePubmedIdsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GenePubmedIdsRequest$lock()

