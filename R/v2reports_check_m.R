#' Create a new V2reportsCheckM
#'
#' @description
#' V2reportsCheckM Class
#'
#' @docType class
#' @title V2reportsCheckM
#' @description V2reportsCheckM Class
#' @format An \code{R6Class} generator object
#' @field checkm_marker_set  character [optional]
#' @field checkm_species_tax_id  integer [optional]
#' @field checkm_marker_set_rank  character [optional]
#' @field checkm_version  character [optional]
#' @field completeness  numeric [optional]
#' @field contamination  numeric [optional]
#' @field completeness_percentile  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsCheckM <- R6::R6Class(
  "V2reportsCheckM",
  public = list(
    `checkm_marker_set` = NULL,
    `checkm_species_tax_id` = NULL,
    `checkm_marker_set_rank` = NULL,
    `checkm_version` = NULL,
    `completeness` = NULL,
    `contamination` = NULL,
    `completeness_percentile` = NULL,

    #' @description
    #' Initialize a new V2reportsCheckM class.
    #'
    #' @param checkm_marker_set checkm_marker_set
    #' @param checkm_species_tax_id checkm_species_tax_id
    #' @param checkm_marker_set_rank checkm_marker_set_rank
    #' @param checkm_version checkm_version
    #' @param completeness completeness
    #' @param contamination contamination
    #' @param completeness_percentile completeness_percentile
    #' @param ... Other optional arguments.
    initialize = function(`checkm_marker_set` = NULL, `checkm_species_tax_id` = NULL, `checkm_marker_set_rank` = NULL, `checkm_version` = NULL, `completeness` = NULL, `contamination` = NULL, `completeness_percentile` = NULL, ...) {
      if (!is.null(`checkm_marker_set`)) {
        if (!(is.character(`checkm_marker_set`) && length(`checkm_marker_set`) == 1)) {
          stop(paste("Error! Invalid data for `checkm_marker_set`. Must be a string:", `checkm_marker_set`))
        }
        self$`checkm_marker_set` <- `checkm_marker_set`
      }
      if (!is.null(`checkm_species_tax_id`)) {
        if (!(is.numeric(`checkm_species_tax_id`) && length(`checkm_species_tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `checkm_species_tax_id`. Must be an integer:", `checkm_species_tax_id`))
        }
        self$`checkm_species_tax_id` <- `checkm_species_tax_id`
      }
      if (!is.null(`checkm_marker_set_rank`)) {
        if (!(is.character(`checkm_marker_set_rank`) && length(`checkm_marker_set_rank`) == 1)) {
          stop(paste("Error! Invalid data for `checkm_marker_set_rank`. Must be a string:", `checkm_marker_set_rank`))
        }
        self$`checkm_marker_set_rank` <- `checkm_marker_set_rank`
      }
      if (!is.null(`checkm_version`)) {
        if (!(is.character(`checkm_version`) && length(`checkm_version`) == 1)) {
          stop(paste("Error! Invalid data for `checkm_version`. Must be a string:", `checkm_version`))
        }
        self$`checkm_version` <- `checkm_version`
      }
      if (!is.null(`completeness`)) {
        if (!(is.numeric(`completeness`) && length(`completeness`) == 1)) {
          stop(paste("Error! Invalid data for `completeness`. Must be a number:", `completeness`))
        }
        self$`completeness` <- `completeness`
      }
      if (!is.null(`contamination`)) {
        if (!(is.numeric(`contamination`) && length(`contamination`) == 1)) {
          stop(paste("Error! Invalid data for `contamination`. Must be a number:", `contamination`))
        }
        self$`contamination` <- `contamination`
      }
      if (!is.null(`completeness_percentile`)) {
        if (!(is.numeric(`completeness_percentile`) && length(`completeness_percentile`) == 1)) {
          stop(paste("Error! Invalid data for `completeness_percentile`. Must be a number:", `completeness_percentile`))
        }
        self$`completeness_percentile` <- `completeness_percentile`
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
    #' @return V2reportsCheckM as a base R list.
    #' @examples
    #' # convert array of V2reportsCheckM (x) to a data frame
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
    #' Convert V2reportsCheckM to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsCheckMObject <- list()
      if (!is.null(self$`checkm_marker_set`)) {
        V2reportsCheckMObject[["checkm_marker_set"]] <-
          self$`checkm_marker_set`
      }
      if (!is.null(self$`checkm_species_tax_id`)) {
        V2reportsCheckMObject[["checkm_species_tax_id"]] <-
          self$`checkm_species_tax_id`
      }
      if (!is.null(self$`checkm_marker_set_rank`)) {
        V2reportsCheckMObject[["checkm_marker_set_rank"]] <-
          self$`checkm_marker_set_rank`
      }
      if (!is.null(self$`checkm_version`)) {
        V2reportsCheckMObject[["checkm_version"]] <-
          self$`checkm_version`
      }
      if (!is.null(self$`completeness`)) {
        V2reportsCheckMObject[["completeness"]] <-
          self$`completeness`
      }
      if (!is.null(self$`contamination`)) {
        V2reportsCheckMObject[["contamination"]] <-
          self$`contamination`
      }
      if (!is.null(self$`completeness_percentile`)) {
        V2reportsCheckMObject[["completeness_percentile"]] <-
          self$`completeness_percentile`
      }
      return(V2reportsCheckMObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsCheckM
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsCheckM
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`checkm_marker_set`)) {
        self$`checkm_marker_set` <- this_object$`checkm_marker_set`
      }
      if (!is.null(this_object$`checkm_species_tax_id`)) {
        self$`checkm_species_tax_id` <- this_object$`checkm_species_tax_id`
      }
      if (!is.null(this_object$`checkm_marker_set_rank`)) {
        self$`checkm_marker_set_rank` <- this_object$`checkm_marker_set_rank`
      }
      if (!is.null(this_object$`checkm_version`)) {
        self$`checkm_version` <- this_object$`checkm_version`
      }
      if (!is.null(this_object$`completeness`)) {
        self$`completeness` <- this_object$`completeness`
      }
      if (!is.null(this_object$`contamination`)) {
        self$`contamination` <- this_object$`contamination`
      }
      if (!is.null(this_object$`completeness_percentile`)) {
        self$`completeness_percentile` <- this_object$`completeness_percentile`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsCheckM in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsCheckM
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsCheckM
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`checkm_marker_set` <- this_object$`checkm_marker_set`
      self$`checkm_species_tax_id` <- this_object$`checkm_species_tax_id`
      self$`checkm_marker_set_rank` <- this_object$`checkm_marker_set_rank`
      self$`checkm_version` <- this_object$`checkm_version`
      self$`completeness` <- this_object$`completeness`
      self$`contamination` <- this_object$`contamination`
      self$`completeness_percentile` <- this_object$`completeness_percentile`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsCheckM and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsCheckM
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
# V2reportsCheckM$unlock()
#
## Below is an example to define the print function
# V2reportsCheckM$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsCheckM$lock()

