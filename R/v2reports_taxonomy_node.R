#' Create a new V2reportsTaxonomyNode
#'
#' @description
#' V2reportsTaxonomyNode Class
#'
#' @docType class
#' @title V2reportsTaxonomyNode
#' @description V2reportsTaxonomyNode Class
#' @format An \code{R6Class} generator object
#' @field tax_id  integer [optional]
#' @field rank  \link{V2reportsRankType} [optional]
#' @field current_scientific_name  \link{V2reportsNameAndAuthority} [optional]
#' @field basionym  \link{V2reportsNameAndAuthority} [optional]
#' @field curator_common_name  character [optional]
#' @field group_name  character [optional]
#' @field has_type_material  character [optional]
#' @field classification  \link{V2reportsClassification} [optional]
#' @field parents  list(integer) [optional]
#' @field children  list(integer) [optional]
#' @field counts  list(\link{V2reportsTaxonomyNodeCountByType}) [optional]
#' @field genomic_moltype  character [optional]
#' @field current_scientific_name_is_formal  character [optional]
#' @field secondary_tax_ids  list(integer) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsTaxonomyNode <- R6::R6Class(
  "V2reportsTaxonomyNode",
  public = list(
    `tax_id` = NULL,
    `rank` = NULL,
    `current_scientific_name` = NULL,
    `basionym` = NULL,
    `curator_common_name` = NULL,
    `group_name` = NULL,
    `has_type_material` = NULL,
    `classification` = NULL,
    `parents` = NULL,
    `children` = NULL,
    `counts` = NULL,
    `genomic_moltype` = NULL,
    `current_scientific_name_is_formal` = NULL,
    `secondary_tax_ids` = NULL,

    #' @description
    #' Initialize a new V2reportsTaxonomyNode class.
    #'
    #' @param tax_id tax_id
    #' @param rank rank
    #' @param current_scientific_name current_scientific_name
    #' @param basionym basionym
    #' @param curator_common_name curator_common_name
    #' @param group_name group_name
    #' @param has_type_material has_type_material
    #' @param classification classification
    #' @param parents parents
    #' @param children children
    #' @param counts counts
    #' @param genomic_moltype genomic_moltype
    #' @param current_scientific_name_is_formal current_scientific_name_is_formal
    #' @param secondary_tax_ids secondary_tax_ids
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `rank` = NULL, `current_scientific_name` = NULL, `basionym` = NULL, `curator_common_name` = NULL, `group_name` = NULL, `has_type_material` = NULL, `classification` = NULL, `parents` = NULL, `children` = NULL, `counts` = NULL, `genomic_moltype` = NULL, `current_scientific_name_is_formal` = NULL, `secondary_tax_ids` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.numeric(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be an integer:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`rank`)) {
        if (!(`rank` %in% c())) {
          stop(paste("Error! \"", `rank`, "\" cannot be assigned to `rank`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`rank`))
        self$`rank` <- `rank`
      }
      if (!is.null(`current_scientific_name`)) {
        stopifnot(R6::is.R6(`current_scientific_name`))
        self$`current_scientific_name` <- `current_scientific_name`
      }
      if (!is.null(`basionym`)) {
        stopifnot(R6::is.R6(`basionym`))
        self$`basionym` <- `basionym`
      }
      if (!is.null(`curator_common_name`)) {
        if (!(is.character(`curator_common_name`) && length(`curator_common_name`) == 1)) {
          stop(paste("Error! Invalid data for `curator_common_name`. Must be a string:", `curator_common_name`))
        }
        self$`curator_common_name` <- `curator_common_name`
      }
      if (!is.null(`group_name`)) {
        if (!(is.character(`group_name`) && length(`group_name`) == 1)) {
          stop(paste("Error! Invalid data for `group_name`. Must be a string:", `group_name`))
        }
        self$`group_name` <- `group_name`
      }
      if (!is.null(`has_type_material`)) {
        if (!(is.logical(`has_type_material`) && length(`has_type_material`) == 1)) {
          stop(paste("Error! Invalid data for `has_type_material`. Must be a boolean:", `has_type_material`))
        }
        self$`has_type_material` <- `has_type_material`
      }
      if (!is.null(`classification`)) {
        stopifnot(R6::is.R6(`classification`))
        self$`classification` <- `classification`
      }
      if (!is.null(`parents`)) {
        stopifnot(is.vector(`parents`), length(`parents`) != 0)
        sapply(`parents`, function(x) stopifnot(is.character(x)))
        self$`parents` <- `parents`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(is.character(x)))
        self$`children` <- `children`
      }
      if (!is.null(`counts`)) {
        stopifnot(is.vector(`counts`), length(`counts`) != 0)
        sapply(`counts`, function(x) stopifnot(R6::is.R6(x)))
        self$`counts` <- `counts`
      }
      if (!is.null(`genomic_moltype`)) {
        if (!(is.character(`genomic_moltype`) && length(`genomic_moltype`) == 1)) {
          stop(paste("Error! Invalid data for `genomic_moltype`. Must be a string:", `genomic_moltype`))
        }
        self$`genomic_moltype` <- `genomic_moltype`
      }
      if (!is.null(`current_scientific_name_is_formal`)) {
        if (!(is.logical(`current_scientific_name_is_formal`) && length(`current_scientific_name_is_formal`) == 1)) {
          stop(paste("Error! Invalid data for `current_scientific_name_is_formal`. Must be a boolean:", `current_scientific_name_is_formal`))
        }
        self$`current_scientific_name_is_formal` <- `current_scientific_name_is_formal`
      }
      if (!is.null(`secondary_tax_ids`)) {
        stopifnot(is.vector(`secondary_tax_ids`), length(`secondary_tax_ids`) != 0)
        sapply(`secondary_tax_ids`, function(x) stopifnot(is.character(x)))
        self$`secondary_tax_ids` <- `secondary_tax_ids`
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
    #' @return V2reportsTaxonomyNode as a base R list.
    #' @examples
    #' # convert array of V2reportsTaxonomyNode (x) to a data frame
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
    #' Convert V2reportsTaxonomyNode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsTaxonomyNodeObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2reportsTaxonomyNodeObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`rank`)) {
        V2reportsTaxonomyNodeObject[["rank"]] <-
          self$`rank`$toSimpleType()
      }
      if (!is.null(self$`current_scientific_name`)) {
        V2reportsTaxonomyNodeObject[["current_scientific_name"]] <-
          self$`current_scientific_name`$toSimpleType()
      }
      if (!is.null(self$`basionym`)) {
        V2reportsTaxonomyNodeObject[["basionym"]] <-
          self$`basionym`$toSimpleType()
      }
      if (!is.null(self$`curator_common_name`)) {
        V2reportsTaxonomyNodeObject[["curator_common_name"]] <-
          self$`curator_common_name`
      }
      if (!is.null(self$`group_name`)) {
        V2reportsTaxonomyNodeObject[["group_name"]] <-
          self$`group_name`
      }
      if (!is.null(self$`has_type_material`)) {
        V2reportsTaxonomyNodeObject[["has_type_material"]] <-
          self$`has_type_material`
      }
      if (!is.null(self$`classification`)) {
        V2reportsTaxonomyNodeObject[["classification"]] <-
          self$`classification`$toSimpleType()
      }
      if (!is.null(self$`parents`)) {
        V2reportsTaxonomyNodeObject[["parents"]] <-
          self$`parents`
      }
      if (!is.null(self$`children`)) {
        V2reportsTaxonomyNodeObject[["children"]] <-
          self$`children`
      }
      if (!is.null(self$`counts`)) {
        V2reportsTaxonomyNodeObject[["counts"]] <-
          lapply(self$`counts`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`genomic_moltype`)) {
        V2reportsTaxonomyNodeObject[["genomic_moltype"]] <-
          self$`genomic_moltype`
      }
      if (!is.null(self$`current_scientific_name_is_formal`)) {
        V2reportsTaxonomyNodeObject[["current_scientific_name_is_formal"]] <-
          self$`current_scientific_name_is_formal`
      }
      if (!is.null(self$`secondary_tax_ids`)) {
        V2reportsTaxonomyNodeObject[["secondary_tax_ids"]] <-
          self$`secondary_tax_ids`
      }
      return(V2reportsTaxonomyNodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyNode
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`rank`)) {
        `rank_object` <- V2reportsRankType$new()
        `rank_object`$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
        self$`rank` <- `rank_object`
      }
      if (!is.null(this_object$`current_scientific_name`)) {
        `current_scientific_name_object` <- V2reportsNameAndAuthority$new()
        `current_scientific_name_object`$fromJSON(jsonlite::toJSON(this_object$`current_scientific_name`, auto_unbox = TRUE, digits = NA))
        self$`current_scientific_name` <- `current_scientific_name_object`
      }
      if (!is.null(this_object$`basionym`)) {
        `basionym_object` <- V2reportsNameAndAuthority$new()
        `basionym_object`$fromJSON(jsonlite::toJSON(this_object$`basionym`, auto_unbox = TRUE, digits = NA))
        self$`basionym` <- `basionym_object`
      }
      if (!is.null(this_object$`curator_common_name`)) {
        self$`curator_common_name` <- this_object$`curator_common_name`
      }
      if (!is.null(this_object$`group_name`)) {
        self$`group_name` <- this_object$`group_name`
      }
      if (!is.null(this_object$`has_type_material`)) {
        self$`has_type_material` <- this_object$`has_type_material`
      }
      if (!is.null(this_object$`classification`)) {
        `classification_object` <- V2reportsClassification$new()
        `classification_object`$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
        self$`classification` <- `classification_object`
      }
      if (!is.null(this_object$`parents`)) {
        self$`parents` <- ApiClient$new()$deserializeObj(this_object$`parents`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`counts`)) {
        self$`counts` <- ApiClient$new()$deserializeObj(this_object$`counts`, "array[V2reportsTaxonomyNodeCountByType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`genomic_moltype`)) {
        self$`genomic_moltype` <- this_object$`genomic_moltype`
      }
      if (!is.null(this_object$`current_scientific_name_is_formal`)) {
        self$`current_scientific_name_is_formal` <- this_object$`current_scientific_name_is_formal`
      }
      if (!is.null(this_object$`secondary_tax_ids`)) {
        self$`secondary_tax_ids` <- ApiClient$new()$deserializeObj(this_object$`secondary_tax_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsTaxonomyNode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyNode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`rank` <- V2reportsRankType$new()$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
      self$`current_scientific_name` <- V2reportsNameAndAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`current_scientific_name`, auto_unbox = TRUE, digits = NA))
      self$`basionym` <- V2reportsNameAndAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`basionym`, auto_unbox = TRUE, digits = NA))
      self$`curator_common_name` <- this_object$`curator_common_name`
      self$`group_name` <- this_object$`group_name`
      self$`has_type_material` <- this_object$`has_type_material`
      self$`classification` <- V2reportsClassification$new()$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
      self$`parents` <- ApiClient$new()$deserializeObj(this_object$`parents`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`counts` <- ApiClient$new()$deserializeObj(this_object$`counts`, "array[V2reportsTaxonomyNodeCountByType]", loadNamespace("ncbiopenapi"))
      self$`genomic_moltype` <- this_object$`genomic_moltype`
      self$`current_scientific_name_is_formal` <- this_object$`current_scientific_name_is_formal`
      self$`secondary_tax_ids` <- ApiClient$new()$deserializeObj(this_object$`secondary_tax_ids`, "array[integer]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsTaxonomyNode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsTaxonomyNode
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
# V2reportsTaxonomyNode$unlock()
#
## Below is an example to define the print function
# V2reportsTaxonomyNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsTaxonomyNode$lock()

