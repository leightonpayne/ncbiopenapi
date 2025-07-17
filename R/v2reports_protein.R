#' Create a new V2reportsProtein
#'
#' @description
#' V2reportsProtein Class
#'
#' @docType class
#' @title V2reportsProtein
#' @description V2reportsProtein Class
#' @format An \code{R6Class} generator object
#' @field accession_version  character [optional]
#' @field name  character [optional]
#' @field length  integer [optional]
#' @field isoform_name  character [optional]
#' @field ensembl_protein  character [optional]
#' @field mature_peptides  list(\link{V2reportsMaturePeptide}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsProtein <- R6::R6Class(
  "V2reportsProtein",
  public = list(
    `accession_version` = NULL,
    `name` = NULL,
    `length` = NULL,
    `isoform_name` = NULL,
    `ensembl_protein` = NULL,
    `mature_peptides` = NULL,

    #' @description
    #' Initialize a new V2reportsProtein class.
    #'
    #' @param accession_version accession_version
    #' @param name name
    #' @param length length
    #' @param isoform_name isoform_name
    #' @param ensembl_protein ensembl_protein
    #' @param mature_peptides mature_peptides
    #' @param ... Other optional arguments.
    initialize = function(`accession_version` = NULL, `name` = NULL, `length` = NULL, `isoform_name` = NULL, `ensembl_protein` = NULL, `mature_peptides` = NULL, ...) {
      if (!is.null(`accession_version`)) {
        if (!(is.character(`accession_version`) && length(`accession_version`) == 1)) {
          stop(paste("Error! Invalid data for `accession_version`. Must be a string:", `accession_version`))
        }
        self$`accession_version` <- `accession_version`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`isoform_name`)) {
        if (!(is.character(`isoform_name`) && length(`isoform_name`) == 1)) {
          stop(paste("Error! Invalid data for `isoform_name`. Must be a string:", `isoform_name`))
        }
        self$`isoform_name` <- `isoform_name`
      }
      if (!is.null(`ensembl_protein`)) {
        if (!(is.character(`ensembl_protein`) && length(`ensembl_protein`) == 1)) {
          stop(paste("Error! Invalid data for `ensembl_protein`. Must be a string:", `ensembl_protein`))
        }
        self$`ensembl_protein` <- `ensembl_protein`
      }
      if (!is.null(`mature_peptides`)) {
        stopifnot(is.vector(`mature_peptides`), length(`mature_peptides`) != 0)
        sapply(`mature_peptides`, function(x) stopifnot(R6::is.R6(x)))
        self$`mature_peptides` <- `mature_peptides`
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
    #' @return V2reportsProtein as a base R list.
    #' @examples
    #' # convert array of V2reportsProtein (x) to a data frame
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
    #' Convert V2reportsProtein to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsProteinObject <- list()
      if (!is.null(self$`accession_version`)) {
        V2reportsProteinObject[["accession_version"]] <-
          self$`accession_version`
      }
      if (!is.null(self$`name`)) {
        V2reportsProteinObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`length`)) {
        V2reportsProteinObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`isoform_name`)) {
        V2reportsProteinObject[["isoform_name"]] <-
          self$`isoform_name`
      }
      if (!is.null(self$`ensembl_protein`)) {
        V2reportsProteinObject[["ensembl_protein"]] <-
          self$`ensembl_protein`
      }
      if (!is.null(self$`mature_peptides`)) {
        V2reportsProteinObject[["mature_peptides"]] <-
          lapply(self$`mature_peptides`, function(x) x$toSimpleType())
      }
      return(V2reportsProteinObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsProtein
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsProtein
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession_version`)) {
        self$`accession_version` <- this_object$`accession_version`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`isoform_name`)) {
        self$`isoform_name` <- this_object$`isoform_name`
      }
      if (!is.null(this_object$`ensembl_protein`)) {
        self$`ensembl_protein` <- this_object$`ensembl_protein`
      }
      if (!is.null(this_object$`mature_peptides`)) {
        self$`mature_peptides` <- ApiClient$new()$deserializeObj(this_object$`mature_peptides`, "array[V2reportsMaturePeptide]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsProtein in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsProtein
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsProtein
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession_version` <- this_object$`accession_version`
      self$`name` <- this_object$`name`
      self$`length` <- this_object$`length`
      self$`isoform_name` <- this_object$`isoform_name`
      self$`ensembl_protein` <- this_object$`ensembl_protein`
      self$`mature_peptides` <- ApiClient$new()$deserializeObj(this_object$`mature_peptides`, "array[V2reportsMaturePeptide]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsProtein and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsProtein
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
# V2reportsProtein$unlock()
#
## Below is an example to define the print function
# V2reportsProtein$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsProtein$lock()

