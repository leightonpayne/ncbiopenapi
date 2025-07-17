#' Create a new V2archiveCatalog
#'
#' @description
#' V2archiveCatalog Class
#'
#' @docType class
#' @title V2archiveCatalog
#' @description V2archiveCatalog Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field molecule_type  \link{V2archiveMoleculeType} [optional]
#' @field definition  character [optional]
#' @field taxonomy  \link{V2archiveTaxonomyNode} [optional]
#' @field sequence  \link{V2archiveSequence} [optional]
#' @field topology  \link{V2reportsOrganelleTopology} [optional]
#' @field modification_date  character [optional]
#' @field publication_date  character [optional]
#' @field submitters  list(\link{V2archiveSubmitter}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2archiveCatalog <- R6::R6Class(
  "V2archiveCatalog",
  public = list(
    `accession` = NULL,
    `molecule_type` = NULL,
    `definition` = NULL,
    `taxonomy` = NULL,
    `sequence` = NULL,
    `topology` = NULL,
    `modification_date` = NULL,
    `publication_date` = NULL,
    `submitters` = NULL,

    #' @description
    #' Initialize a new V2archiveCatalog class.
    #'
    #' @param accession accession
    #' @param molecule_type molecule_type
    #' @param definition definition
    #' @param taxonomy taxonomy
    #' @param sequence sequence
    #' @param topology topology
    #' @param modification_date modification_date
    #' @param publication_date publication_date
    #' @param submitters submitters
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `molecule_type` = NULL, `definition` = NULL, `taxonomy` = NULL, `sequence` = NULL, `topology` = NULL, `modification_date` = NULL, `publication_date` = NULL, `submitters` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`molecule_type`)) {
        if (!(`molecule_type` %in% c())) {
          stop(paste("Error! \"", `molecule_type`, "\" cannot be assigned to `molecule_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`molecule_type`))
        self$`molecule_type` <- `molecule_type`
      }
      if (!is.null(`definition`)) {
        if (!(is.character(`definition`) && length(`definition`) == 1)) {
          stop(paste("Error! Invalid data for `definition`. Must be a string:", `definition`))
        }
        self$`definition` <- `definition`
      }
      if (!is.null(`taxonomy`)) {
        stopifnot(R6::is.R6(`taxonomy`))
        self$`taxonomy` <- `taxonomy`
      }
      if (!is.null(`sequence`)) {
        stopifnot(R6::is.R6(`sequence`))
        self$`sequence` <- `sequence`
      }
      if (!is.null(`topology`)) {
        if (!(`topology` %in% c())) {
          stop(paste("Error! \"", `topology`, "\" cannot be assigned to `topology`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`topology`))
        self$`topology` <- `topology`
      }
      if (!is.null(`modification_date`)) {
        if (!(is.character(`modification_date`) && length(`modification_date`) == 1)) {
          stop(paste("Error! Invalid data for `modification_date`. Must be a string:", `modification_date`))
        }
        self$`modification_date` <- `modification_date`
      }
      if (!is.null(`publication_date`)) {
        if (!(is.character(`publication_date`) && length(`publication_date`) == 1)) {
          stop(paste("Error! Invalid data for `publication_date`. Must be a string:", `publication_date`))
        }
        self$`publication_date` <- `publication_date`
      }
      if (!is.null(`submitters`)) {
        stopifnot(is.vector(`submitters`), length(`submitters`) != 0)
        sapply(`submitters`, function(x) stopifnot(R6::is.R6(x)))
        self$`submitters` <- `submitters`
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
    #' @return V2archiveCatalog as a base R list.
    #' @examples
    #' # convert array of V2archiveCatalog (x) to a data frame
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
    #' Convert V2archiveCatalog to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2archiveCatalogObject <- list()
      if (!is.null(self$`accession`)) {
        V2archiveCatalogObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`molecule_type`)) {
        V2archiveCatalogObject[["molecule_type"]] <-
          self$`molecule_type`$toSimpleType()
      }
      if (!is.null(self$`definition`)) {
        V2archiveCatalogObject[["definition"]] <-
          self$`definition`
      }
      if (!is.null(self$`taxonomy`)) {
        V2archiveCatalogObject[["taxonomy"]] <-
          self$`taxonomy`$toSimpleType()
      }
      if (!is.null(self$`sequence`)) {
        V2archiveCatalogObject[["sequence"]] <-
          self$`sequence`$toSimpleType()
      }
      if (!is.null(self$`topology`)) {
        V2archiveCatalogObject[["topology"]] <-
          self$`topology`$toSimpleType()
      }
      if (!is.null(self$`modification_date`)) {
        V2archiveCatalogObject[["modification_date"]] <-
          self$`modification_date`
      }
      if (!is.null(self$`publication_date`)) {
        V2archiveCatalogObject[["publication_date"]] <-
          self$`publication_date`
      }
      if (!is.null(self$`submitters`)) {
        V2archiveCatalogObject[["submitters"]] <-
          lapply(self$`submitters`, function(x) x$toSimpleType())
      }
      return(V2archiveCatalogObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveCatalog
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveCatalog
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`molecule_type`)) {
        `molecule_type_object` <- V2archiveMoleculeType$new()
        `molecule_type_object`$fromJSON(jsonlite::toJSON(this_object$`molecule_type`, auto_unbox = TRUE, digits = NA))
        self$`molecule_type` <- `molecule_type_object`
      }
      if (!is.null(this_object$`definition`)) {
        self$`definition` <- this_object$`definition`
      }
      if (!is.null(this_object$`taxonomy`)) {
        `taxonomy_object` <- V2archiveTaxonomyNode$new()
        `taxonomy_object`$fromJSON(jsonlite::toJSON(this_object$`taxonomy`, auto_unbox = TRUE, digits = NA))
        self$`taxonomy` <- `taxonomy_object`
      }
      if (!is.null(this_object$`sequence`)) {
        `sequence_object` <- V2archiveSequence$new()
        `sequence_object`$fromJSON(jsonlite::toJSON(this_object$`sequence`, auto_unbox = TRUE, digits = NA))
        self$`sequence` <- `sequence_object`
      }
      if (!is.null(this_object$`topology`)) {
        `topology_object` <- V2reportsOrganelleTopology$new()
        `topology_object`$fromJSON(jsonlite::toJSON(this_object$`topology`, auto_unbox = TRUE, digits = NA))
        self$`topology` <- `topology_object`
      }
      if (!is.null(this_object$`modification_date`)) {
        self$`modification_date` <- this_object$`modification_date`
      }
      if (!is.null(this_object$`publication_date`)) {
        self$`publication_date` <- this_object$`publication_date`
      }
      if (!is.null(this_object$`submitters`)) {
        self$`submitters` <- ApiClient$new()$deserializeObj(this_object$`submitters`, "array[V2archiveSubmitter]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2archiveCatalog in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2archiveCatalog
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2archiveCatalog
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`molecule_type` <- V2archiveMoleculeType$new()$fromJSON(jsonlite::toJSON(this_object$`molecule_type`, auto_unbox = TRUE, digits = NA))
      self$`definition` <- this_object$`definition`
      self$`taxonomy` <- V2archiveTaxonomyNode$new()$fromJSON(jsonlite::toJSON(this_object$`taxonomy`, auto_unbox = TRUE, digits = NA))
      self$`sequence` <- V2archiveSequence$new()$fromJSON(jsonlite::toJSON(this_object$`sequence`, auto_unbox = TRUE, digits = NA))
      self$`topology` <- V2reportsOrganelleTopology$new()$fromJSON(jsonlite::toJSON(this_object$`topology`, auto_unbox = TRUE, digits = NA))
      self$`modification_date` <- this_object$`modification_date`
      self$`publication_date` <- this_object$`publication_date`
      self$`submitters` <- ApiClient$new()$deserializeObj(this_object$`submitters`, "array[V2archiveSubmitter]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2archiveCatalog and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2archiveCatalog
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
# V2archiveCatalog$unlock()
#
## Below is an example to define the print function
# V2archiveCatalog$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2archiveCatalog$lock()

