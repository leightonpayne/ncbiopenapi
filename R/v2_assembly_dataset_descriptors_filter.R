#' Create a new V2AssemblyDatasetDescriptorsFilter
#'
#' @description
#' V2AssemblyDatasetDescriptorsFilter Class
#'
#' @docType class
#' @title V2AssemblyDatasetDescriptorsFilter
#' @description V2AssemblyDatasetDescriptorsFilter Class
#' @format An \code{R6Class} generator object
#' @field reference_only  character [optional]
#' @field assembly_source  \link{V2AssemblyDatasetDescriptorsFilterAssemblySource} [optional]
#' @field has_annotation  character [optional]
#' @field exclude_paired_reports  character [optional]
#' @field exclude_atypical  character [optional]
#' @field assembly_version  \link{V2AssemblyDatasetDescriptorsFilterAssemblyVersion} [optional]
#' @field assembly_level  list(\link{V2reportsAssemblyLevel}) [optional]
#' @field first_release_date  character [optional]
#' @field last_release_date  character [optional]
#' @field search_text  list(character) [optional]
#' @field is_metagenome_derived  \link{V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter} [optional]
#' @field is_type_material  character [optional]
#' @field is_ictv_exemplar  character [optional]
#' @field exclude_multi_isolate  character [optional]
#' @field type_material_category  \link{V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyDatasetDescriptorsFilter <- R6::R6Class(
  "V2AssemblyDatasetDescriptorsFilter",
  public = list(
    `reference_only` = NULL,
    `assembly_source` = NULL,
    `has_annotation` = NULL,
    `exclude_paired_reports` = NULL,
    `exclude_atypical` = NULL,
    `assembly_version` = NULL,
    `assembly_level` = NULL,
    `first_release_date` = NULL,
    `last_release_date` = NULL,
    `search_text` = NULL,
    `is_metagenome_derived` = NULL,
    `is_type_material` = NULL,
    `is_ictv_exemplar` = NULL,
    `exclude_multi_isolate` = NULL,
    `type_material_category` = NULL,

    #' @description
    #' Initialize a new V2AssemblyDatasetDescriptorsFilter class.
    #'
    #' @param reference_only reference_only
    #' @param assembly_source assembly_source
    #' @param has_annotation has_annotation
    #' @param exclude_paired_reports exclude_paired_reports
    #' @param exclude_atypical exclude_atypical
    #' @param assembly_version assembly_version
    #' @param assembly_level assembly_level
    #' @param first_release_date first_release_date
    #' @param last_release_date last_release_date
    #' @param search_text search_text
    #' @param is_metagenome_derived is_metagenome_derived
    #' @param is_type_material is_type_material
    #' @param is_ictv_exemplar is_ictv_exemplar
    #' @param exclude_multi_isolate exclude_multi_isolate
    #' @param type_material_category type_material_category
    #' @param ... Other optional arguments.
    initialize = function(`reference_only` = NULL, `assembly_source` = NULL, `has_annotation` = NULL, `exclude_paired_reports` = NULL, `exclude_atypical` = NULL, `assembly_version` = NULL, `assembly_level` = NULL, `first_release_date` = NULL, `last_release_date` = NULL, `search_text` = NULL, `is_metagenome_derived` = NULL, `is_type_material` = NULL, `is_ictv_exemplar` = NULL, `exclude_multi_isolate` = NULL, `type_material_category` = NULL, ...) {
      if (!is.null(`reference_only`)) {
        if (!(is.logical(`reference_only`) && length(`reference_only`) == 1)) {
          stop(paste("Error! Invalid data for `reference_only`. Must be a boolean:", `reference_only`))
        }
        self$`reference_only` <- `reference_only`
      }
      if (!is.null(`assembly_source`)) {
        if (!(`assembly_source` %in% c())) {
          stop(paste("Error! \"", `assembly_source`, "\" cannot be assigned to `assembly_source`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_source`))
        self$`assembly_source` <- `assembly_source`
      }
      if (!is.null(`has_annotation`)) {
        if (!(is.logical(`has_annotation`) && length(`has_annotation`) == 1)) {
          stop(paste("Error! Invalid data for `has_annotation`. Must be a boolean:", `has_annotation`))
        }
        self$`has_annotation` <- `has_annotation`
      }
      if (!is.null(`exclude_paired_reports`)) {
        if (!(is.logical(`exclude_paired_reports`) && length(`exclude_paired_reports`) == 1)) {
          stop(paste("Error! Invalid data for `exclude_paired_reports`. Must be a boolean:", `exclude_paired_reports`))
        }
        self$`exclude_paired_reports` <- `exclude_paired_reports`
      }
      if (!is.null(`exclude_atypical`)) {
        if (!(is.logical(`exclude_atypical`) && length(`exclude_atypical`) == 1)) {
          stop(paste("Error! Invalid data for `exclude_atypical`. Must be a boolean:", `exclude_atypical`))
        }
        self$`exclude_atypical` <- `exclude_atypical`
      }
      if (!is.null(`assembly_version`)) {
        if (!(`assembly_version` %in% c())) {
          stop(paste("Error! \"", `assembly_version`, "\" cannot be assigned to `assembly_version`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_version`))
        self$`assembly_version` <- `assembly_version`
      }
      if (!is.null(`assembly_level`)) {
        stopifnot(is.vector(`assembly_level`), length(`assembly_level`) != 0)
        sapply(`assembly_level`, function(x) stopifnot(R6::is.R6(x)))
        self$`assembly_level` <- `assembly_level`
      }
      if (!is.null(`first_release_date`)) {
        if (!is.character(`first_release_date`)) {
          stop(paste("Error! Invalid data for `first_release_date`. Must be a string:", `first_release_date`))
        }
        self$`first_release_date` <- `first_release_date`
      }
      if (!is.null(`last_release_date`)) {
        if (!is.character(`last_release_date`)) {
          stop(paste("Error! Invalid data for `last_release_date`. Must be a string:", `last_release_date`))
        }
        self$`last_release_date` <- `last_release_date`
      }
      if (!is.null(`search_text`)) {
        stopifnot(is.vector(`search_text`), length(`search_text`) != 0)
        sapply(`search_text`, function(x) stopifnot(is.character(x)))
        self$`search_text` <- `search_text`
      }
      if (!is.null(`is_metagenome_derived`)) {
        if (!(`is_metagenome_derived` %in% c())) {
          stop(paste("Error! \"", `is_metagenome_derived`, "\" cannot be assigned to `is_metagenome_derived`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`is_metagenome_derived`))
        self$`is_metagenome_derived` <- `is_metagenome_derived`
      }
      if (!is.null(`is_type_material`)) {
        if (!(is.logical(`is_type_material`) && length(`is_type_material`) == 1)) {
          stop(paste("Error! Invalid data for `is_type_material`. Must be a boolean:", `is_type_material`))
        }
        self$`is_type_material` <- `is_type_material`
      }
      if (!is.null(`is_ictv_exemplar`)) {
        if (!(is.logical(`is_ictv_exemplar`) && length(`is_ictv_exemplar`) == 1)) {
          stop(paste("Error! Invalid data for `is_ictv_exemplar`. Must be a boolean:", `is_ictv_exemplar`))
        }
        self$`is_ictv_exemplar` <- `is_ictv_exemplar`
      }
      if (!is.null(`exclude_multi_isolate`)) {
        if (!(is.logical(`exclude_multi_isolate`) && length(`exclude_multi_isolate`) == 1)) {
          stop(paste("Error! Invalid data for `exclude_multi_isolate`. Must be a boolean:", `exclude_multi_isolate`))
        }
        self$`exclude_multi_isolate` <- `exclude_multi_isolate`
      }
      if (!is.null(`type_material_category`)) {
        if (!(`type_material_category` %in% c())) {
          stop(paste("Error! \"", `type_material_category`, "\" cannot be assigned to `type_material_category`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type_material_category`))
        self$`type_material_category` <- `type_material_category`
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
    #' @return V2AssemblyDatasetDescriptorsFilter as a base R list.
    #' @examples
    #' # convert array of V2AssemblyDatasetDescriptorsFilter (x) to a data frame
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
    #' Convert V2AssemblyDatasetDescriptorsFilter to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyDatasetDescriptorsFilterObject <- list()
      if (!is.null(self$`reference_only`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["reference_only"]] <-
          self$`reference_only`
      }
      if (!is.null(self$`assembly_source`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["assembly_source"]] <-
          self$`assembly_source`$toSimpleType()
      }
      if (!is.null(self$`has_annotation`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["has_annotation"]] <-
          self$`has_annotation`
      }
      if (!is.null(self$`exclude_paired_reports`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["exclude_paired_reports"]] <-
          self$`exclude_paired_reports`
      }
      if (!is.null(self$`exclude_atypical`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["exclude_atypical"]] <-
          self$`exclude_atypical`
      }
      if (!is.null(self$`assembly_version`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["assembly_version"]] <-
          self$`assembly_version`$toSimpleType()
      }
      if (!is.null(self$`assembly_level`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["assembly_level"]] <-
          lapply(self$`assembly_level`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`first_release_date`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["first_release_date"]] <-
          self$`first_release_date`
      }
      if (!is.null(self$`last_release_date`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["last_release_date"]] <-
          self$`last_release_date`
      }
      if (!is.null(self$`search_text`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["search_text"]] <-
          self$`search_text`
      }
      if (!is.null(self$`is_metagenome_derived`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["is_metagenome_derived"]] <-
          self$`is_metagenome_derived`$toSimpleType()
      }
      if (!is.null(self$`is_type_material`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["is_type_material"]] <-
          self$`is_type_material`
      }
      if (!is.null(self$`is_ictv_exemplar`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["is_ictv_exemplar"]] <-
          self$`is_ictv_exemplar`
      }
      if (!is.null(self$`exclude_multi_isolate`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["exclude_multi_isolate"]] <-
          self$`exclude_multi_isolate`
      }
      if (!is.null(self$`type_material_category`)) {
        V2AssemblyDatasetDescriptorsFilterObject[["type_material_category"]] <-
          self$`type_material_category`$toSimpleType()
      }
      return(V2AssemblyDatasetDescriptorsFilterObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetDescriptorsFilter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetDescriptorsFilter
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`reference_only`)) {
        self$`reference_only` <- this_object$`reference_only`
      }
      if (!is.null(this_object$`assembly_source`)) {
        `assembly_source_object` <- V2AssemblyDatasetDescriptorsFilterAssemblySource$new()
        `assembly_source_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_source`, auto_unbox = TRUE, digits = NA))
        self$`assembly_source` <- `assembly_source_object`
      }
      if (!is.null(this_object$`has_annotation`)) {
        self$`has_annotation` <- this_object$`has_annotation`
      }
      if (!is.null(this_object$`exclude_paired_reports`)) {
        self$`exclude_paired_reports` <- this_object$`exclude_paired_reports`
      }
      if (!is.null(this_object$`exclude_atypical`)) {
        self$`exclude_atypical` <- this_object$`exclude_atypical`
      }
      if (!is.null(this_object$`assembly_version`)) {
        `assembly_version_object` <- V2AssemblyDatasetDescriptorsFilterAssemblyVersion$new()
        `assembly_version_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_version`, auto_unbox = TRUE, digits = NA))
        self$`assembly_version` <- `assembly_version_object`
      }
      if (!is.null(this_object$`assembly_level`)) {
        self$`assembly_level` <- ApiClient$new()$deserializeObj(this_object$`assembly_level`, "array[V2reportsAssemblyLevel]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`first_release_date`)) {
        self$`first_release_date` <- this_object$`first_release_date`
      }
      if (!is.null(this_object$`last_release_date`)) {
        self$`last_release_date` <- this_object$`last_release_date`
      }
      if (!is.null(this_object$`search_text`)) {
        self$`search_text` <- ApiClient$new()$deserializeObj(this_object$`search_text`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`is_metagenome_derived`)) {
        `is_metagenome_derived_object` <- V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new()
        `is_metagenome_derived_object`$fromJSON(jsonlite::toJSON(this_object$`is_metagenome_derived`, auto_unbox = TRUE, digits = NA))
        self$`is_metagenome_derived` <- `is_metagenome_derived_object`
      }
      if (!is.null(this_object$`is_type_material`)) {
        self$`is_type_material` <- this_object$`is_type_material`
      }
      if (!is.null(this_object$`is_ictv_exemplar`)) {
        self$`is_ictv_exemplar` <- this_object$`is_ictv_exemplar`
      }
      if (!is.null(this_object$`exclude_multi_isolate`)) {
        self$`exclude_multi_isolate` <- this_object$`exclude_multi_isolate`
      }
      if (!is.null(this_object$`type_material_category`)) {
        `type_material_category_object` <- V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new()
        `type_material_category_object`$fromJSON(jsonlite::toJSON(this_object$`type_material_category`, auto_unbox = TRUE, digits = NA))
        self$`type_material_category` <- `type_material_category_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyDatasetDescriptorsFilter in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyDatasetDescriptorsFilter
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyDatasetDescriptorsFilter
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`reference_only` <- this_object$`reference_only`
      self$`assembly_source` <- V2AssemblyDatasetDescriptorsFilterAssemblySource$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_source`, auto_unbox = TRUE, digits = NA))
      self$`has_annotation` <- this_object$`has_annotation`
      self$`exclude_paired_reports` <- this_object$`exclude_paired_reports`
      self$`exclude_atypical` <- this_object$`exclude_atypical`
      self$`assembly_version` <- V2AssemblyDatasetDescriptorsFilterAssemblyVersion$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_version`, auto_unbox = TRUE, digits = NA))
      self$`assembly_level` <- ApiClient$new()$deserializeObj(this_object$`assembly_level`, "array[V2reportsAssemblyLevel]", loadNamespace("ncbiopenapi"))
      self$`first_release_date` <- this_object$`first_release_date`
      self$`last_release_date` <- this_object$`last_release_date`
      self$`search_text` <- ApiClient$new()$deserializeObj(this_object$`search_text`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`is_metagenome_derived` <- V2AssemblyDatasetDescriptorsFilterMetagenomeDerivedFilter$new()$fromJSON(jsonlite::toJSON(this_object$`is_metagenome_derived`, auto_unbox = TRUE, digits = NA))
      self$`is_type_material` <- this_object$`is_type_material`
      self$`is_ictv_exemplar` <- this_object$`is_ictv_exemplar`
      self$`exclude_multi_isolate` <- this_object$`exclude_multi_isolate`
      self$`type_material_category` <- V2AssemblyDatasetDescriptorsFilterTypeMaterialCategory$new()$fromJSON(jsonlite::toJSON(this_object$`type_material_category`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyDatasetDescriptorsFilter and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyDatasetDescriptorsFilter
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
# V2AssemblyDatasetDescriptorsFilter$unlock()
#
## Below is an example to define the print function
# V2AssemblyDatasetDescriptorsFilter$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyDatasetDescriptorsFilter$lock()

