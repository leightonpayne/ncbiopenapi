#' Create a new V2AssemblyLinksReplyAssemblyLink
#'
#' @description
#' V2AssemblyLinksReplyAssemblyLink Class
#'
#' @docType class
#' @title V2AssemblyLinksReplyAssemblyLink
#' @description V2AssemblyLinksReplyAssemblyLink Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field assembly_link_type  \link{V2AssemblyLinksReplyAssemblyLinkType} [optional]
#' @field resource_link  character [optional]
#' @field linked_identifiers  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2AssemblyLinksReplyAssemblyLink <- R6::R6Class(
  "V2AssemblyLinksReplyAssemblyLink",
  public = list(
    `accession` = NULL,
    `assembly_link_type` = NULL,
    `resource_link` = NULL,
    `linked_identifiers` = NULL,

    #' @description
    #' Initialize a new V2AssemblyLinksReplyAssemblyLink class.
    #'
    #' @param accession accession
    #' @param assembly_link_type assembly_link_type
    #' @param resource_link resource_link
    #' @param linked_identifiers linked_identifiers
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `assembly_link_type` = NULL, `resource_link` = NULL, `linked_identifiers` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`assembly_link_type`)) {
        if (!(`assembly_link_type` %in% c())) {
          stop(paste("Error! \"", `assembly_link_type`, "\" cannot be assigned to `assembly_link_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_link_type`))
        self$`assembly_link_type` <- `assembly_link_type`
      }
      if (!is.null(`resource_link`)) {
        if (!(is.character(`resource_link`) && length(`resource_link`) == 1)) {
          stop(paste("Error! Invalid data for `resource_link`. Must be a string:", `resource_link`))
        }
        self$`resource_link` <- `resource_link`
      }
      if (!is.null(`linked_identifiers`)) {
        stopifnot(is.vector(`linked_identifiers`), length(`linked_identifiers`) != 0)
        sapply(`linked_identifiers`, function(x) stopifnot(is.character(x)))
        self$`linked_identifiers` <- `linked_identifiers`
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
    #' @return V2AssemblyLinksReplyAssemblyLink as a base R list.
    #' @examples
    #' # convert array of V2AssemblyLinksReplyAssemblyLink (x) to a data frame
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
    #' Convert V2AssemblyLinksReplyAssemblyLink to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2AssemblyLinksReplyAssemblyLinkObject <- list()
      if (!is.null(self$`accession`)) {
        V2AssemblyLinksReplyAssemblyLinkObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`assembly_link_type`)) {
        V2AssemblyLinksReplyAssemblyLinkObject[["assembly_link_type"]] <-
          self$`assembly_link_type`$toSimpleType()
      }
      if (!is.null(self$`resource_link`)) {
        V2AssemblyLinksReplyAssemblyLinkObject[["resource_link"]] <-
          self$`resource_link`
      }
      if (!is.null(self$`linked_identifiers`)) {
        V2AssemblyLinksReplyAssemblyLinkObject[["linked_identifiers"]] <-
          self$`linked_identifiers`
      }
      return(V2AssemblyLinksReplyAssemblyLinkObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyLinksReplyAssemblyLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyLinksReplyAssemblyLink
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`assembly_link_type`)) {
        `assembly_link_type_object` <- V2AssemblyLinksReplyAssemblyLinkType$new()
        `assembly_link_type_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_link_type`, auto_unbox = TRUE, digits = NA))
        self$`assembly_link_type` <- `assembly_link_type_object`
      }
      if (!is.null(this_object$`resource_link`)) {
        self$`resource_link` <- this_object$`resource_link`
      }
      if (!is.null(this_object$`linked_identifiers`)) {
        self$`linked_identifiers` <- ApiClient$new()$deserializeObj(this_object$`linked_identifiers`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2AssemblyLinksReplyAssemblyLink in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2AssemblyLinksReplyAssemblyLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2AssemblyLinksReplyAssemblyLink
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`assembly_link_type` <- V2AssemblyLinksReplyAssemblyLinkType$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_link_type`, auto_unbox = TRUE, digits = NA))
      self$`resource_link` <- this_object$`resource_link`
      self$`linked_identifiers` <- ApiClient$new()$deserializeObj(this_object$`linked_identifiers`, "array[character]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2AssemblyLinksReplyAssemblyLink and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2AssemblyLinksReplyAssemblyLink
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
# V2AssemblyLinksReplyAssemblyLink$unlock()
#
## Below is an example to define the print function
# V2AssemblyLinksReplyAssemblyLink$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2AssemblyLinksReplyAssemblyLink$lock()

