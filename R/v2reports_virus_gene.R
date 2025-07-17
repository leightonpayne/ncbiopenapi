#' Create a new V2reportsVirusGene
#'
#' @description
#' V2reportsVirusGene Class
#'
#' @docType class
#' @title V2reportsVirusGene
#' @description V2reportsVirusGene Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field gene_id  integer [optional]
#' @field nucleotide  \link{V2reportsSeqRangeSetFasta} [optional]
#' @field cds  list(\link{V2reportsVirusPeptide}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusGene <- R6::R6Class(
  "V2reportsVirusGene",
  public = list(
    `name` = NULL,
    `gene_id` = NULL,
    `nucleotide` = NULL,
    `cds` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusGene class.
    #'
    #' @param name name
    #' @param gene_id gene_id
    #' @param nucleotide nucleotide
    #' @param cds cds
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `gene_id` = NULL, `nucleotide` = NULL, `cds` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`gene_id`)) {
        if (!(is.numeric(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be an integer:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!is.null(`nucleotide`)) {
        stopifnot(R6::is.R6(`nucleotide`))
        self$`nucleotide` <- `nucleotide`
      }
      if (!is.null(`cds`)) {
        stopifnot(is.vector(`cds`), length(`cds`) != 0)
        sapply(`cds`, function(x) stopifnot(R6::is.R6(x)))
        self$`cds` <- `cds`
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
    #' @return V2reportsVirusGene as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusGene (x) to a data frame
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
    #' Convert V2reportsVirusGene to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusGeneObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsVirusGeneObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`gene_id`)) {
        V2reportsVirusGeneObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`nucleotide`)) {
        V2reportsVirusGeneObject[["nucleotide"]] <-
          self$`nucleotide`$toSimpleType()
      }
      if (!is.null(self$`cds`)) {
        V2reportsVirusGeneObject[["cds"]] <-
          lapply(self$`cds`, function(x) x$toSimpleType())
      }
      return(V2reportsVirusGeneObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusGene
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusGene
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`nucleotide`)) {
        `nucleotide_object` <- V2reportsSeqRangeSetFasta$new()
        `nucleotide_object`$fromJSON(jsonlite::toJSON(this_object$`nucleotide`, auto_unbox = TRUE, digits = NA))
        self$`nucleotide` <- `nucleotide_object`
      }
      if (!is.null(this_object$`cds`)) {
        self$`cds` <- ApiClient$new()$deserializeObj(this_object$`cds`, "array[V2reportsVirusPeptide]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusGene in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusGene
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusGene
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`gene_id` <- this_object$`gene_id`
      self$`nucleotide` <- V2reportsSeqRangeSetFasta$new()$fromJSON(jsonlite::toJSON(this_object$`nucleotide`, auto_unbox = TRUE, digits = NA))
      self$`cds` <- ApiClient$new()$deserializeObj(this_object$`cds`, "array[V2reportsVirusPeptide]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusGene and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusGene
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
# V2reportsVirusGene$unlock()
#
## Below is an example to define the print function
# V2reportsVirusGene$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusGene$lock()

