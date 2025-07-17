#' Create a new V2reportsClassification
#'
#' @description
#' V2reportsClassification Class
#'
#' @docType class
#' @title V2reportsClassification
#' @description V2reportsClassification Class
#' @format An \code{R6Class} generator object
#' @field superkingdom  \link{V2reportsTaxData} [optional]
#' @field kingdom  \link{V2reportsTaxData} [optional]
#' @field phylum  \link{V2reportsTaxData} [optional]
#' @field class  \link{V2reportsTaxData} [optional]
#' @field order  \link{V2reportsTaxData} [optional]
#' @field family  \link{V2reportsTaxData} [optional]
#' @field genus  \link{V2reportsTaxData} [optional]
#' @field species  \link{V2reportsTaxData} [optional]
#' @field domain  \link{V2reportsTaxData} [optional]
#' @field realm  \link{V2reportsTaxData} [optional]
#' @field acellular_root  \link{V2reportsTaxData} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsClassification <- R6::R6Class(
  "V2reportsClassification",
  public = list(
    `superkingdom` = NULL,
    `kingdom` = NULL,
    `phylum` = NULL,
    `class` = NULL,
    `order` = NULL,
    `family` = NULL,
    `genus` = NULL,
    `species` = NULL,
    `domain` = NULL,
    `realm` = NULL,
    `acellular_root` = NULL,

    #' @description
    #' Initialize a new V2reportsClassification class.
    #'
    #' @param superkingdom superkingdom
    #' @param kingdom kingdom
    #' @param phylum phylum
    #' @param class class
    #' @param order order
    #' @param family family
    #' @param genus genus
    #' @param species species
    #' @param domain domain
    #' @param realm realm
    #' @param acellular_root acellular_root
    #' @param ... Other optional arguments.
    initialize = function(`superkingdom` = NULL, `kingdom` = NULL, `phylum` = NULL, `class` = NULL, `order` = NULL, `family` = NULL, `genus` = NULL, `species` = NULL, `domain` = NULL, `realm` = NULL, `acellular_root` = NULL, ...) {
      if (!is.null(`superkingdom`)) {
        stopifnot(R6::is.R6(`superkingdom`))
        self$`superkingdom` <- `superkingdom`
      }
      if (!is.null(`kingdom`)) {
        stopifnot(R6::is.R6(`kingdom`))
        self$`kingdom` <- `kingdom`
      }
      if (!is.null(`phylum`)) {
        stopifnot(R6::is.R6(`phylum`))
        self$`phylum` <- `phylum`
      }
      if (!is.null(`class`)) {
        stopifnot(R6::is.R6(`class`))
        self$`class` <- `class`
      }
      if (!is.null(`order`)) {
        stopifnot(R6::is.R6(`order`))
        self$`order` <- `order`
      }
      if (!is.null(`family`)) {
        stopifnot(R6::is.R6(`family`))
        self$`family` <- `family`
      }
      if (!is.null(`genus`)) {
        stopifnot(R6::is.R6(`genus`))
        self$`genus` <- `genus`
      }
      if (!is.null(`species`)) {
        stopifnot(R6::is.R6(`species`))
        self$`species` <- `species`
      }
      if (!is.null(`domain`)) {
        stopifnot(R6::is.R6(`domain`))
        self$`domain` <- `domain`
      }
      if (!is.null(`realm`)) {
        stopifnot(R6::is.R6(`realm`))
        self$`realm` <- `realm`
      }
      if (!is.null(`acellular_root`)) {
        stopifnot(R6::is.R6(`acellular_root`))
        self$`acellular_root` <- `acellular_root`
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
    #' @return V2reportsClassification as a base R list.
    #' @examples
    #' # convert array of V2reportsClassification (x) to a data frame
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
    #' Convert V2reportsClassification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsClassificationObject <- list()
      if (!is.null(self$`superkingdom`)) {
        V2reportsClassificationObject[["superkingdom"]] <-
          self$`superkingdom`$toSimpleType()
      }
      if (!is.null(self$`kingdom`)) {
        V2reportsClassificationObject[["kingdom"]] <-
          self$`kingdom`$toSimpleType()
      }
      if (!is.null(self$`phylum`)) {
        V2reportsClassificationObject[["phylum"]] <-
          self$`phylum`$toSimpleType()
      }
      if (!is.null(self$`class`)) {
        V2reportsClassificationObject[["class"]] <-
          self$`class`$toSimpleType()
      }
      if (!is.null(self$`order`)) {
        V2reportsClassificationObject[["order"]] <-
          self$`order`$toSimpleType()
      }
      if (!is.null(self$`family`)) {
        V2reportsClassificationObject[["family"]] <-
          self$`family`$toSimpleType()
      }
      if (!is.null(self$`genus`)) {
        V2reportsClassificationObject[["genus"]] <-
          self$`genus`$toSimpleType()
      }
      if (!is.null(self$`species`)) {
        V2reportsClassificationObject[["species"]] <-
          self$`species`$toSimpleType()
      }
      if (!is.null(self$`domain`)) {
        V2reportsClassificationObject[["domain"]] <-
          self$`domain`$toSimpleType()
      }
      if (!is.null(self$`realm`)) {
        V2reportsClassificationObject[["realm"]] <-
          self$`realm`$toSimpleType()
      }
      if (!is.null(self$`acellular_root`)) {
        V2reportsClassificationObject[["acellular_root"]] <-
          self$`acellular_root`$toSimpleType()
      }
      return(V2reportsClassificationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsClassification
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsClassification
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`superkingdom`)) {
        `superkingdom_object` <- V2reportsTaxData$new()
        `superkingdom_object`$fromJSON(jsonlite::toJSON(this_object$`superkingdom`, auto_unbox = TRUE, digits = NA))
        self$`superkingdom` <- `superkingdom_object`
      }
      if (!is.null(this_object$`kingdom`)) {
        `kingdom_object` <- V2reportsTaxData$new()
        `kingdom_object`$fromJSON(jsonlite::toJSON(this_object$`kingdom`, auto_unbox = TRUE, digits = NA))
        self$`kingdom` <- `kingdom_object`
      }
      if (!is.null(this_object$`phylum`)) {
        `phylum_object` <- V2reportsTaxData$new()
        `phylum_object`$fromJSON(jsonlite::toJSON(this_object$`phylum`, auto_unbox = TRUE, digits = NA))
        self$`phylum` <- `phylum_object`
      }
      if (!is.null(this_object$`class`)) {
        `class_object` <- V2reportsTaxData$new()
        `class_object`$fromJSON(jsonlite::toJSON(this_object$`class`, auto_unbox = TRUE, digits = NA))
        self$`class` <- `class_object`
      }
      if (!is.null(this_object$`order`)) {
        `order_object` <- V2reportsTaxData$new()
        `order_object`$fromJSON(jsonlite::toJSON(this_object$`order`, auto_unbox = TRUE, digits = NA))
        self$`order` <- `order_object`
      }
      if (!is.null(this_object$`family`)) {
        `family_object` <- V2reportsTaxData$new()
        `family_object`$fromJSON(jsonlite::toJSON(this_object$`family`, auto_unbox = TRUE, digits = NA))
        self$`family` <- `family_object`
      }
      if (!is.null(this_object$`genus`)) {
        `genus_object` <- V2reportsTaxData$new()
        `genus_object`$fromJSON(jsonlite::toJSON(this_object$`genus`, auto_unbox = TRUE, digits = NA))
        self$`genus` <- `genus_object`
      }
      if (!is.null(this_object$`species`)) {
        `species_object` <- V2reportsTaxData$new()
        `species_object`$fromJSON(jsonlite::toJSON(this_object$`species`, auto_unbox = TRUE, digits = NA))
        self$`species` <- `species_object`
      }
      if (!is.null(this_object$`domain`)) {
        `domain_object` <- V2reportsTaxData$new()
        `domain_object`$fromJSON(jsonlite::toJSON(this_object$`domain`, auto_unbox = TRUE, digits = NA))
        self$`domain` <- `domain_object`
      }
      if (!is.null(this_object$`realm`)) {
        `realm_object` <- V2reportsTaxData$new()
        `realm_object`$fromJSON(jsonlite::toJSON(this_object$`realm`, auto_unbox = TRUE, digits = NA))
        self$`realm` <- `realm_object`
      }
      if (!is.null(this_object$`acellular_root`)) {
        `acellular_root_object` <- V2reportsTaxData$new()
        `acellular_root_object`$fromJSON(jsonlite::toJSON(this_object$`acellular_root`, auto_unbox = TRUE, digits = NA))
        self$`acellular_root` <- `acellular_root_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsClassification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsClassification
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsClassification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`superkingdom` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`superkingdom`, auto_unbox = TRUE, digits = NA))
      self$`kingdom` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`kingdom`, auto_unbox = TRUE, digits = NA))
      self$`phylum` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`phylum`, auto_unbox = TRUE, digits = NA))
      self$`class` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`class`, auto_unbox = TRUE, digits = NA))
      self$`order` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`order`, auto_unbox = TRUE, digits = NA))
      self$`family` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`family`, auto_unbox = TRUE, digits = NA))
      self$`genus` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`genus`, auto_unbox = TRUE, digits = NA))
      self$`species` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`species`, auto_unbox = TRUE, digits = NA))
      self$`domain` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`domain`, auto_unbox = TRUE, digits = NA))
      self$`realm` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`realm`, auto_unbox = TRUE, digits = NA))
      self$`acellular_root` <- V2reportsTaxData$new()$fromJSON(jsonlite::toJSON(this_object$`acellular_root`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsClassification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsClassification
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
# V2reportsClassification$unlock()
#
## Below is an example to define the print function
# V2reportsClassification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsClassification$lock()

