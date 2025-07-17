#' Create a new V2reportsAdditionalSubmitter
#'
#' @description
#' V2reportsAdditionalSubmitter Class
#'
#' @docType class
#' @title V2reportsAdditionalSubmitter
#' @description V2reportsAdditionalSubmitter Class
#' @format An \code{R6Class} generator object
#' @field genbank_accession  character [optional]
#' @field refseq_accession  character [optional]
#' @field chr_name  character [optional]
#' @field molecule_type  character [optional]
#' @field submitter  character [optional]
#' @field bioproject_accession  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAdditionalSubmitter <- R6::R6Class(
  "V2reportsAdditionalSubmitter",
  public = list(
    `genbank_accession` = NULL,
    `refseq_accession` = NULL,
    `chr_name` = NULL,
    `molecule_type` = NULL,
    `submitter` = NULL,
    `bioproject_accession` = NULL,

    #' @description
    #' Initialize a new V2reportsAdditionalSubmitter class.
    #'
    #' @param genbank_accession genbank_accession
    #' @param refseq_accession refseq_accession
    #' @param chr_name chr_name
    #' @param molecule_type molecule_type
    #' @param submitter submitter
    #' @param bioproject_accession bioproject_accession
    #' @param ... Other optional arguments.
    initialize = function(`genbank_accession` = NULL, `refseq_accession` = NULL, `chr_name` = NULL, `molecule_type` = NULL, `submitter` = NULL, `bioproject_accession` = NULL, ...) {
      if (!is.null(`genbank_accession`)) {
        if (!(is.character(`genbank_accession`) && length(`genbank_accession`) == 1)) {
          stop(paste("Error! Invalid data for `genbank_accession`. Must be a string:", `genbank_accession`))
        }
        self$`genbank_accession` <- `genbank_accession`
      }
      if (!is.null(`refseq_accession`)) {
        if (!(is.character(`refseq_accession`) && length(`refseq_accession`) == 1)) {
          stop(paste("Error! Invalid data for `refseq_accession`. Must be a string:", `refseq_accession`))
        }
        self$`refseq_accession` <- `refseq_accession`
      }
      if (!is.null(`chr_name`)) {
        if (!(is.character(`chr_name`) && length(`chr_name`) == 1)) {
          stop(paste("Error! Invalid data for `chr_name`. Must be a string:", `chr_name`))
        }
        self$`chr_name` <- `chr_name`
      }
      if (!is.null(`molecule_type`)) {
        if (!(is.character(`molecule_type`) && length(`molecule_type`) == 1)) {
          stop(paste("Error! Invalid data for `molecule_type`. Must be a string:", `molecule_type`))
        }
        self$`molecule_type` <- `molecule_type`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
      }
      if (!is.null(`bioproject_accession`)) {
        if (!(is.character(`bioproject_accession`) && length(`bioproject_accession`) == 1)) {
          stop(paste("Error! Invalid data for `bioproject_accession`. Must be a string:", `bioproject_accession`))
        }
        self$`bioproject_accession` <- `bioproject_accession`
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
    #' @return V2reportsAdditionalSubmitter as a base R list.
    #' @examples
    #' # convert array of V2reportsAdditionalSubmitter (x) to a data frame
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
    #' Convert V2reportsAdditionalSubmitter to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAdditionalSubmitterObject <- list()
      if (!is.null(self$`genbank_accession`)) {
        V2reportsAdditionalSubmitterObject[["genbank_accession"]] <-
          self$`genbank_accession`
      }
      if (!is.null(self$`refseq_accession`)) {
        V2reportsAdditionalSubmitterObject[["refseq_accession"]] <-
          self$`refseq_accession`
      }
      if (!is.null(self$`chr_name`)) {
        V2reportsAdditionalSubmitterObject[["chr_name"]] <-
          self$`chr_name`
      }
      if (!is.null(self$`molecule_type`)) {
        V2reportsAdditionalSubmitterObject[["molecule_type"]] <-
          self$`molecule_type`
      }
      if (!is.null(self$`submitter`)) {
        V2reportsAdditionalSubmitterObject[["submitter"]] <-
          self$`submitter`
      }
      if (!is.null(self$`bioproject_accession`)) {
        V2reportsAdditionalSubmitterObject[["bioproject_accession"]] <-
          self$`bioproject_accession`
      }
      return(V2reportsAdditionalSubmitterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAdditionalSubmitter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAdditionalSubmitter
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`genbank_accession`)) {
        self$`genbank_accession` <- this_object$`genbank_accession`
      }
      if (!is.null(this_object$`refseq_accession`)) {
        self$`refseq_accession` <- this_object$`refseq_accession`
      }
      if (!is.null(this_object$`chr_name`)) {
        self$`chr_name` <- this_object$`chr_name`
      }
      if (!is.null(this_object$`molecule_type`)) {
        self$`molecule_type` <- this_object$`molecule_type`
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
      }
      if (!is.null(this_object$`bioproject_accession`)) {
        self$`bioproject_accession` <- this_object$`bioproject_accession`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAdditionalSubmitter in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAdditionalSubmitter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAdditionalSubmitter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`genbank_accession` <- this_object$`genbank_accession`
      self$`refseq_accession` <- this_object$`refseq_accession`
      self$`chr_name` <- this_object$`chr_name`
      self$`molecule_type` <- this_object$`molecule_type`
      self$`submitter` <- this_object$`submitter`
      self$`bioproject_accession` <- this_object$`bioproject_accession`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAdditionalSubmitter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAdditionalSubmitter
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
# V2reportsAdditionalSubmitter$unlock()
#
## Below is an example to define the print function
# V2reportsAdditionalSubmitter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAdditionalSubmitter$lock()

