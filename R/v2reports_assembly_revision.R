#' Create a new V2reportsAssemblyRevision
#'
#' @description
#' V2reportsAssemblyRevision Class
#'
#' @docType class
#' @title V2reportsAssemblyRevision
#' @description V2reportsAssemblyRevision Class
#' @format An \code{R6Class} generator object
#' @field genbank_accession  character [optional]
#' @field refseq_accession  character [optional]
#' @field assembly_name  character [optional]
#' @field assembly_level  \link{V2reportsAssemblyLevel} [optional]
#' @field release_date  character [optional]
#' @field submission_date  character [optional]
#' @field sequencing_technology  character [optional]
#' @field identical  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAssemblyRevision <- R6::R6Class(
  "V2reportsAssemblyRevision",
  public = list(
    `genbank_accession` = NULL,
    `refseq_accession` = NULL,
    `assembly_name` = NULL,
    `assembly_level` = NULL,
    `release_date` = NULL,
    `submission_date` = NULL,
    `sequencing_technology` = NULL,
    `identical` = NULL,

    #' @description
    #' Initialize a new V2reportsAssemblyRevision class.
    #'
    #' @param genbank_accession genbank_accession
    #' @param refseq_accession refseq_accession
    #' @param assembly_name assembly_name
    #' @param assembly_level assembly_level
    #' @param release_date release_date
    #' @param submission_date submission_date
    #' @param sequencing_technology sequencing_technology
    #' @param identical identical
    #' @param ... Other optional arguments.
    initialize = function(`genbank_accession` = NULL, `refseq_accession` = NULL, `assembly_name` = NULL, `assembly_level` = NULL, `release_date` = NULL, `submission_date` = NULL, `sequencing_technology` = NULL, `identical` = NULL, ...) {
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
      if (!is.null(`assembly_name`)) {
        if (!(is.character(`assembly_name`) && length(`assembly_name`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_name`. Must be a string:", `assembly_name`))
        }
        self$`assembly_name` <- `assembly_name`
      }
      if (!is.null(`assembly_level`)) {
        if (!(`assembly_level` %in% c())) {
          stop(paste("Error! \"", `assembly_level`, "\" cannot be assigned to `assembly_level`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_level`))
        self$`assembly_level` <- `assembly_level`
      }
      if (!is.null(`release_date`)) {
        if (!(is.character(`release_date`) && length(`release_date`) == 1)) {
          stop(paste("Error! Invalid data for `release_date`. Must be a string:", `release_date`))
        }
        self$`release_date` <- `release_date`
      }
      if (!is.null(`submission_date`)) {
        if (!(is.character(`submission_date`) && length(`submission_date`) == 1)) {
          stop(paste("Error! Invalid data for `submission_date`. Must be a string:", `submission_date`))
        }
        self$`submission_date` <- `submission_date`
      }
      if (!is.null(`sequencing_technology`)) {
        if (!(is.character(`sequencing_technology`) && length(`sequencing_technology`) == 1)) {
          stop(paste("Error! Invalid data for `sequencing_technology`. Must be a string:", `sequencing_technology`))
        }
        self$`sequencing_technology` <- `sequencing_technology`
      }
      if (!is.null(`identical`)) {
        if (!(is.logical(`identical`) && length(`identical`) == 1)) {
          stop(paste("Error! Invalid data for `identical`. Must be a boolean:", `identical`))
        }
        self$`identical` <- `identical`
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
    #' @return V2reportsAssemblyRevision as a base R list.
    #' @examples
    #' # convert array of V2reportsAssemblyRevision (x) to a data frame
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
    #' Convert V2reportsAssemblyRevision to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAssemblyRevisionObject <- list()
      if (!is.null(self$`genbank_accession`)) {
        V2reportsAssemblyRevisionObject[["genbank_accession"]] <-
          self$`genbank_accession`
      }
      if (!is.null(self$`refseq_accession`)) {
        V2reportsAssemblyRevisionObject[["refseq_accession"]] <-
          self$`refseq_accession`
      }
      if (!is.null(self$`assembly_name`)) {
        V2reportsAssemblyRevisionObject[["assembly_name"]] <-
          self$`assembly_name`
      }
      if (!is.null(self$`assembly_level`)) {
        V2reportsAssemblyRevisionObject[["assembly_level"]] <-
          self$`assembly_level`$toSimpleType()
      }
      if (!is.null(self$`release_date`)) {
        V2reportsAssemblyRevisionObject[["release_date"]] <-
          self$`release_date`
      }
      if (!is.null(self$`submission_date`)) {
        V2reportsAssemblyRevisionObject[["submission_date"]] <-
          self$`submission_date`
      }
      if (!is.null(self$`sequencing_technology`)) {
        V2reportsAssemblyRevisionObject[["sequencing_technology"]] <-
          self$`sequencing_technology`
      }
      if (!is.null(self$`identical`)) {
        V2reportsAssemblyRevisionObject[["identical"]] <-
          self$`identical`
      }
      return(V2reportsAssemblyRevisionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyRevision
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyRevision
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`genbank_accession`)) {
        self$`genbank_accession` <- this_object$`genbank_accession`
      }
      if (!is.null(this_object$`refseq_accession`)) {
        self$`refseq_accession` <- this_object$`refseq_accession`
      }
      if (!is.null(this_object$`assembly_name`)) {
        self$`assembly_name` <- this_object$`assembly_name`
      }
      if (!is.null(this_object$`assembly_level`)) {
        `assembly_level_object` <- V2reportsAssemblyLevel$new()
        `assembly_level_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_level`, auto_unbox = TRUE, digits = NA))
        self$`assembly_level` <- `assembly_level_object`
      }
      if (!is.null(this_object$`release_date`)) {
        self$`release_date` <- this_object$`release_date`
      }
      if (!is.null(this_object$`submission_date`)) {
        self$`submission_date` <- this_object$`submission_date`
      }
      if (!is.null(this_object$`sequencing_technology`)) {
        self$`sequencing_technology` <- this_object$`sequencing_technology`
      }
      if (!is.null(this_object$`identical`)) {
        self$`identical` <- this_object$`identical`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAssemblyRevision in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyRevision
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyRevision
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`genbank_accession` <- this_object$`genbank_accession`
      self$`refseq_accession` <- this_object$`refseq_accession`
      self$`assembly_name` <- this_object$`assembly_name`
      self$`assembly_level` <- V2reportsAssemblyLevel$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_level`, auto_unbox = TRUE, digits = NA))
      self$`release_date` <- this_object$`release_date`
      self$`submission_date` <- this_object$`submission_date`
      self$`sequencing_technology` <- this_object$`sequencing_technology`
      self$`identical` <- this_object$`identical`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAssemblyRevision and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAssemblyRevision
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
# V2reportsAssemblyRevision$unlock()
#
## Below is an example to define the print function
# V2reportsAssemblyRevision$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAssemblyRevision$lock()

