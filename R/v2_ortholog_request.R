#' Create a new V2OrthologRequest
#'
#' @description
#' V2OrthologRequest Class
#'
#' @docType class
#' @title V2OrthologRequest
#' @description V2OrthologRequest Class
#' @format An \code{R6Class} generator object
#' @field gene_id  integer [optional]
#' @field returned_content  \link{V2OrthologRequestContentType} [optional]
#' @field taxon_filter  list(character) [optional]
#' @field page_size  integer [optional]
#' @field page_token  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2OrthologRequest <- R6::R6Class(
  "V2OrthologRequest",
  public = list(
    `gene_id` = NULL,
    `returned_content` = NULL,
    `taxon_filter` = NULL,
    `page_size` = NULL,
    `page_token` = NULL,

    #' @description
    #' Initialize a new V2OrthologRequest class.
    #'
    #' @param gene_id gene_id
    #' @param returned_content returned_content
    #' @param taxon_filter taxon_filter
    #' @param page_size page_size
    #' @param page_token page_token
    #' @param ... Other optional arguments.
    initialize = function(`gene_id` = NULL, `returned_content` = NULL, `taxon_filter` = NULL, `page_size` = NULL, `page_token` = NULL, ...) {
      if (!is.null(`gene_id`)) {
        if (!(is.numeric(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be an integer:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!is.null(`returned_content`)) {
        if (!(`returned_content` %in% c())) {
          stop(paste("Error! \"", `returned_content`, "\" cannot be assigned to `returned_content`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`returned_content`))
        self$`returned_content` <- `returned_content`
      }
      if (!is.null(`taxon_filter`)) {
        stopifnot(is.vector(`taxon_filter`), length(`taxon_filter`) != 0)
        sapply(`taxon_filter`, function(x) stopifnot(is.character(x)))
        self$`taxon_filter` <- `taxon_filter`
      }
      if (!is.null(`page_size`)) {
        if (!(is.numeric(`page_size`) && length(`page_size`) == 1)) {
          stop(paste("Error! Invalid data for `page_size`. Must be an integer:", `page_size`))
        }
        self$`page_size` <- `page_size`
      }
      if (!is.null(`page_token`)) {
        if (!(is.character(`page_token`) && length(`page_token`) == 1)) {
          stop(paste("Error! Invalid data for `page_token`. Must be a string:", `page_token`))
        }
        self$`page_token` <- `page_token`
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
    #' @return V2OrthologRequest as a base R list.
    #' @examples
    #' # convert array of V2OrthologRequest (x) to a data frame
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
    #' Convert V2OrthologRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2OrthologRequestObject <- list()
      if (!is.null(self$`gene_id`)) {
        V2OrthologRequestObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`returned_content`)) {
        V2OrthologRequestObject[["returned_content"]] <-
          self$`returned_content`$toSimpleType()
      }
      if (!is.null(self$`taxon_filter`)) {
        V2OrthologRequestObject[["taxon_filter"]] <-
          self$`taxon_filter`
      }
      if (!is.null(self$`page_size`)) {
        V2OrthologRequestObject[["page_size"]] <-
          self$`page_size`
      }
      if (!is.null(self$`page_token`)) {
        V2OrthologRequestObject[["page_token"]] <-
          self$`page_token`
      }
      return(V2OrthologRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrthologRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrthologRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`returned_content`)) {
        `returned_content_object` <- V2OrthologRequestContentType$new()
        `returned_content_object`$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
        self$`returned_content` <- `returned_content_object`
      }
      if (!is.null(this_object$`taxon_filter`)) {
        self$`taxon_filter` <- ApiClient$new()$deserializeObj(this_object$`taxon_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`page_size`)) {
        self$`page_size` <- this_object$`page_size`
      }
      if (!is.null(this_object$`page_token`)) {
        self$`page_token` <- this_object$`page_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2OrthologRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2OrthologRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2OrthologRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_id` <- this_object$`gene_id`
      self$`returned_content` <- V2OrthologRequestContentType$new()$fromJSON(jsonlite::toJSON(this_object$`returned_content`, auto_unbox = TRUE, digits = NA))
      self$`taxon_filter` <- ApiClient$new()$deserializeObj(this_object$`taxon_filter`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`page_size` <- this_object$`page_size`
      self$`page_token` <- this_object$`page_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2OrthologRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2OrthologRequest
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
# V2OrthologRequest$unlock()
#
## Below is an example to define the print function
# V2OrthologRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2OrthologRequest$lock()

