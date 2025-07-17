#' Create a new V2reportsNameAndAuthority
#'
#' @description
#' V2reportsNameAndAuthority Class
#'
#' @docType class
#' @title V2reportsNameAndAuthority
#' @description V2reportsNameAndAuthority Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field authority  character [optional]
#' @field type_strains  list(\link{V2reportsTaxonomyTypeMaterial}) [optional]
#' @field curator_synonym  character [optional]
#' @field homotypic_synonyms  list(\link{V2reportsNameAndAuthority}) [optional]
#' @field heterotypic_synonyms  list(\link{V2reportsNameAndAuthority}) [optional]
#' @field other_synonyms  list(\link{V2reportsNameAndAuthority}) [optional]
#' @field informal_names  list(character) [optional]
#' @field basionym  \link{V2reportsNameAndAuthority} [optional]
#' @field publications  list(\link{V2reportsNameAndAuthorityPublication}) [optional]
#' @field notes  list(\link{V2reportsNameAndAuthorityNote}) [optional]
#' @field formal  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsNameAndAuthority <- R6::R6Class(
  "V2reportsNameAndAuthority",
  public = list(
    `name` = NULL,
    `authority` = NULL,
    `type_strains` = NULL,
    `curator_synonym` = NULL,
    `homotypic_synonyms` = NULL,
    `heterotypic_synonyms` = NULL,
    `other_synonyms` = NULL,
    `informal_names` = NULL,
    `basionym` = NULL,
    `publications` = NULL,
    `notes` = NULL,
    `formal` = NULL,

    #' @description
    #' Initialize a new V2reportsNameAndAuthority class.
    #'
    #' @param name name
    #' @param authority authority
    #' @param type_strains type_strains
    #' @param curator_synonym curator_synonym
    #' @param homotypic_synonyms homotypic_synonyms
    #' @param heterotypic_synonyms heterotypic_synonyms
    #' @param other_synonyms other_synonyms
    #' @param informal_names informal_names
    #' @param basionym basionym
    #' @param publications publications
    #' @param notes notes
    #' @param formal formal
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `authority` = NULL, `type_strains` = NULL, `curator_synonym` = NULL, `homotypic_synonyms` = NULL, `heterotypic_synonyms` = NULL, `other_synonyms` = NULL, `informal_names` = NULL, `basionym` = NULL, `publications` = NULL, `notes` = NULL, `formal` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`authority`)) {
        if (!(is.character(`authority`) && length(`authority`) == 1)) {
          stop(paste("Error! Invalid data for `authority`. Must be a string:", `authority`))
        }
        self$`authority` <- `authority`
      }
      if (!is.null(`type_strains`)) {
        stopifnot(is.vector(`type_strains`), length(`type_strains`) != 0)
        sapply(`type_strains`, function(x) stopifnot(R6::is.R6(x)))
        self$`type_strains` <- `type_strains`
      }
      if (!is.null(`curator_synonym`)) {
        if (!(is.character(`curator_synonym`) && length(`curator_synonym`) == 1)) {
          stop(paste("Error! Invalid data for `curator_synonym`. Must be a string:", `curator_synonym`))
        }
        self$`curator_synonym` <- `curator_synonym`
      }
      if (!is.null(`homotypic_synonyms`)) {
        stopifnot(is.vector(`homotypic_synonyms`), length(`homotypic_synonyms`) != 0)
        sapply(`homotypic_synonyms`, function(x) stopifnot(R6::is.R6(x)))
        self$`homotypic_synonyms` <- `homotypic_synonyms`
      }
      if (!is.null(`heterotypic_synonyms`)) {
        stopifnot(is.vector(`heterotypic_synonyms`), length(`heterotypic_synonyms`) != 0)
        sapply(`heterotypic_synonyms`, function(x) stopifnot(R6::is.R6(x)))
        self$`heterotypic_synonyms` <- `heterotypic_synonyms`
      }
      if (!is.null(`other_synonyms`)) {
        stopifnot(is.vector(`other_synonyms`), length(`other_synonyms`) != 0)
        sapply(`other_synonyms`, function(x) stopifnot(R6::is.R6(x)))
        self$`other_synonyms` <- `other_synonyms`
      }
      if (!is.null(`informal_names`)) {
        stopifnot(is.vector(`informal_names`), length(`informal_names`) != 0)
        sapply(`informal_names`, function(x) stopifnot(is.character(x)))
        self$`informal_names` <- `informal_names`
      }
      if (!is.null(`basionym`)) {
        stopifnot(R6::is.R6(`basionym`))
        self$`basionym` <- `basionym`
      }
      if (!is.null(`publications`)) {
        stopifnot(is.vector(`publications`), length(`publications`) != 0)
        sapply(`publications`, function(x) stopifnot(R6::is.R6(x)))
        self$`publications` <- `publications`
      }
      if (!is.null(`notes`)) {
        stopifnot(is.vector(`notes`), length(`notes`) != 0)
        sapply(`notes`, function(x) stopifnot(R6::is.R6(x)))
        self$`notes` <- `notes`
      }
      if (!is.null(`formal`)) {
        if (!(is.logical(`formal`) && length(`formal`) == 1)) {
          stop(paste("Error! Invalid data for `formal`. Must be a boolean:", `formal`))
        }
        self$`formal` <- `formal`
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
    #' @return V2reportsNameAndAuthority as a base R list.
    #' @examples
    #' # convert array of V2reportsNameAndAuthority (x) to a data frame
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
    #' Convert V2reportsNameAndAuthority to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsNameAndAuthorityObject <- list()
      if (!is.null(self$`name`)) {
        V2reportsNameAndAuthorityObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`authority`)) {
        V2reportsNameAndAuthorityObject[["authority"]] <-
          self$`authority`
      }
      if (!is.null(self$`type_strains`)) {
        V2reportsNameAndAuthorityObject[["type_strains"]] <-
          lapply(self$`type_strains`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`curator_synonym`)) {
        V2reportsNameAndAuthorityObject[["curator_synonym"]] <-
          self$`curator_synonym`
      }
      if (!is.null(self$`homotypic_synonyms`)) {
        V2reportsNameAndAuthorityObject[["homotypic_synonyms"]] <-
          lapply(self$`homotypic_synonyms`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`heterotypic_synonyms`)) {
        V2reportsNameAndAuthorityObject[["heterotypic_synonyms"]] <-
          lapply(self$`heterotypic_synonyms`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`other_synonyms`)) {
        V2reportsNameAndAuthorityObject[["other_synonyms"]] <-
          lapply(self$`other_synonyms`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`informal_names`)) {
        V2reportsNameAndAuthorityObject[["informal_names"]] <-
          self$`informal_names`
      }
      if (!is.null(self$`basionym`)) {
        V2reportsNameAndAuthorityObject[["basionym"]] <-
          self$`basionym`$toSimpleType()
      }
      if (!is.null(self$`publications`)) {
        V2reportsNameAndAuthorityObject[["publications"]] <-
          lapply(self$`publications`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`notes`)) {
        V2reportsNameAndAuthorityObject[["notes"]] <-
          lapply(self$`notes`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`formal`)) {
        V2reportsNameAndAuthorityObject[["formal"]] <-
          self$`formal`
      }
      return(V2reportsNameAndAuthorityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsNameAndAuthority
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsNameAndAuthority
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`authority`)) {
        self$`authority` <- this_object$`authority`
      }
      if (!is.null(this_object$`type_strains`)) {
        self$`type_strains` <- ApiClient$new()$deserializeObj(this_object$`type_strains`, "array[V2reportsTaxonomyTypeMaterial]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`curator_synonym`)) {
        self$`curator_synonym` <- this_object$`curator_synonym`
      }
      if (!is.null(this_object$`homotypic_synonyms`)) {
        self$`homotypic_synonyms` <- ApiClient$new()$deserializeObj(this_object$`homotypic_synonyms`, "array[V2reportsNameAndAuthority]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`heterotypic_synonyms`)) {
        self$`heterotypic_synonyms` <- ApiClient$new()$deserializeObj(this_object$`heterotypic_synonyms`, "array[V2reportsNameAndAuthority]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`other_synonyms`)) {
        self$`other_synonyms` <- ApiClient$new()$deserializeObj(this_object$`other_synonyms`, "array[V2reportsNameAndAuthority]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`informal_names`)) {
        self$`informal_names` <- ApiClient$new()$deserializeObj(this_object$`informal_names`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`basionym`)) {
        `basionym_object` <- V2reportsNameAndAuthority$new()
        `basionym_object`$fromJSON(jsonlite::toJSON(this_object$`basionym`, auto_unbox = TRUE, digits = NA))
        self$`basionym` <- `basionym_object`
      }
      if (!is.null(this_object$`publications`)) {
        self$`publications` <- ApiClient$new()$deserializeObj(this_object$`publications`, "array[V2reportsNameAndAuthorityPublication]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`notes`)) {
        self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[V2reportsNameAndAuthorityNote]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`formal`)) {
        self$`formal` <- this_object$`formal`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsNameAndAuthority in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsNameAndAuthority
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsNameAndAuthority
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`authority` <- this_object$`authority`
      self$`type_strains` <- ApiClient$new()$deserializeObj(this_object$`type_strains`, "array[V2reportsTaxonomyTypeMaterial]", loadNamespace("ncbiopenapi"))
      self$`curator_synonym` <- this_object$`curator_synonym`
      self$`homotypic_synonyms` <- ApiClient$new()$deserializeObj(this_object$`homotypic_synonyms`, "array[V2reportsNameAndAuthority]", loadNamespace("ncbiopenapi"))
      self$`heterotypic_synonyms` <- ApiClient$new()$deserializeObj(this_object$`heterotypic_synonyms`, "array[V2reportsNameAndAuthority]", loadNamespace("ncbiopenapi"))
      self$`other_synonyms` <- ApiClient$new()$deserializeObj(this_object$`other_synonyms`, "array[V2reportsNameAndAuthority]", loadNamespace("ncbiopenapi"))
      self$`informal_names` <- ApiClient$new()$deserializeObj(this_object$`informal_names`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`basionym` <- V2reportsNameAndAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`basionym`, auto_unbox = TRUE, digits = NA))
      self$`publications` <- ApiClient$new()$deserializeObj(this_object$`publications`, "array[V2reportsNameAndAuthorityPublication]", loadNamespace("ncbiopenapi"))
      self$`notes` <- ApiClient$new()$deserializeObj(this_object$`notes`, "array[V2reportsNameAndAuthorityNote]", loadNamespace("ncbiopenapi"))
      self$`formal` <- this_object$`formal`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsNameAndAuthority and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsNameAndAuthority
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
# V2reportsNameAndAuthority$unlock()
#
## Below is an example to define the print function
# V2reportsNameAndAuthority$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsNameAndAuthority$lock()

