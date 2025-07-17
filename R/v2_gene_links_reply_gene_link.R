#' Create a new V2GeneLinksReplyGeneLink
#'
#' @description
#' V2GeneLinksReplyGeneLink Class
#'
#' @docType class
#' @title V2GeneLinksReplyGeneLink
#' @description V2GeneLinksReplyGeneLink Class
#' @format An \code{R6Class} generator object
#' @field gene_id  integer [optional]
#' @field gene_link_type  \link{V2GeneLinksReplyGeneLinkType} [optional]
#' @field resource_link  character [optional]
#' @field resource_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2GeneLinksReplyGeneLink <- R6::R6Class(
  "V2GeneLinksReplyGeneLink",
  public = list(
    `gene_id` = NULL,
    `gene_link_type` = NULL,
    `resource_link` = NULL,
    `resource_id` = NULL,

    #' @description
    #' Initialize a new V2GeneLinksReplyGeneLink class.
    #'
    #' @param gene_id gene_id
    #' @param gene_link_type gene_link_type
    #' @param resource_link resource_link
    #' @param resource_id resource_id
    #' @param ... Other optional arguments.
    initialize = function(`gene_id` = NULL, `gene_link_type` = NULL, `resource_link` = NULL, `resource_id` = NULL, ...) {
      if (!is.null(`gene_id`)) {
        if (!(is.numeric(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be an integer:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!is.null(`gene_link_type`)) {
        if (!(`gene_link_type` %in% c())) {
          stop(paste("Error! \"", `gene_link_type`, "\" cannot be assigned to `gene_link_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`gene_link_type`))
        self$`gene_link_type` <- `gene_link_type`
      }
      if (!is.null(`resource_link`)) {
        if (!(is.character(`resource_link`) && length(`resource_link`) == 1)) {
          stop(paste("Error! Invalid data for `resource_link`. Must be a string:", `resource_link`))
        }
        self$`resource_link` <- `resource_link`
      }
      if (!is.null(`resource_id`)) {
        if (!(is.character(`resource_id`) && length(`resource_id`) == 1)) {
          stop(paste("Error! Invalid data for `resource_id`. Must be a string:", `resource_id`))
        }
        self$`resource_id` <- `resource_id`
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
    #' @return V2GeneLinksReplyGeneLink as a base R list.
    #' @examples
    #' # convert array of V2GeneLinksReplyGeneLink (x) to a data frame
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
    #' Convert V2GeneLinksReplyGeneLink to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2GeneLinksReplyGeneLinkObject <- list()
      if (!is.null(self$`gene_id`)) {
        V2GeneLinksReplyGeneLinkObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`gene_link_type`)) {
        V2GeneLinksReplyGeneLinkObject[["gene_link_type"]] <-
          self$`gene_link_type`$toSimpleType()
      }
      if (!is.null(self$`resource_link`)) {
        V2GeneLinksReplyGeneLinkObject[["resource_link"]] <-
          self$`resource_link`
      }
      if (!is.null(self$`resource_id`)) {
        V2GeneLinksReplyGeneLinkObject[["resource_id"]] <-
          self$`resource_id`
      }
      return(V2GeneLinksReplyGeneLinkObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneLinksReplyGeneLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneLinksReplyGeneLink
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`gene_link_type`)) {
        `gene_link_type_object` <- V2GeneLinksReplyGeneLinkType$new()
        `gene_link_type_object`$fromJSON(jsonlite::toJSON(this_object$`gene_link_type`, auto_unbox = TRUE, digits = NA))
        self$`gene_link_type` <- `gene_link_type_object`
      }
      if (!is.null(this_object$`resource_link`)) {
        self$`resource_link` <- this_object$`resource_link`
      }
      if (!is.null(this_object$`resource_id`)) {
        self$`resource_id` <- this_object$`resource_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2GeneLinksReplyGeneLink in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2GeneLinksReplyGeneLink
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2GeneLinksReplyGeneLink
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_id` <- this_object$`gene_id`
      self$`gene_link_type` <- V2GeneLinksReplyGeneLinkType$new()$fromJSON(jsonlite::toJSON(this_object$`gene_link_type`, auto_unbox = TRUE, digits = NA))
      self$`resource_link` <- this_object$`resource_link`
      self$`resource_id` <- this_object$`resource_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2GeneLinksReplyGeneLink and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2GeneLinksReplyGeneLink
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
# V2GeneLinksReplyGeneLink$unlock()
#
## Below is an example to define the print function
# V2GeneLinksReplyGeneLink$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2GeneLinksReplyGeneLink$lock()

