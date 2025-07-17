#' Create a new V2reportsANIMatch
#'
#' @description
#' V2reportsANIMatch Class
#'
#' @docType class
#' @title V2reportsANIMatch
#' @description V2reportsANIMatch Class
#' @format An \code{R6Class} generator object
#' @field assembly  character [optional]
#' @field organism_name  character [optional]
#' @field category  \link{V2reportsANITypeCategory} [optional]
#' @field ani  numeric [optional]
#' @field assembly_coverage  numeric [optional]
#' @field type_assembly_coverage  numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsANIMatch <- R6::R6Class(
  "V2reportsANIMatch",
  public = list(
    `assembly` = NULL,
    `organism_name` = NULL,
    `category` = NULL,
    `ani` = NULL,
    `assembly_coverage` = NULL,
    `type_assembly_coverage` = NULL,

    #' @description
    #' Initialize a new V2reportsANIMatch class.
    #'
    #' @param assembly assembly
    #' @param organism_name organism_name
    #' @param category category
    #' @param ani ani
    #' @param assembly_coverage assembly_coverage
    #' @param type_assembly_coverage type_assembly_coverage
    #' @param ... Other optional arguments.
    initialize = function(`assembly` = NULL, `organism_name` = NULL, `category` = NULL, `ani` = NULL, `assembly_coverage` = NULL, `type_assembly_coverage` = NULL, ...) {
      if (!is.null(`assembly`)) {
        if (!(is.character(`assembly`) && length(`assembly`) == 1)) {
          stop(paste("Error! Invalid data for `assembly`. Must be a string:", `assembly`))
        }
        self$`assembly` <- `assembly`
      }
      if (!is.null(`organism_name`)) {
        if (!(is.character(`organism_name`) && length(`organism_name`) == 1)) {
          stop(paste("Error! Invalid data for `organism_name`. Must be a string:", `organism_name`))
        }
        self$`organism_name` <- `organism_name`
      }
      if (!is.null(`category`)) {
        if (!(`category` %in% c())) {
          stop(paste("Error! \"", `category`, "\" cannot be assigned to `category`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`category`))
        self$`category` <- `category`
      }
      if (!is.null(`ani`)) {
        if (!(is.numeric(`ani`) && length(`ani`) == 1)) {
          stop(paste("Error! Invalid data for `ani`. Must be a number:", `ani`))
        }
        self$`ani` <- `ani`
      }
      if (!is.null(`assembly_coverage`)) {
        if (!(is.numeric(`assembly_coverage`) && length(`assembly_coverage`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_coverage`. Must be a number:", `assembly_coverage`))
        }
        self$`assembly_coverage` <- `assembly_coverage`
      }
      if (!is.null(`type_assembly_coverage`)) {
        if (!(is.numeric(`type_assembly_coverage`) && length(`type_assembly_coverage`) == 1)) {
          stop(paste("Error! Invalid data for `type_assembly_coverage`. Must be a number:", `type_assembly_coverage`))
        }
        self$`type_assembly_coverage` <- `type_assembly_coverage`
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
    #' @return V2reportsANIMatch as a base R list.
    #' @examples
    #' # convert array of V2reportsANIMatch (x) to a data frame
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
    #' Convert V2reportsANIMatch to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsANIMatchObject <- list()
      if (!is.null(self$`assembly`)) {
        V2reportsANIMatchObject[["assembly"]] <-
          self$`assembly`
      }
      if (!is.null(self$`organism_name`)) {
        V2reportsANIMatchObject[["organism_name"]] <-
          self$`organism_name`
      }
      if (!is.null(self$`category`)) {
        V2reportsANIMatchObject[["category"]] <-
          self$`category`$toSimpleType()
      }
      if (!is.null(self$`ani`)) {
        V2reportsANIMatchObject[["ani"]] <-
          self$`ani`
      }
      if (!is.null(self$`assembly_coverage`)) {
        V2reportsANIMatchObject[["assembly_coverage"]] <-
          self$`assembly_coverage`
      }
      if (!is.null(self$`type_assembly_coverage`)) {
        V2reportsANIMatchObject[["type_assembly_coverage"]] <-
          self$`type_assembly_coverage`
      }
      return(V2reportsANIMatchObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsANIMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsANIMatch
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly`)) {
        self$`assembly` <- this_object$`assembly`
      }
      if (!is.null(this_object$`organism_name`)) {
        self$`organism_name` <- this_object$`organism_name`
      }
      if (!is.null(this_object$`category`)) {
        `category_object` <- V2reportsANITypeCategory$new()
        `category_object`$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
        self$`category` <- `category_object`
      }
      if (!is.null(this_object$`ani`)) {
        self$`ani` <- this_object$`ani`
      }
      if (!is.null(this_object$`assembly_coverage`)) {
        self$`assembly_coverage` <- this_object$`assembly_coverage`
      }
      if (!is.null(this_object$`type_assembly_coverage`)) {
        self$`type_assembly_coverage` <- this_object$`type_assembly_coverage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsANIMatch in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsANIMatch
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsANIMatch
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly` <- this_object$`assembly`
      self$`organism_name` <- this_object$`organism_name`
      self$`category` <- V2reportsANITypeCategory$new()$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
      self$`ani` <- this_object$`ani`
      self$`assembly_coverage` <- this_object$`assembly_coverage`
      self$`type_assembly_coverage` <- this_object$`type_assembly_coverage`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsANIMatch and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsANIMatch
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
# V2reportsANIMatch$unlock()
#
## Below is an example to define the print function
# V2reportsANIMatch$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsANIMatch$lock()

