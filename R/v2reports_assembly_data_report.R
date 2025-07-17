#' Create a new V2reportsAssemblyDataReport
#'
#' @description
#' V2reportsAssemblyDataReport Class
#'
#' @docType class
#' @title V2reportsAssemblyDataReport
#' @description V2reportsAssemblyDataReport Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field current_accession  character [optional]
#' @field paired_accession  character [optional]
#' @field source_database  \link{V2reportsSourceDatabase} [optional]
#' @field organism  \link{V2reportsOrganism} [optional]
#' @field assembly_info  \link{V2reportsAssemblyInfo} [optional]
#' @field assembly_stats  \link{V2reportsAssemblyStats} [optional]
#' @field organelle_info  list(\link{V2reportsOrganelleInfo}) [optional]
#' @field additional_submitters  list(\link{V2reportsAdditionalSubmitter}) [optional]
#' @field annotation_info  \link{V2reportsAnnotationInfo} [optional]
#' @field wgs_info  \link{V2reportsWGSInfo} [optional]
#' @field type_material  \link{V2reportsTypeMaterial} [optional]
#' @field checkm_info  \link{V2reportsCheckM} [optional]
#' @field average_nucleotide_identity  \link{V2reportsAverageNucleotideIdentity} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAssemblyDataReport <- R6::R6Class(
  "V2reportsAssemblyDataReport",
  public = list(
    `accession` = NULL,
    `current_accession` = NULL,
    `paired_accession` = NULL,
    `source_database` = NULL,
    `organism` = NULL,
    `assembly_info` = NULL,
    `assembly_stats` = NULL,
    `organelle_info` = NULL,
    `additional_submitters` = NULL,
    `annotation_info` = NULL,
    `wgs_info` = NULL,
    `type_material` = NULL,
    `checkm_info` = NULL,
    `average_nucleotide_identity` = NULL,

    #' @description
    #' Initialize a new V2reportsAssemblyDataReport class.
    #'
    #' @param accession accession
    #' @param current_accession current_accession
    #' @param paired_accession paired_accession
    #' @param source_database source_database
    #' @param organism organism
    #' @param assembly_info assembly_info
    #' @param assembly_stats assembly_stats
    #' @param organelle_info organelle_info
    #' @param additional_submitters additional_submitters
    #' @param annotation_info annotation_info
    #' @param wgs_info wgs_info
    #' @param type_material type_material
    #' @param checkm_info checkm_info
    #' @param average_nucleotide_identity average_nucleotide_identity
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `current_accession` = NULL, `paired_accession` = NULL, `source_database` = NULL, `organism` = NULL, `assembly_info` = NULL, `assembly_stats` = NULL, `organelle_info` = NULL, `additional_submitters` = NULL, `annotation_info` = NULL, `wgs_info` = NULL, `type_material` = NULL, `checkm_info` = NULL, `average_nucleotide_identity` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`current_accession`)) {
        if (!(is.character(`current_accession`) && length(`current_accession`) == 1)) {
          stop(paste("Error! Invalid data for `current_accession`. Must be a string:", `current_accession`))
        }
        self$`current_accession` <- `current_accession`
      }
      if (!is.null(`paired_accession`)) {
        if (!(is.character(`paired_accession`) && length(`paired_accession`) == 1)) {
          stop(paste("Error! Invalid data for `paired_accession`. Must be a string:", `paired_accession`))
        }
        self$`paired_accession` <- `paired_accession`
      }
      if (!is.null(`source_database`)) {
        if (!(`source_database` %in% c())) {
          stop(paste("Error! \"", `source_database`, "\" cannot be assigned to `source_database`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`source_database`))
        self$`source_database` <- `source_database`
      }
      if (!is.null(`organism`)) {
        stopifnot(R6::is.R6(`organism`))
        self$`organism` <- `organism`
      }
      if (!is.null(`assembly_info`)) {
        stopifnot(R6::is.R6(`assembly_info`))
        self$`assembly_info` <- `assembly_info`
      }
      if (!is.null(`assembly_stats`)) {
        stopifnot(R6::is.R6(`assembly_stats`))
        self$`assembly_stats` <- `assembly_stats`
      }
      if (!is.null(`organelle_info`)) {
        stopifnot(is.vector(`organelle_info`), length(`organelle_info`) != 0)
        sapply(`organelle_info`, function(x) stopifnot(R6::is.R6(x)))
        self$`organelle_info` <- `organelle_info`
      }
      if (!is.null(`additional_submitters`)) {
        stopifnot(is.vector(`additional_submitters`), length(`additional_submitters`) != 0)
        sapply(`additional_submitters`, function(x) stopifnot(R6::is.R6(x)))
        self$`additional_submitters` <- `additional_submitters`
      }
      if (!is.null(`annotation_info`)) {
        stopifnot(R6::is.R6(`annotation_info`))
        self$`annotation_info` <- `annotation_info`
      }
      if (!is.null(`wgs_info`)) {
        stopifnot(R6::is.R6(`wgs_info`))
        self$`wgs_info` <- `wgs_info`
      }
      if (!is.null(`type_material`)) {
        stopifnot(R6::is.R6(`type_material`))
        self$`type_material` <- `type_material`
      }
      if (!is.null(`checkm_info`)) {
        stopifnot(R6::is.R6(`checkm_info`))
        self$`checkm_info` <- `checkm_info`
      }
      if (!is.null(`average_nucleotide_identity`)) {
        stopifnot(R6::is.R6(`average_nucleotide_identity`))
        self$`average_nucleotide_identity` <- `average_nucleotide_identity`
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
    #' @return V2reportsAssemblyDataReport as a base R list.
    #' @examples
    #' # convert array of V2reportsAssemblyDataReport (x) to a data frame
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
    #' Convert V2reportsAssemblyDataReport to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAssemblyDataReportObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsAssemblyDataReportObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`current_accession`)) {
        V2reportsAssemblyDataReportObject[["current_accession"]] <-
          self$`current_accession`
      }
      if (!is.null(self$`paired_accession`)) {
        V2reportsAssemblyDataReportObject[["paired_accession"]] <-
          self$`paired_accession`
      }
      if (!is.null(self$`source_database`)) {
        V2reportsAssemblyDataReportObject[["source_database"]] <-
          self$`source_database`$toSimpleType()
      }
      if (!is.null(self$`organism`)) {
        V2reportsAssemblyDataReportObject[["organism"]] <-
          self$`organism`$toSimpleType()
      }
      if (!is.null(self$`assembly_info`)) {
        V2reportsAssemblyDataReportObject[["assembly_info"]] <-
          self$`assembly_info`$toSimpleType()
      }
      if (!is.null(self$`assembly_stats`)) {
        V2reportsAssemblyDataReportObject[["assembly_stats"]] <-
          self$`assembly_stats`$toSimpleType()
      }
      if (!is.null(self$`organelle_info`)) {
        V2reportsAssemblyDataReportObject[["organelle_info"]] <-
          lapply(self$`organelle_info`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`additional_submitters`)) {
        V2reportsAssemblyDataReportObject[["additional_submitters"]] <-
          lapply(self$`additional_submitters`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`annotation_info`)) {
        V2reportsAssemblyDataReportObject[["annotation_info"]] <-
          self$`annotation_info`$toSimpleType()
      }
      if (!is.null(self$`wgs_info`)) {
        V2reportsAssemblyDataReportObject[["wgs_info"]] <-
          self$`wgs_info`$toSimpleType()
      }
      if (!is.null(self$`type_material`)) {
        V2reportsAssemblyDataReportObject[["type_material"]] <-
          self$`type_material`$toSimpleType()
      }
      if (!is.null(self$`checkm_info`)) {
        V2reportsAssemblyDataReportObject[["checkm_info"]] <-
          self$`checkm_info`$toSimpleType()
      }
      if (!is.null(self$`average_nucleotide_identity`)) {
        V2reportsAssemblyDataReportObject[["average_nucleotide_identity"]] <-
          self$`average_nucleotide_identity`$toSimpleType()
      }
      return(V2reportsAssemblyDataReportObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyDataReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyDataReport
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`current_accession`)) {
        self$`current_accession` <- this_object$`current_accession`
      }
      if (!is.null(this_object$`paired_accession`)) {
        self$`paired_accession` <- this_object$`paired_accession`
      }
      if (!is.null(this_object$`source_database`)) {
        `source_database_object` <- V2reportsSourceDatabase$new()
        `source_database_object`$fromJSON(jsonlite::toJSON(this_object$`source_database`, auto_unbox = TRUE, digits = NA))
        self$`source_database` <- `source_database_object`
      }
      if (!is.null(this_object$`organism`)) {
        `organism_object` <- V2reportsOrganism$new()
        `organism_object`$fromJSON(jsonlite::toJSON(this_object$`organism`, auto_unbox = TRUE, digits = NA))
        self$`organism` <- `organism_object`
      }
      if (!is.null(this_object$`assembly_info`)) {
        `assembly_info_object` <- V2reportsAssemblyInfo$new()
        `assembly_info_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_info`, auto_unbox = TRUE, digits = NA))
        self$`assembly_info` <- `assembly_info_object`
      }
      if (!is.null(this_object$`assembly_stats`)) {
        `assembly_stats_object` <- V2reportsAssemblyStats$new()
        `assembly_stats_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_stats`, auto_unbox = TRUE, digits = NA))
        self$`assembly_stats` <- `assembly_stats_object`
      }
      if (!is.null(this_object$`organelle_info`)) {
        self$`organelle_info` <- ApiClient$new()$deserializeObj(this_object$`organelle_info`, "array[V2reportsOrganelleInfo]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`additional_submitters`)) {
        self$`additional_submitters` <- ApiClient$new()$deserializeObj(this_object$`additional_submitters`, "array[V2reportsAdditionalSubmitter]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`annotation_info`)) {
        `annotation_info_object` <- V2reportsAnnotationInfo$new()
        `annotation_info_object`$fromJSON(jsonlite::toJSON(this_object$`annotation_info`, auto_unbox = TRUE, digits = NA))
        self$`annotation_info` <- `annotation_info_object`
      }
      if (!is.null(this_object$`wgs_info`)) {
        `wgs_info_object` <- V2reportsWGSInfo$new()
        `wgs_info_object`$fromJSON(jsonlite::toJSON(this_object$`wgs_info`, auto_unbox = TRUE, digits = NA))
        self$`wgs_info` <- `wgs_info_object`
      }
      if (!is.null(this_object$`type_material`)) {
        `type_material_object` <- V2reportsTypeMaterial$new()
        `type_material_object`$fromJSON(jsonlite::toJSON(this_object$`type_material`, auto_unbox = TRUE, digits = NA))
        self$`type_material` <- `type_material_object`
      }
      if (!is.null(this_object$`checkm_info`)) {
        `checkm_info_object` <- V2reportsCheckM$new()
        `checkm_info_object`$fromJSON(jsonlite::toJSON(this_object$`checkm_info`, auto_unbox = TRUE, digits = NA))
        self$`checkm_info` <- `checkm_info_object`
      }
      if (!is.null(this_object$`average_nucleotide_identity`)) {
        `average_nucleotide_identity_object` <- V2reportsAverageNucleotideIdentity$new()
        `average_nucleotide_identity_object`$fromJSON(jsonlite::toJSON(this_object$`average_nucleotide_identity`, auto_unbox = TRUE, digits = NA))
        self$`average_nucleotide_identity` <- `average_nucleotide_identity_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAssemblyDataReport in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyDataReport
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyDataReport
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`current_accession` <- this_object$`current_accession`
      self$`paired_accession` <- this_object$`paired_accession`
      self$`source_database` <- V2reportsSourceDatabase$new()$fromJSON(jsonlite::toJSON(this_object$`source_database`, auto_unbox = TRUE, digits = NA))
      self$`organism` <- V2reportsOrganism$new()$fromJSON(jsonlite::toJSON(this_object$`organism`, auto_unbox = TRUE, digits = NA))
      self$`assembly_info` <- V2reportsAssemblyInfo$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_info`, auto_unbox = TRUE, digits = NA))
      self$`assembly_stats` <- V2reportsAssemblyStats$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_stats`, auto_unbox = TRUE, digits = NA))
      self$`organelle_info` <- ApiClient$new()$deserializeObj(this_object$`organelle_info`, "array[V2reportsOrganelleInfo]", loadNamespace("ncbiopenapi"))
      self$`additional_submitters` <- ApiClient$new()$deserializeObj(this_object$`additional_submitters`, "array[V2reportsAdditionalSubmitter]", loadNamespace("ncbiopenapi"))
      self$`annotation_info` <- V2reportsAnnotationInfo$new()$fromJSON(jsonlite::toJSON(this_object$`annotation_info`, auto_unbox = TRUE, digits = NA))
      self$`wgs_info` <- V2reportsWGSInfo$new()$fromJSON(jsonlite::toJSON(this_object$`wgs_info`, auto_unbox = TRUE, digits = NA))
      self$`type_material` <- V2reportsTypeMaterial$new()$fromJSON(jsonlite::toJSON(this_object$`type_material`, auto_unbox = TRUE, digits = NA))
      self$`checkm_info` <- V2reportsCheckM$new()$fromJSON(jsonlite::toJSON(this_object$`checkm_info`, auto_unbox = TRUE, digits = NA))
      self$`average_nucleotide_identity` <- V2reportsAverageNucleotideIdentity$new()$fromJSON(jsonlite::toJSON(this_object$`average_nucleotide_identity`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAssemblyDataReport and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAssemblyDataReport
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
# V2reportsAssemblyDataReport$unlock()
#
## Below is an example to define the print function
# V2reportsAssemblyDataReport$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAssemblyDataReport$lock()

