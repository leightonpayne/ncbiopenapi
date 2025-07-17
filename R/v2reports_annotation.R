#' Create a new V2reportsAnnotation
#'
#' @description
#' V2reportsAnnotation Class
#'
#' @docType class
#' @title V2reportsAnnotation
#' @description V2reportsAnnotation Class
#' @format An \code{R6Class} generator object
#' @field assembly_accession  character [optional]
#' @field assembly_name  character [optional]
#' @field annotation_name  character [optional]
#' @field annotation_release_date  character [optional]
#' @field genomic_locations  list(\link{V2reportsGenomicLocation}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAnnotation <- R6::R6Class(
  "V2reportsAnnotation",
  public = list(
    `assembly_accession` = NULL,
    `assembly_name` = NULL,
    `annotation_name` = NULL,
    `annotation_release_date` = NULL,
    `genomic_locations` = NULL,

    #' @description
    #' Initialize a new V2reportsAnnotation class.
    #'
    #' @param assembly_accession assembly_accession
    #' @param assembly_name assembly_name
    #' @param annotation_name annotation_name
    #' @param annotation_release_date annotation_release_date
    #' @param genomic_locations genomic_locations
    #' @param ... Other optional arguments.
    initialize = function(`assembly_accession` = NULL, `assembly_name` = NULL, `annotation_name` = NULL, `annotation_release_date` = NULL, `genomic_locations` = NULL, ...) {
      if (!is.null(`assembly_accession`)) {
        if (!(is.character(`assembly_accession`) && length(`assembly_accession`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_accession`. Must be a string:", `assembly_accession`))
        }
        self$`assembly_accession` <- `assembly_accession`
      }
      if (!is.null(`assembly_name`)) {
        if (!(is.character(`assembly_name`) && length(`assembly_name`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_name`. Must be a string:", `assembly_name`))
        }
        self$`assembly_name` <- `assembly_name`
      }
      if (!is.null(`annotation_name`)) {
        if (!(is.character(`annotation_name`) && length(`annotation_name`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_name`. Must be a string:", `annotation_name`))
        }
        self$`annotation_name` <- `annotation_name`
      }
      if (!is.null(`annotation_release_date`)) {
        if (!(is.character(`annotation_release_date`) && length(`annotation_release_date`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_release_date`. Must be a string:", `annotation_release_date`))
        }
        self$`annotation_release_date` <- `annotation_release_date`
      }
      if (!is.null(`genomic_locations`)) {
        stopifnot(is.vector(`genomic_locations`), length(`genomic_locations`) != 0)
        sapply(`genomic_locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`genomic_locations` <- `genomic_locations`
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
    #' @return V2reportsAnnotation as a base R list.
    #' @examples
    #' # convert array of V2reportsAnnotation (x) to a data frame
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
    #' Convert V2reportsAnnotation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAnnotationObject <- list()
      if (!is.null(self$`assembly_accession`)) {
        V2reportsAnnotationObject[["assembly_accession"]] <-
          self$`assembly_accession`
      }
      if (!is.null(self$`assembly_name`)) {
        V2reportsAnnotationObject[["assembly_name"]] <-
          self$`assembly_name`
      }
      if (!is.null(self$`annotation_name`)) {
        V2reportsAnnotationObject[["annotation_name"]] <-
          self$`annotation_name`
      }
      if (!is.null(self$`annotation_release_date`)) {
        V2reportsAnnotationObject[["annotation_release_date"]] <-
          self$`annotation_release_date`
      }
      if (!is.null(self$`genomic_locations`)) {
        V2reportsAnnotationObject[["genomic_locations"]] <-
          lapply(self$`genomic_locations`, function(x) x$toSimpleType())
      }
      return(V2reportsAnnotationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAnnotation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_accession`)) {
        self$`assembly_accession` <- this_object$`assembly_accession`
      }
      if (!is.null(this_object$`assembly_name`)) {
        self$`assembly_name` <- this_object$`assembly_name`
      }
      if (!is.null(this_object$`annotation_name`)) {
        self$`annotation_name` <- this_object$`annotation_name`
      }
      if (!is.null(this_object$`annotation_release_date`)) {
        self$`annotation_release_date` <- this_object$`annotation_release_date`
      }
      if (!is.null(this_object$`genomic_locations`)) {
        self$`genomic_locations` <- ApiClient$new()$deserializeObj(this_object$`genomic_locations`, "array[V2reportsGenomicLocation]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAnnotation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAnnotation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_accession` <- this_object$`assembly_accession`
      self$`assembly_name` <- this_object$`assembly_name`
      self$`annotation_name` <- this_object$`annotation_name`
      self$`annotation_release_date` <- this_object$`annotation_release_date`
      self$`genomic_locations` <- ApiClient$new()$deserializeObj(this_object$`genomic_locations`, "array[V2reportsGenomicLocation]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAnnotation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAnnotation
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
# V2reportsAnnotation$unlock()
#
## Below is an example to define the print function
# V2reportsAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAnnotation$lock()

