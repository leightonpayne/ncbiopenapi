#' Create a new V2reportsTaxonomyNamesDescriptor
#'
#' @description
#' V2reportsTaxonomyNamesDescriptor Class
#'
#' @docType class
#' @title V2reportsTaxonomyNamesDescriptor
#' @description V2reportsTaxonomyNamesDescriptor Class
#' @format An \code{R6Class} generator object
#' @field tax_id  character [optional]
#' @field rank  \link{V2reportsRankType} [optional]
#' @field current_scientific_name  \link{V2reportsNameAndAuthority} [optional]
#' @field group_name  character [optional]
#' @field curator_common_name  character [optional]
#' @field other_common_names  list(character) [optional]
#' @field general_notes  list(character) [optional]
#' @field links_from_type  character [optional]
#' @field citations  list(\link{V2reportsTaxonomyNamesDescriptorCitation}) [optional]
#' @field current_scientific_name_is_formal  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsTaxonomyNamesDescriptor <- R6::R6Class(
  "V2reportsTaxonomyNamesDescriptor",
  public = list(
    `tax_id` = NULL,
    `rank` = NULL,
    `current_scientific_name` = NULL,
    `group_name` = NULL,
    `curator_common_name` = NULL,
    `other_common_names` = NULL,
    `general_notes` = NULL,
    `links_from_type` = NULL,
    `citations` = NULL,
    `current_scientific_name_is_formal` = NULL,

    #' @description
    #' Initialize a new V2reportsTaxonomyNamesDescriptor class.
    #'
    #' @param tax_id tax_id
    #' @param rank rank
    #' @param current_scientific_name current_scientific_name
    #' @param group_name group_name
    #' @param curator_common_name curator_common_name
    #' @param other_common_names other_common_names
    #' @param general_notes general_notes
    #' @param links_from_type links_from_type
    #' @param citations citations
    #' @param current_scientific_name_is_formal current_scientific_name_is_formal
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `rank` = NULL, `current_scientific_name` = NULL, `group_name` = NULL, `curator_common_name` = NULL, `other_common_names` = NULL, `general_notes` = NULL, `links_from_type` = NULL, `citations` = NULL, `current_scientific_name_is_formal` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.character(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be a string:", `tax_id`))
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
      if (!is.null(`group_name`)) {
        if (!(is.character(`group_name`) && length(`group_name`) == 1)) {
          stop(paste("Error! Invalid data for `group_name`. Must be a string:", `group_name`))
        }
        self$`group_name` <- `group_name`
      }
      if (!is.null(`curator_common_name`)) {
        if (!(is.character(`curator_common_name`) && length(`curator_common_name`) == 1)) {
          stop(paste("Error! Invalid data for `curator_common_name`. Must be a string:", `curator_common_name`))
        }
        self$`curator_common_name` <- `curator_common_name`
      }
      if (!is.null(`other_common_names`)) {
        stopifnot(is.vector(`other_common_names`), length(`other_common_names`) != 0)
        sapply(`other_common_names`, function(x) stopifnot(is.character(x)))
        self$`other_common_names` <- `other_common_names`
      }
      if (!is.null(`general_notes`)) {
        stopifnot(is.vector(`general_notes`), length(`general_notes`) != 0)
        sapply(`general_notes`, function(x) stopifnot(is.character(x)))
        self$`general_notes` <- `general_notes`
      }
      if (!is.null(`links_from_type`)) {
        if (!(is.character(`links_from_type`) && length(`links_from_type`) == 1)) {
          stop(paste("Error! Invalid data for `links_from_type`. Must be a string:", `links_from_type`))
        }
        self$`links_from_type` <- `links_from_type`
      }
      if (!is.null(`citations`)) {
        stopifnot(is.vector(`citations`), length(`citations`) != 0)
        sapply(`citations`, function(x) stopifnot(R6::is.R6(x)))
        self$`citations` <- `citations`
      }
      if (!is.null(`current_scientific_name_is_formal`)) {
        if (!(is.logical(`current_scientific_name_is_formal`) && length(`current_scientific_name_is_formal`) == 1)) {
          stop(paste("Error! Invalid data for `current_scientific_name_is_formal`. Must be a boolean:", `current_scientific_name_is_formal`))
        }
        self$`current_scientific_name_is_formal` <- `current_scientific_name_is_formal`
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
    #' @return V2reportsTaxonomyNamesDescriptor as a base R list.
    #' @examples
    #' # convert array of V2reportsTaxonomyNamesDescriptor (x) to a data frame
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
    #' Convert V2reportsTaxonomyNamesDescriptor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsTaxonomyNamesDescriptorObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2reportsTaxonomyNamesDescriptorObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`rank`)) {
        V2reportsTaxonomyNamesDescriptorObject[["rank"]] <-
          self$`rank`$toSimpleType()
      }
      if (!is.null(self$`current_scientific_name`)) {
        V2reportsTaxonomyNamesDescriptorObject[["current_scientific_name"]] <-
          self$`current_scientific_name`$toSimpleType()
      }
      if (!is.null(self$`group_name`)) {
        V2reportsTaxonomyNamesDescriptorObject[["group_name"]] <-
          self$`group_name`
      }
      if (!is.null(self$`curator_common_name`)) {
        V2reportsTaxonomyNamesDescriptorObject[["curator_common_name"]] <-
          self$`curator_common_name`
      }
      if (!is.null(self$`other_common_names`)) {
        V2reportsTaxonomyNamesDescriptorObject[["other_common_names"]] <-
          self$`other_common_names`
      }
      if (!is.null(self$`general_notes`)) {
        V2reportsTaxonomyNamesDescriptorObject[["general_notes"]] <-
          self$`general_notes`
      }
      if (!is.null(self$`links_from_type`)) {
        V2reportsTaxonomyNamesDescriptorObject[["links_from_type"]] <-
          self$`links_from_type`
      }
      if (!is.null(self$`citations`)) {
        V2reportsTaxonomyNamesDescriptorObject[["citations"]] <-
          lapply(self$`citations`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`current_scientific_name_is_formal`)) {
        V2reportsTaxonomyNamesDescriptorObject[["current_scientific_name_is_formal"]] <-
          self$`current_scientific_name_is_formal`
      }
      return(V2reportsTaxonomyNamesDescriptorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyNamesDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyNamesDescriptor
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
      if (!is.null(this_object$`group_name`)) {
        self$`group_name` <- this_object$`group_name`
      }
      if (!is.null(this_object$`curator_common_name`)) {
        self$`curator_common_name` <- this_object$`curator_common_name`
      }
      if (!is.null(this_object$`other_common_names`)) {
        self$`other_common_names` <- ApiClient$new()$deserializeObj(this_object$`other_common_names`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`general_notes`)) {
        self$`general_notes` <- ApiClient$new()$deserializeObj(this_object$`general_notes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`links_from_type`)) {
        self$`links_from_type` <- this_object$`links_from_type`
      }
      if (!is.null(this_object$`citations`)) {
        self$`citations` <- ApiClient$new()$deserializeObj(this_object$`citations`, "array[V2reportsTaxonomyNamesDescriptorCitation]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`current_scientific_name_is_formal`)) {
        self$`current_scientific_name_is_formal` <- this_object$`current_scientific_name_is_formal`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsTaxonomyNamesDescriptor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyNamesDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyNamesDescriptor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`rank` <- V2reportsRankType$new()$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
      self$`current_scientific_name` <- V2reportsNameAndAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`current_scientific_name`, auto_unbox = TRUE, digits = NA))
      self$`group_name` <- this_object$`group_name`
      self$`curator_common_name` <- this_object$`curator_common_name`
      self$`other_common_names` <- ApiClient$new()$deserializeObj(this_object$`other_common_names`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`general_notes` <- ApiClient$new()$deserializeObj(this_object$`general_notes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`links_from_type` <- this_object$`links_from_type`
      self$`citations` <- ApiClient$new()$deserializeObj(this_object$`citations`, "array[V2reportsTaxonomyNamesDescriptorCitation]", loadNamespace("ncbiopenapi"))
      self$`current_scientific_name_is_formal` <- this_object$`current_scientific_name_is_formal`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsTaxonomyNamesDescriptor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsTaxonomyNamesDescriptor
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
# V2reportsTaxonomyNamesDescriptor$unlock()
#
## Below is an example to define the print function
# V2reportsTaxonomyNamesDescriptor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsTaxonomyNamesDescriptor$lock()

