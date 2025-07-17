#' Create a new V2reportsAverageNucleotideIdentity
#'
#' @description
#' V2reportsAverageNucleotideIdentity Class
#'
#' @docType class
#' @title V2reportsAverageNucleotideIdentity
#' @description V2reportsAverageNucleotideIdentity Class
#' @format An \code{R6Class} generator object
#' @field taxonomy_check_status  \link{V2reportsAverageNucleotideIdentityTaxonomyCheckStatus} [optional]
#' @field match_status  \link{V2reportsAverageNucleotideIdentityMatchStatus} [optional]
#' @field submitted_organism  character [optional]
#' @field submitted_species  character [optional]
#' @field category  \link{V2reportsANITypeCategory} [optional]
#' @field submitted_ani_match  \link{V2reportsANIMatch} [optional]
#' @field best_ani_match  \link{V2reportsANIMatch} [optional]
#' @field comment  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAverageNucleotideIdentity <- R6::R6Class(
  "V2reportsAverageNucleotideIdentity",
  public = list(
    `taxonomy_check_status` = NULL,
    `match_status` = NULL,
    `submitted_organism` = NULL,
    `submitted_species` = NULL,
    `category` = NULL,
    `submitted_ani_match` = NULL,
    `best_ani_match` = NULL,
    `comment` = NULL,

    #' @description
    #' Initialize a new V2reportsAverageNucleotideIdentity class.
    #'
    #' @param taxonomy_check_status taxonomy_check_status
    #' @param match_status match_status
    #' @param submitted_organism submitted_organism
    #' @param submitted_species submitted_species
    #' @param category category
    #' @param submitted_ani_match submitted_ani_match
    #' @param best_ani_match best_ani_match
    #' @param comment comment
    #' @param ... Other optional arguments.
    initialize = function(`taxonomy_check_status` = NULL, `match_status` = NULL, `submitted_organism` = NULL, `submitted_species` = NULL, `category` = NULL, `submitted_ani_match` = NULL, `best_ani_match` = NULL, `comment` = NULL, ...) {
      if (!is.null(`taxonomy_check_status`)) {
        if (!(`taxonomy_check_status` %in% c())) {
          stop(paste("Error! \"", `taxonomy_check_status`, "\" cannot be assigned to `taxonomy_check_status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`taxonomy_check_status`))
        self$`taxonomy_check_status` <- `taxonomy_check_status`
      }
      if (!is.null(`match_status`)) {
        if (!(`match_status` %in% c())) {
          stop(paste("Error! \"", `match_status`, "\" cannot be assigned to `match_status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`match_status`))
        self$`match_status` <- `match_status`
      }
      if (!is.null(`submitted_organism`)) {
        if (!(is.character(`submitted_organism`) && length(`submitted_organism`) == 1)) {
          stop(paste("Error! Invalid data for `submitted_organism`. Must be a string:", `submitted_organism`))
        }
        self$`submitted_organism` <- `submitted_organism`
      }
      if (!is.null(`submitted_species`)) {
        if (!(is.character(`submitted_species`) && length(`submitted_species`) == 1)) {
          stop(paste("Error! Invalid data for `submitted_species`. Must be a string:", `submitted_species`))
        }
        self$`submitted_species` <- `submitted_species`
      }
      if (!is.null(`category`)) {
        if (!(`category` %in% c())) {
          stop(paste("Error! \"", `category`, "\" cannot be assigned to `category`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`category`))
        self$`category` <- `category`
      }
      if (!is.null(`submitted_ani_match`)) {
        stopifnot(R6::is.R6(`submitted_ani_match`))
        self$`submitted_ani_match` <- `submitted_ani_match`
      }
      if (!is.null(`best_ani_match`)) {
        stopifnot(R6::is.R6(`best_ani_match`))
        self$`best_ani_match` <- `best_ani_match`
      }
      if (!is.null(`comment`)) {
        if (!(is.character(`comment`) && length(`comment`) == 1)) {
          stop(paste("Error! Invalid data for `comment`. Must be a string:", `comment`))
        }
        self$`comment` <- `comment`
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
    #' @return V2reportsAverageNucleotideIdentity as a base R list.
    #' @examples
    #' # convert array of V2reportsAverageNucleotideIdentity (x) to a data frame
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
    #' Convert V2reportsAverageNucleotideIdentity to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAverageNucleotideIdentityObject <- list()
      if (!is.null(self$`taxonomy_check_status`)) {
        V2reportsAverageNucleotideIdentityObject[["taxonomy_check_status"]] <-
          self$`taxonomy_check_status`$toSimpleType()
      }
      if (!is.null(self$`match_status`)) {
        V2reportsAverageNucleotideIdentityObject[["match_status"]] <-
          self$`match_status`$toSimpleType()
      }
      if (!is.null(self$`submitted_organism`)) {
        V2reportsAverageNucleotideIdentityObject[["submitted_organism"]] <-
          self$`submitted_organism`
      }
      if (!is.null(self$`submitted_species`)) {
        V2reportsAverageNucleotideIdentityObject[["submitted_species"]] <-
          self$`submitted_species`
      }
      if (!is.null(self$`category`)) {
        V2reportsAverageNucleotideIdentityObject[["category"]] <-
          self$`category`$toSimpleType()
      }
      if (!is.null(self$`submitted_ani_match`)) {
        V2reportsAverageNucleotideIdentityObject[["submitted_ani_match"]] <-
          self$`submitted_ani_match`$toSimpleType()
      }
      if (!is.null(self$`best_ani_match`)) {
        V2reportsAverageNucleotideIdentityObject[["best_ani_match"]] <-
          self$`best_ani_match`$toSimpleType()
      }
      if (!is.null(self$`comment`)) {
        V2reportsAverageNucleotideIdentityObject[["comment"]] <-
          self$`comment`
      }
      return(V2reportsAverageNucleotideIdentityObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAverageNucleotideIdentity
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAverageNucleotideIdentity
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxonomy_check_status`)) {
        `taxonomy_check_status_object` <- V2reportsAverageNucleotideIdentityTaxonomyCheckStatus$new()
        `taxonomy_check_status_object`$fromJSON(jsonlite::toJSON(this_object$`taxonomy_check_status`, auto_unbox = TRUE, digits = NA))
        self$`taxonomy_check_status` <- `taxonomy_check_status_object`
      }
      if (!is.null(this_object$`match_status`)) {
        `match_status_object` <- V2reportsAverageNucleotideIdentityMatchStatus$new()
        `match_status_object`$fromJSON(jsonlite::toJSON(this_object$`match_status`, auto_unbox = TRUE, digits = NA))
        self$`match_status` <- `match_status_object`
      }
      if (!is.null(this_object$`submitted_organism`)) {
        self$`submitted_organism` <- this_object$`submitted_organism`
      }
      if (!is.null(this_object$`submitted_species`)) {
        self$`submitted_species` <- this_object$`submitted_species`
      }
      if (!is.null(this_object$`category`)) {
        `category_object` <- V2reportsANITypeCategory$new()
        `category_object`$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
        self$`category` <- `category_object`
      }
      if (!is.null(this_object$`submitted_ani_match`)) {
        `submitted_ani_match_object` <- V2reportsANIMatch$new()
        `submitted_ani_match_object`$fromJSON(jsonlite::toJSON(this_object$`submitted_ani_match`, auto_unbox = TRUE, digits = NA))
        self$`submitted_ani_match` <- `submitted_ani_match_object`
      }
      if (!is.null(this_object$`best_ani_match`)) {
        `best_ani_match_object` <- V2reportsANIMatch$new()
        `best_ani_match_object`$fromJSON(jsonlite::toJSON(this_object$`best_ani_match`, auto_unbox = TRUE, digits = NA))
        self$`best_ani_match` <- `best_ani_match_object`
      }
      if (!is.null(this_object$`comment`)) {
        self$`comment` <- this_object$`comment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAverageNucleotideIdentity in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAverageNucleotideIdentity
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAverageNucleotideIdentity
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxonomy_check_status` <- V2reportsAverageNucleotideIdentityTaxonomyCheckStatus$new()$fromJSON(jsonlite::toJSON(this_object$`taxonomy_check_status`, auto_unbox = TRUE, digits = NA))
      self$`match_status` <- V2reportsAverageNucleotideIdentityMatchStatus$new()$fromJSON(jsonlite::toJSON(this_object$`match_status`, auto_unbox = TRUE, digits = NA))
      self$`submitted_organism` <- this_object$`submitted_organism`
      self$`submitted_species` <- this_object$`submitted_species`
      self$`category` <- V2reportsANITypeCategory$new()$fromJSON(jsonlite::toJSON(this_object$`category`, auto_unbox = TRUE, digits = NA))
      self$`submitted_ani_match` <- V2reportsANIMatch$new()$fromJSON(jsonlite::toJSON(this_object$`submitted_ani_match`, auto_unbox = TRUE, digits = NA))
      self$`best_ani_match` <- V2reportsANIMatch$new()$fromJSON(jsonlite::toJSON(this_object$`best_ani_match`, auto_unbox = TRUE, digits = NA))
      self$`comment` <- this_object$`comment`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAverageNucleotideIdentity and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAverageNucleotideIdentity
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
# V2reportsAverageNucleotideIdentity$unlock()
#
## Below is an example to define the print function
# V2reportsAverageNucleotideIdentity$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAverageNucleotideIdentity$lock()

