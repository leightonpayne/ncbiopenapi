#' Create a new V2reportsAnnotationInfo
#'
#' @description
#' V2reportsAnnotationInfo Class
#'
#' @docType class
#' @title V2reportsAnnotationInfo
#' @description V2reportsAnnotationInfo Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field provider  character [optional]
#' @field release_date  character [optional]
#' @field report_url  character [optional]
#' @field stats  \link{V2reportsFeatureCounts} [optional]
#' @field busco  \link{V2reportsBuscoStat} [optional]
#' @field method  character [optional]
#' @field pipeline  character [optional]
#' @field software_version  character [optional]
#' @field status  character [optional]
#' @field release_version  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAnnotationInfo <- R6::R6Class(
  "V2reportsAnnotationInfo",
  public = list(
    `name` = NULL,
    `provider` = NULL,
    `release_date` = NULL,
    `report_url` = NULL,
    `stats` = NULL,
    `busco` = NULL,
    `method` = NULL,
    `pipeline` = NULL,
    `software_version` = NULL,
    `status` = NULL,
    `release_version` = NULL,

    #' @description
    #' Initialize a new V2reportsAnnotationInfo class.
    #'
    #' @param name name
    #' @param provider provider
    #' @param release_date release_date
    #' @param report_url report_url
    #' @param stats stats
    #' @param busco busco
    #' @param method method
    #' @param pipeline pipeline
    #' @param software_version software_version
    #' @param status status
    #' @param release_version release_version
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `provider` = NULL, `release_date` = NULL, `report_url` = NULL, `stats` = NULL, `busco` = NULL, `method` = NULL, `pipeline` = NULL, `software_version` = NULL, `status` = NULL, `release_version` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`provider`)) {
        if (!(is.character(`provider`) && length(`provider`) == 1)) {
          stop(paste("Error! Invalid data for `provider`. Must be a string:", `provider`))
        }
        self$`provider` <- `provider`
      }
      if (!is.null(`release_date`)) {
        if (!(is.character(`release_date`) && length(`release_date`) == 1)) {
          stop(paste("Error! Invalid data for `release_date`. Must be a string:", `release_date`))
        }
        self$`release_date` <- `release_date`
      }
      if (!is.null(`report_url`)) {
        if (!(is.character(`report_url`) && length(`report_url`) == 1)) {
          stop(paste("Error! Invalid data for `report_url`. Must be a string:", `report_url`))
        }
        self$`report_url` <- `report_url`
      }
      if (!is.null(`stats`)) {
        stopifnot(R6::is.R6(`stats`))
        self$`stats` <- `stats`
      }
      if (!is.null(`busco`)) {
        stopifnot(R6::is.R6(`busco`))
        self$`busco` <- `busco`
      }
      if (!is.null(`method`)) {
        if (!(is.character(`method`) && length(`method`) == 1)) {
          stop(paste("Error! Invalid data for `method`. Must be a string:", `method`))
        }
        self$`method` <- `method`
      }
      if (!is.null(`pipeline`)) {
        if (!(is.character(`pipeline`) && length(`pipeline`) == 1)) {
          stop(paste("Error! Invalid data for `pipeline`. Must be a string:", `pipeline`))
        }
        self$`pipeline` <- `pipeline`
      }
      if (!is.null(`software_version`)) {
        if (!(is.character(`software_version`) && length(`software_version`) == 1)) {
          stop(paste("Error! Invalid data for `software_version`. Must be a string:", `software_version`))
        }
        self$`software_version` <- `software_version`
      }
      if (!is.null(`status`)) {
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!is.null(`release_version`)) {
        if (!(is.character(`release_version`) && length(`release_version`) == 1)) {
          stop(paste("Error! Invalid data for `release_version`. Must be a string:", `release_version`))
        }
        self$`release_version` <- `release_version`
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
    #' @return V2reportsAnnotationInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsAnnotationInfo (x) to a data frame
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
    #' Convert V2reportsAnnotationInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAnnotationInfoObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsAnnotationInfoObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`provider`)) {
        V2reportsAnnotationInfoObject[["provider"]] <-
          self$`provider`
      }
      if (!is.null(self$`release_date`)) {
        V2reportsAnnotationInfoObject[["release_date"]] <-
          self$`release_date`
      }
      if (!is.null(self$`report_url`)) {
        V2reportsAnnotationInfoObject[["report_url"]] <-
          self$`report_url`
      }
      if (!is.null(self$`stats`)) {
        V2reportsAnnotationInfoObject[["stats"]] <-
          self$`stats`$toSimpleType()
      }
      if (!is.null(self$`busco`)) {
        V2reportsAnnotationInfoObject[["busco"]] <-
          self$`busco`$toSimpleType()
      }
      if (!is.null(self$`method`)) {
        V2reportsAnnotationInfoObject[["method"]] <-
          self$`method`
      }
      if (!is.null(self$`pipeline`)) {
        V2reportsAnnotationInfoObject[["pipeline"]] <-
          self$`pipeline`
      }
      if (!is.null(self$`software_version`)) {
        V2reportsAnnotationInfoObject[["software_version"]] <-
          self$`software_version`
      }
      if (!is.null(self$`status`)) {
        V2reportsAnnotationInfoObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`release_version`)) {
        V2reportsAnnotationInfoObject[["release_version"]] <-
          self$`release_version`
      }
      return(V2reportsAnnotationInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAnnotationInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAnnotationInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`provider`)) {
        self$`provider` <- this_object$`provider`
      }
      if (!is.null(this_object$`release_date`)) {
        self$`release_date` <- this_object$`release_date`
      }
      if (!is.null(this_object$`report_url`)) {
        self$`report_url` <- this_object$`report_url`
      }
      if (!is.null(this_object$`stats`)) {
        `stats_object` <- V2reportsFeatureCounts$new()
        `stats_object`$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
        self$`stats` <- `stats_object`
      }
      if (!is.null(this_object$`busco`)) {
        `busco_object` <- V2reportsBuscoStat$new()
        `busco_object`$fromJSON(jsonlite::toJSON(this_object$`busco`, auto_unbox = TRUE, digits = NA))
        self$`busco` <- `busco_object`
      }
      if (!is.null(this_object$`method`)) {
        self$`method` <- this_object$`method`
      }
      if (!is.null(this_object$`pipeline`)) {
        self$`pipeline` <- this_object$`pipeline`
      }
      if (!is.null(this_object$`software_version`)) {
        self$`software_version` <- this_object$`software_version`
      }
      if (!is.null(this_object$`status`)) {
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`release_version`)) {
        self$`release_version` <- this_object$`release_version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAnnotationInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAnnotationInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAnnotationInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`provider` <- this_object$`provider`
      self$`release_date` <- this_object$`release_date`
      self$`report_url` <- this_object$`report_url`
      self$`stats` <- V2reportsFeatureCounts$new()$fromJSON(jsonlite::toJSON(this_object$`stats`, auto_unbox = TRUE, digits = NA))
      self$`busco` <- V2reportsBuscoStat$new()$fromJSON(jsonlite::toJSON(this_object$`busco`, auto_unbox = TRUE, digits = NA))
      self$`method` <- this_object$`method`
      self$`pipeline` <- this_object$`pipeline`
      self$`software_version` <- this_object$`software_version`
      self$`status` <- this_object$`status`
      self$`release_version` <- this_object$`release_version`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAnnotationInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAnnotationInfo
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
# V2reportsAnnotationInfo$unlock()
#
## Below is an example to define the print function
# V2reportsAnnotationInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAnnotationInfo$lock()

