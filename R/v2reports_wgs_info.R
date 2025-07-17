#' Create a new V2reportsWGSInfo
#'
#' @description
#' V2reportsWGSInfo Class
#'
#' @docType class
#' @title V2reportsWGSInfo
#' @description V2reportsWGSInfo Class
#' @format An \code{R6Class} generator object
#' @field wgs_project_accession  character [optional]
#' @field master_wgs_url  character [optional]
#' @field wgs_contigs_url  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsWGSInfo <- R6::R6Class(
  "V2reportsWGSInfo",
  public = list(
    `wgs_project_accession` = NULL,
    `master_wgs_url` = NULL,
    `wgs_contigs_url` = NULL,

    #' @description
    #' Initialize a new V2reportsWGSInfo class.
    #'
    #' @param wgs_project_accession wgs_project_accession
    #' @param master_wgs_url master_wgs_url
    #' @param wgs_contigs_url wgs_contigs_url
    #' @param ... Other optional arguments.
    initialize = function(`wgs_project_accession` = NULL, `master_wgs_url` = NULL, `wgs_contigs_url` = NULL, ...) {
      if (!is.null(`wgs_project_accession`)) {
        if (!(is.character(`wgs_project_accession`) && length(`wgs_project_accession`) == 1)) {
          stop(paste("Error! Invalid data for `wgs_project_accession`. Must be a string:", `wgs_project_accession`))
        }
        self$`wgs_project_accession` <- `wgs_project_accession`
      }
      if (!is.null(`master_wgs_url`)) {
        if (!(is.character(`master_wgs_url`) && length(`master_wgs_url`) == 1)) {
          stop(paste("Error! Invalid data for `master_wgs_url`. Must be a string:", `master_wgs_url`))
        }
        self$`master_wgs_url` <- `master_wgs_url`
      }
      if (!is.null(`wgs_contigs_url`)) {
        if (!(is.character(`wgs_contigs_url`) && length(`wgs_contigs_url`) == 1)) {
          stop(paste("Error! Invalid data for `wgs_contigs_url`. Must be a string:", `wgs_contigs_url`))
        }
        self$`wgs_contigs_url` <- `wgs_contigs_url`
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
    #' @return V2reportsWGSInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsWGSInfo (x) to a data frame
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
    #' Convert V2reportsWGSInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsWGSInfoObject <- list()
      if (!is.null(self$`wgs_project_accession`)) {
        V2reportsWGSInfoObject[["wgs_project_accession"]] <-
          self$`wgs_project_accession`
      }
      if (!is.null(self$`master_wgs_url`)) {
        V2reportsWGSInfoObject[["master_wgs_url"]] <-
          self$`master_wgs_url`
      }
      if (!is.null(self$`wgs_contigs_url`)) {
        V2reportsWGSInfoObject[["wgs_contigs_url"]] <-
          self$`wgs_contigs_url`
      }
      return(V2reportsWGSInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsWGSInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsWGSInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`wgs_project_accession`)) {
        self$`wgs_project_accession` <- this_object$`wgs_project_accession`
      }
      if (!is.null(this_object$`master_wgs_url`)) {
        self$`master_wgs_url` <- this_object$`master_wgs_url`
      }
      if (!is.null(this_object$`wgs_contigs_url`)) {
        self$`wgs_contigs_url` <- this_object$`wgs_contigs_url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsWGSInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsWGSInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsWGSInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`wgs_project_accession` <- this_object$`wgs_project_accession`
      self$`master_wgs_url` <- this_object$`master_wgs_url`
      self$`wgs_contigs_url` <- this_object$`wgs_contigs_url`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsWGSInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsWGSInfo
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
# V2reportsWGSInfo$unlock()
#
## Below is an example to define the print function
# V2reportsWGSInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsWGSInfo$lock()

