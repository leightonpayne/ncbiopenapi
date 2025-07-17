#' Create a new V2reportsOrganelleGeneCounts
#'
#' @description
#' V2reportsOrganelleGeneCounts Class
#'
#' @docType class
#' @title V2reportsOrganelleGeneCounts
#' @description V2reportsOrganelleGeneCounts Class
#' @format An \code{R6Class} generator object
#' @field total  integer [optional]
#' @field protein_coding  integer [optional]
#' @field rrna  integer [optional]
#' @field trna  integer [optional]
#' @field lncrna  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsOrganelleGeneCounts <- R6::R6Class(
  "V2reportsOrganelleGeneCounts",
  public = list(
    `total` = NULL,
    `protein_coding` = NULL,
    `rrna` = NULL,
    `trna` = NULL,
    `lncrna` = NULL,

    #' @description
    #' Initialize a new V2reportsOrganelleGeneCounts class.
    #'
    #' @param total total
    #' @param protein_coding protein_coding
    #' @param rrna rrna
    #' @param trna trna
    #' @param lncrna lncrna
    #' @param ... Other optional arguments.
    initialize = function(`total` = NULL, `protein_coding` = NULL, `rrna` = NULL, `trna` = NULL, `lncrna` = NULL, ...) {
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
      if (!is.null(`rrna`)) {
        if (!(is.numeric(`rrna`) && length(`rrna`) == 1)) {
          stop(paste("Error! Invalid data for `rrna`. Must be an integer:", `rrna`))
        }
        self$`rrna` <- `rrna`
      }
      if (!is.null(`trna`)) {
        if (!(is.numeric(`trna`) && length(`trna`) == 1)) {
          stop(paste("Error! Invalid data for `trna`. Must be an integer:", `trna`))
        }
        self$`trna` <- `trna`
      }
      if (!is.null(`lncrna`)) {
        if (!(is.numeric(`lncrna`) && length(`lncrna`) == 1)) {
          stop(paste("Error! Invalid data for `lncrna`. Must be an integer:", `lncrna`))
        }
        self$`lncrna` <- `lncrna`
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
    #' @return V2reportsOrganelleGeneCounts as a base R list.
    #' @examples
    #' # convert array of V2reportsOrganelleGeneCounts (x) to a data frame
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
    #' Convert V2reportsOrganelleGeneCounts to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsOrganelleGeneCountsObject <- list()
      if (!is.null(self$`total`)) {
        V2reportsOrganelleGeneCountsObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`protein_coding`)) {
        V2reportsOrganelleGeneCountsObject[["protein_coding"]] <-
          self$`protein_coding`
      }
      if (!is.null(self$`rrna`)) {
        V2reportsOrganelleGeneCountsObject[["rrna"]] <-
          self$`rrna`
      }
      if (!is.null(self$`trna`)) {
        V2reportsOrganelleGeneCountsObject[["trna"]] <-
          self$`trna`
      }
      if (!is.null(self$`lncrna`)) {
        V2reportsOrganelleGeneCountsObject[["lncrna"]] <-
          self$`lncrna`
      }
      return(V2reportsOrganelleGeneCountsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelleGeneCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelleGeneCounts
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`protein_coding`)) {
        self$`protein_coding` <- this_object$`protein_coding`
      }
      if (!is.null(this_object$`rrna`)) {
        self$`rrna` <- this_object$`rrna`
      }
      if (!is.null(this_object$`trna`)) {
        self$`trna` <- this_object$`trna`
      }
      if (!is.null(this_object$`lncrna`)) {
        self$`lncrna` <- this_object$`lncrna`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsOrganelleGeneCounts in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelleGeneCounts
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelleGeneCounts
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total` <- this_object$`total`
      self$`protein_coding` <- this_object$`protein_coding`
      self$`rrna` <- this_object$`rrna`
      self$`trna` <- this_object$`trna`
      self$`lncrna` <- this_object$`lncrna`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsOrganelleGeneCounts and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsOrganelleGeneCounts
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
# V2reportsOrganelleGeneCounts$unlock()
#
## Below is an example to define the print function
# V2reportsOrganelleGeneCounts$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsOrganelleGeneCounts$lock()

