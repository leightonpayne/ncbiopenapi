#' Create a new V2reportsTaxonomyTypeMaterial
#'
#' @description
#' V2reportsTaxonomyTypeMaterial Class
#'
#' @docType class
#' @title V2reportsTaxonomyTypeMaterial
#' @description V2reportsTaxonomyTypeMaterial Class
#' @format An \code{R6Class} generator object
#' @field type_strain_name  character [optional]
#' @field type_strain_id  character [optional]
#' @field bio_collection_id  character [optional]
#' @field bio_collection_name  character [optional]
#' @field collection_type  list(\link{V2reportsCollectionType}) [optional]
#' @field type_class  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsTaxonomyTypeMaterial <- R6::R6Class(
  "V2reportsTaxonomyTypeMaterial",
  public = list(
    `type_strain_name` = NULL,
    `type_strain_id` = NULL,
    `bio_collection_id` = NULL,
    `bio_collection_name` = NULL,
    `collection_type` = NULL,
    `type_class` = NULL,

    #' @description
    #' Initialize a new V2reportsTaxonomyTypeMaterial class.
    #'
    #' @param type_strain_name type_strain_name
    #' @param type_strain_id type_strain_id
    #' @param bio_collection_id bio_collection_id
    #' @param bio_collection_name bio_collection_name
    #' @param collection_type collection_type
    #' @param type_class type_class
    #' @param ... Other optional arguments.
    initialize = function(`type_strain_name` = NULL, `type_strain_id` = NULL, `bio_collection_id` = NULL, `bio_collection_name` = NULL, `collection_type` = NULL, `type_class` = NULL, ...) {
      if (!is.null(`type_strain_name`)) {
        if (!(is.character(`type_strain_name`) && length(`type_strain_name`) == 1)) {
          stop(paste("Error! Invalid data for `type_strain_name`. Must be a string:", `type_strain_name`))
        }
        self$`type_strain_name` <- `type_strain_name`
      }
      if (!is.null(`type_strain_id`)) {
        if (!(is.character(`type_strain_id`) && length(`type_strain_id`) == 1)) {
          stop(paste("Error! Invalid data for `type_strain_id`. Must be a string:", `type_strain_id`))
        }
        self$`type_strain_id` <- `type_strain_id`
      }
      if (!is.null(`bio_collection_id`)) {
        if (!(is.character(`bio_collection_id`) && length(`bio_collection_id`) == 1)) {
          stop(paste("Error! Invalid data for `bio_collection_id`. Must be a string:", `bio_collection_id`))
        }
        self$`bio_collection_id` <- `bio_collection_id`
      }
      if (!is.null(`bio_collection_name`)) {
        if (!(is.character(`bio_collection_name`) && length(`bio_collection_name`) == 1)) {
          stop(paste("Error! Invalid data for `bio_collection_name`. Must be a string:", `bio_collection_name`))
        }
        self$`bio_collection_name` <- `bio_collection_name`
      }
      if (!is.null(`collection_type`)) {
        stopifnot(is.vector(`collection_type`), length(`collection_type`) != 0)
        sapply(`collection_type`, function(x) stopifnot(R6::is.R6(x)))
        self$`collection_type` <- `collection_type`
      }
      if (!is.null(`type_class`)) {
        if (!(is.character(`type_class`) && length(`type_class`) == 1)) {
          stop(paste("Error! Invalid data for `type_class`. Must be a string:", `type_class`))
        }
        self$`type_class` <- `type_class`
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
    #' @return V2reportsTaxonomyTypeMaterial as a base R list.
    #' @examples
    #' # convert array of V2reportsTaxonomyTypeMaterial (x) to a data frame
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
    #' Convert V2reportsTaxonomyTypeMaterial to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsTaxonomyTypeMaterialObject <- list()
      if (!is.null(self$`type_strain_name`)) {
        V2reportsTaxonomyTypeMaterialObject[["type_strain_name"]] <-
          self$`type_strain_name`
      }
      if (!is.null(self$`type_strain_id`)) {
        V2reportsTaxonomyTypeMaterialObject[["type_strain_id"]] <-
          self$`type_strain_id`
      }
      if (!is.null(self$`bio_collection_id`)) {
        V2reportsTaxonomyTypeMaterialObject[["bio_collection_id"]] <-
          self$`bio_collection_id`
      }
      if (!is.null(self$`bio_collection_name`)) {
        V2reportsTaxonomyTypeMaterialObject[["bio_collection_name"]] <-
          self$`bio_collection_name`
      }
      if (!is.null(self$`collection_type`)) {
        V2reportsTaxonomyTypeMaterialObject[["collection_type"]] <-
          lapply(self$`collection_type`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`type_class`)) {
        V2reportsTaxonomyTypeMaterialObject[["type_class"]] <-
          self$`type_class`
      }
      return(V2reportsTaxonomyTypeMaterialObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyTypeMaterial
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyTypeMaterial
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type_strain_name`)) {
        self$`type_strain_name` <- this_object$`type_strain_name`
      }
      if (!is.null(this_object$`type_strain_id`)) {
        self$`type_strain_id` <- this_object$`type_strain_id`
      }
      if (!is.null(this_object$`bio_collection_id`)) {
        self$`bio_collection_id` <- this_object$`bio_collection_id`
      }
      if (!is.null(this_object$`bio_collection_name`)) {
        self$`bio_collection_name` <- this_object$`bio_collection_name`
      }
      if (!is.null(this_object$`collection_type`)) {
        self$`collection_type` <- ApiClient$new()$deserializeObj(this_object$`collection_type`, "array[V2reportsCollectionType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`type_class`)) {
        self$`type_class` <- this_object$`type_class`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsTaxonomyTypeMaterial in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsTaxonomyTypeMaterial
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsTaxonomyTypeMaterial
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`type_strain_name` <- this_object$`type_strain_name`
      self$`type_strain_id` <- this_object$`type_strain_id`
      self$`bio_collection_id` <- this_object$`bio_collection_id`
      self$`bio_collection_name` <- this_object$`bio_collection_name`
      self$`collection_type` <- ApiClient$new()$deserializeObj(this_object$`collection_type`, "array[V2reportsCollectionType]", loadNamespace("ncbiopenapi"))
      self$`type_class` <- this_object$`type_class`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsTaxonomyTypeMaterial and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsTaxonomyTypeMaterial
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
# V2reportsTaxonomyTypeMaterial$unlock()
#
## Below is an example to define the print function
# V2reportsTaxonomyTypeMaterial$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsTaxonomyTypeMaterial$lock()

