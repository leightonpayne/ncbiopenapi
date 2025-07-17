#' Create a new V2reportsInfraspecificNames
#'
#' @description
#' V2reportsInfraspecificNames Class
#'
#' @docType class
#' @title V2reportsInfraspecificNames
#' @description V2reportsInfraspecificNames Class
#' @format An \code{R6Class} generator object
#' @field breed  character [optional]
#' @field cultivar  character [optional]
#' @field ecotype  character [optional]
#' @field isolate  character [optional]
#' @field sex  character [optional]
#' @field strain  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsInfraspecificNames <- R6::R6Class(
  "V2reportsInfraspecificNames",
  public = list(
    `breed` = NULL,
    `cultivar` = NULL,
    `ecotype` = NULL,
    `isolate` = NULL,
    `sex` = NULL,
    `strain` = NULL,

    #' @description
    #' Initialize a new V2reportsInfraspecificNames class.
    #'
    #' @param breed breed
    #' @param cultivar cultivar
    #' @param ecotype ecotype
    #' @param isolate isolate
    #' @param sex sex
    #' @param strain strain
    #' @param ... Other optional arguments.
    initialize = function(`breed` = NULL, `cultivar` = NULL, `ecotype` = NULL, `isolate` = NULL, `sex` = NULL, `strain` = NULL, ...) {
      if (!is.null(`breed`)) {
        if (!(is.character(`breed`) && length(`breed`) == 1)) {
          stop(paste("Error! Invalid data for `breed`. Must be a string:", `breed`))
        }
        self$`breed` <- `breed`
      }
      if (!is.null(`cultivar`)) {
        if (!(is.character(`cultivar`) && length(`cultivar`) == 1)) {
          stop(paste("Error! Invalid data for `cultivar`. Must be a string:", `cultivar`))
        }
        self$`cultivar` <- `cultivar`
      }
      if (!is.null(`ecotype`)) {
        if (!(is.character(`ecotype`) && length(`ecotype`) == 1)) {
          stop(paste("Error! Invalid data for `ecotype`. Must be a string:", `ecotype`))
        }
        self$`ecotype` <- `ecotype`
      }
      if (!is.null(`isolate`)) {
        if (!(is.character(`isolate`) && length(`isolate`) == 1)) {
          stop(paste("Error! Invalid data for `isolate`. Must be a string:", `isolate`))
        }
        self$`isolate` <- `isolate`
      }
      if (!is.null(`sex`)) {
        if (!(is.character(`sex`) && length(`sex`) == 1)) {
          stop(paste("Error! Invalid data for `sex`. Must be a string:", `sex`))
        }
        self$`sex` <- `sex`
      }
      if (!is.null(`strain`)) {
        if (!(is.character(`strain`) && length(`strain`) == 1)) {
          stop(paste("Error! Invalid data for `strain`. Must be a string:", `strain`))
        }
        self$`strain` <- `strain`
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
    #' @return V2reportsInfraspecificNames as a base R list.
    #' @examples
    #' # convert array of V2reportsInfraspecificNames (x) to a data frame
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
    #' Convert V2reportsInfraspecificNames to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsInfraspecificNamesObject <- list()
      if (!is.null(self$`breed`)) {
        V2reportsInfraspecificNamesObject[["breed"]] <-
          self$`breed`
      }
      if (!is.null(self$`cultivar`)) {
        V2reportsInfraspecificNamesObject[["cultivar"]] <-
          self$`cultivar`
      }
      if (!is.null(self$`ecotype`)) {
        V2reportsInfraspecificNamesObject[["ecotype"]] <-
          self$`ecotype`
      }
      if (!is.null(self$`isolate`)) {
        V2reportsInfraspecificNamesObject[["isolate"]] <-
          self$`isolate`
      }
      if (!is.null(self$`sex`)) {
        V2reportsInfraspecificNamesObject[["sex"]] <-
          self$`sex`
      }
      if (!is.null(self$`strain`)) {
        V2reportsInfraspecificNamesObject[["strain"]] <-
          self$`strain`
      }
      return(V2reportsInfraspecificNamesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsInfraspecificNames
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsInfraspecificNames
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`breed`)) {
        self$`breed` <- this_object$`breed`
      }
      if (!is.null(this_object$`cultivar`)) {
        self$`cultivar` <- this_object$`cultivar`
      }
      if (!is.null(this_object$`ecotype`)) {
        self$`ecotype` <- this_object$`ecotype`
      }
      if (!is.null(this_object$`isolate`)) {
        self$`isolate` <- this_object$`isolate`
      }
      if (!is.null(this_object$`sex`)) {
        self$`sex` <- this_object$`sex`
      }
      if (!is.null(this_object$`strain`)) {
        self$`strain` <- this_object$`strain`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsInfraspecificNames in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsInfraspecificNames
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsInfraspecificNames
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`breed` <- this_object$`breed`
      self$`cultivar` <- this_object$`cultivar`
      self$`ecotype` <- this_object$`ecotype`
      self$`isolate` <- this_object$`isolate`
      self$`sex` <- this_object$`sex`
      self$`strain` <- this_object$`strain`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsInfraspecificNames and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsInfraspecificNames
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
# V2reportsInfraspecificNames$unlock()
#
## Below is an example to define the print function
# V2reportsInfraspecificNames$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsInfraspecificNames$lock()

