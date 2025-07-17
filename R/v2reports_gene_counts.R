#' Create a new V2reportsGeneCounts
#'
#' @description
#' V2reportsGeneCounts Class
#'
#' @docType class
#' @title V2reportsGeneCounts
#' @description V2reportsGeneCounts Class
#' @format An \code{R6Class} generator object
#' @field total  integer [optional]
#' @field protein_coding  integer [optional]
#' @field non_coding  integer [optional]
#' @field pseudogene  integer [optional]
#' @field other  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGeneCounts <- R6::R6Class(
  "V2reportsGeneCounts",
  public = list(
    `total` = NULL,
    `protein_coding` = NULL,
    `non_coding` = NULL,
    `pseudogene` = NULL,
    `other` = NULL,

    #' @description
    #' Initialize a new V2reportsGeneCounts class.
    #'
    #' @param total total
    #' @param protein_coding protein_coding
    #' @param non_coding non_coding
    #' @param pseudogene pseudogene
    #' @param other other
    #' @param ... Other optional arguments.
    initialize = function(`total` = NULL, `protein_coding` = NULL, `non_coding` = NULL, `pseudogene` = NULL, `other` = NULL, ...) {
      if (!is.null(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!is.null(`protein_coding`)) {
        if (!(is.numeric(`protein_coding`) && length(`protein_coding`) == 1)) {
          stop(paste("Error! Invalid data for `protein_coding`. Must be an integer:", `protein_coding`))
        }
        self$`protein_coding` <- `protein_coding`
      }
      if (!is.null(`non_coding`)) {
        if (!(is.numeric(`non_coding`) && length(`non_coding`) == 1)) {
          stop(paste("Error! Invalid data for `non_coding`. Must be an integer:", `non_coding`))
        }
        self$`non_coding` <- `non_coding`
      }
      if (!is.null(`pseudogene`)) {
        if (!(is.numeric(`pseudogene`) && length(`pseudogene`) == 1)) {
          stop(paste("Error! Invalid data for `pseudogene`. Must be an integer:", `pseudogene`))
        }
        self$`pseudogene` <- `pseudogene`
      }
      if (!is.null(`other`)) {
        if (!(is.numeric(`other`) && length(`other`) == 1)) {
          stop(paste("Error! Invalid data for `other`. Must be an integer:", `other`))
        }
        self$`other` <- `other`
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
    #' @return V2reportsGeneCounts as a base R list.
    #' @examples
    #' # convert array of V2reportsGeneCounts (x) to a data frame
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
    #' Convert V2reportsGeneCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGeneCountsObject <- list()
      if (!is.null(self$`total`)) {
        V2reportsGeneCountsObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`protein_coding`)) {
        V2reportsGeneCountsObject[["protein_coding"]] <-
          self$`protein_coding`
      }
      if (!is.null(self$`non_coding`)) {
        V2reportsGeneCountsObject[["non_coding"]] <-
          self$`non_coding`
      }
      if (!is.null(self$`pseudogene`)) {
        V2reportsGeneCountsObject[["pseudogene"]] <-
          self$`pseudogene`
      }
      if (!is.null(self$`other`)) {
        V2reportsGeneCountsObject[["other"]] <-
          self$`other`
      }
      return(V2reportsGeneCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`protein_coding`)) {
        self$`protein_coding` <- this_object$`protein_coding`
      }
      if (!is.null(this_object$`non_coding`)) {
        self$`non_coding` <- this_object$`non_coding`
      }
      if (!is.null(this_object$`pseudogene`)) {
        self$`pseudogene` <- this_object$`pseudogene`
      }
      if (!is.null(this_object$`other`)) {
        self$`other` <- this_object$`other`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGeneCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total` <- this_object$`total`
      self$`protein_coding` <- this_object$`protein_coding`
      self$`non_coding` <- this_object$`non_coding`
      self$`pseudogene` <- this_object$`pseudogene`
      self$`other` <- this_object$`other`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGeneCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGeneCounts
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
# V2reportsGeneCounts$unlock()
#
## Below is an example to define the print function
# V2reportsGeneCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGeneCounts$lock()

