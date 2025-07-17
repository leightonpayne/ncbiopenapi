#' Create a new V2reportsOrganism
#'
#' @description
#' V2reportsOrganism Class
#'
#' @docType class
#' @title V2reportsOrganism
#' @description V2reportsOrganism Class
#' @format An \code{R6Class} generator object
#' @field tax_id  integer [optional]
#' @field sci_name  character [optional]
#' @field organism_name  character [optional]
#' @field common_name  character [optional]
#' @field lineage  list(\link{V2reportsLineageOrganism}) [optional]
#' @field strain  character [optional]
#' @field pangolin_classification  character [optional]
#' @field infraspecific_names  \link{V2reportsInfraspecificNames} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsOrganism <- R6::R6Class(
  "V2reportsOrganism",
  public = list(
    `tax_id` = NULL,
    `sci_name` = NULL,
    `organism_name` = NULL,
    `common_name` = NULL,
    `lineage` = NULL,
    `strain` = NULL,
    `pangolin_classification` = NULL,
    `infraspecific_names` = NULL,

    #' @description
    #' Initialize a new V2reportsOrganism class.
    #'
    #' @param tax_id tax_id
    #' @param sci_name sci_name
    #' @param organism_name organism_name
    #' @param common_name common_name
    #' @param lineage lineage
    #' @param strain strain
    #' @param pangolin_classification pangolin_classification
    #' @param infraspecific_names infraspecific_names
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `sci_name` = NULL, `organism_name` = NULL, `common_name` = NULL, `lineage` = NULL, `strain` = NULL, `pangolin_classification` = NULL, `infraspecific_names` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.numeric(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be an integer:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`sci_name`)) {
        if (!(is.character(`sci_name`) && length(`sci_name`) == 1)) {
          stop(paste("Error! Invalid data for `sci_name`. Must be a string:", `sci_name`))
        }
        self$`sci_name` <- `sci_name`
      }
      if (!is.null(`organism_name`)) {
        if (!(is.character(`organism_name`) && length(`organism_name`) == 1)) {
          stop(paste("Error! Invalid data for `organism_name`. Must be a string:", `organism_name`))
        }
        self$`organism_name` <- `organism_name`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
      }
      if (!is.null(`lineage`)) {
        stopifnot(is.vector(`lineage`), length(`lineage`) != 0)
        sapply(`lineage`, function(x) stopifnot(R6::is.R6(x)))
        self$`lineage` <- `lineage`
      }
      if (!is.null(`strain`)) {
        if (!(is.character(`strain`) && length(`strain`) == 1)) {
          stop(paste("Error! Invalid data for `strain`. Must be a string:", `strain`))
        }
        self$`strain` <- `strain`
      }
      if (!is.null(`pangolin_classification`)) {
        if (!(is.character(`pangolin_classification`) && length(`pangolin_classification`) == 1)) {
          stop(paste("Error! Invalid data for `pangolin_classification`. Must be a string:", `pangolin_classification`))
        }
        self$`pangolin_classification` <- `pangolin_classification`
      }
      if (!is.null(`infraspecific_names`)) {
        stopifnot(R6::is.R6(`infraspecific_names`))
        self$`infraspecific_names` <- `infraspecific_names`
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
    #' @return V2reportsOrganism as a base R list.
    #' @examples
    #' # convert array of V2reportsOrganism (x) to a data frame
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
    #' Convert V2reportsOrganism to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsOrganismObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2reportsOrganismObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`sci_name`)) {
        V2reportsOrganismObject[["sci_name"]] <-
          self$`sci_name`
      }
      if (!is.null(self$`organism_name`)) {
        V2reportsOrganismObject[["organism_name"]] <-
          self$`organism_name`
      }
      if (!is.null(self$`common_name`)) {
        V2reportsOrganismObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`lineage`)) {
        V2reportsOrganismObject[["lineage"]] <-
          lapply(self$`lineage`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`strain`)) {
        V2reportsOrganismObject[["strain"]] <-
          self$`strain`
      }
      if (!is.null(self$`pangolin_classification`)) {
        V2reportsOrganismObject[["pangolin_classification"]] <-
          self$`pangolin_classification`
      }
      if (!is.null(self$`infraspecific_names`)) {
        V2reportsOrganismObject[["infraspecific_names"]] <-
          self$`infraspecific_names`$toSimpleType()
      }
      return(V2reportsOrganismObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganism
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganism
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`sci_name`)) {
        self$`sci_name` <- this_object$`sci_name`
      }
      if (!is.null(this_object$`organism_name`)) {
        self$`organism_name` <- this_object$`organism_name`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`lineage`)) {
        self$`lineage` <- ApiClient$new()$deserializeObj(this_object$`lineage`, "array[V2reportsLineageOrganism]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`strain`)) {
        self$`strain` <- this_object$`strain`
      }
      if (!is.null(this_object$`pangolin_classification`)) {
        self$`pangolin_classification` <- this_object$`pangolin_classification`
      }
      if (!is.null(this_object$`infraspecific_names`)) {
        `infraspecific_names_object` <- V2reportsInfraspecificNames$new()
        `infraspecific_names_object`$fromJSON(jsonlite::toJSON(this_object$`infraspecific_names`, auto_unbox = TRUE, digits = NA))
        self$`infraspecific_names` <- `infraspecific_names_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsOrganism in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganism
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganism
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`sci_name` <- this_object$`sci_name`
      self$`organism_name` <- this_object$`organism_name`
      self$`common_name` <- this_object$`common_name`
      self$`lineage` <- ApiClient$new()$deserializeObj(this_object$`lineage`, "array[V2reportsLineageOrganism]", loadNamespace("ncbiopenapi"))
      self$`strain` <- this_object$`strain`
      self$`pangolin_classification` <- this_object$`pangolin_classification`
      self$`infraspecific_names` <- V2reportsInfraspecificNames$new()$fromJSON(jsonlite::toJSON(this_object$`infraspecific_names`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsOrganism and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsOrganism
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
# V2reportsOrganism$unlock()
#
## Below is an example to define the print function
# V2reportsOrganism$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsOrganism$lock()

