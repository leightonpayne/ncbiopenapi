#' Create a new V2reportsOrganelle
#'
#' @description
#' V2reportsOrganelle Class
#'
#' @docType class
#' @title V2reportsOrganelle
#' @description V2reportsOrganelle Class
#' @format An \code{R6Class} generator object
#' @field description  \link{V2reportsOrganelleType} [optional]
#' @field genbank  \link{V2reportsSequenceInformation} [optional]
#' @field refseq  \link{V2reportsSequenceInformation} [optional]
#' @field organism  \link{V2reportsOrganism} [optional]
#' @field bioprojects  list(\link{V2reportsBioProject}) [optional]
#' @field biosample  \link{V2reportsOrganelleBiosample} [optional]
#' @field gene_counts  \link{V2reportsOrganelleGeneCounts} [optional]
#' @field length  integer [optional]
#' @field topology  \link{V2reportsOrganelleTopology} [optional]
#' @field gene_count  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsOrganelle <- R6::R6Class(
  "V2reportsOrganelle",
  public = list(
    `description` = NULL,
    `genbank` = NULL,
    `refseq` = NULL,
    `organism` = NULL,
    `bioprojects` = NULL,
    `biosample` = NULL,
    `gene_counts` = NULL,
    `length` = NULL,
    `topology` = NULL,
    `gene_count` = NULL,

    #' @description
    #' Initialize a new V2reportsOrganelle class.
    #'
    #' @param description description
    #' @param genbank genbank
    #' @param refseq refseq
    #' @param organism organism
    #' @param bioprojects bioprojects
    #' @param biosample biosample
    #' @param gene_counts gene_counts
    #' @param length length
    #' @param topology topology
    #' @param gene_count gene_count
    #' @param ... Other optional arguments.
    initialize = function(`description` = NULL, `genbank` = NULL, `refseq` = NULL, `organism` = NULL, `bioprojects` = NULL, `biosample` = NULL, `gene_counts` = NULL, `length` = NULL, `topology` = NULL, `gene_count` = NULL, ...) {
      if (!is.null(`description`)) {
        if (!(`description` %in% c())) {
          stop(paste("Error! \"", `description`, "\" cannot be assigned to `description`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`description`))
        self$`description` <- `description`
      }
      if (!is.null(`genbank`)) {
        stopifnot(R6::is.R6(`genbank`))
        self$`genbank` <- `genbank`
      }
      if (!is.null(`refseq`)) {
        stopifnot(R6::is.R6(`refseq`))
        self$`refseq` <- `refseq`
      }
      if (!is.null(`organism`)) {
        stopifnot(R6::is.R6(`organism`))
        self$`organism` <- `organism`
      }
      if (!is.null(`bioprojects`)) {
        stopifnot(is.vector(`bioprojects`), length(`bioprojects`) != 0)
        sapply(`bioprojects`, function(x) stopifnot(R6::is.R6(x)))
        self$`bioprojects` <- `bioprojects`
      }
      if (!is.null(`biosample`)) {
        stopifnot(R6::is.R6(`biosample`))
        self$`biosample` <- `biosample`
      }
      if (!is.null(`gene_counts`)) {
        stopifnot(R6::is.R6(`gene_counts`))
        self$`gene_counts` <- `gene_counts`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`topology`)) {
        if (!(`topology` %in% c())) {
          stop(paste("Error! \"", `topology`, "\" cannot be assigned to `topology`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`topology`))
        self$`topology` <- `topology`
      }
      if (!is.null(`gene_count`)) {
        if (!(is.numeric(`gene_count`) && length(`gene_count`) == 1)) {
          stop(paste("Error! Invalid data for `gene_count`. Must be an integer:", `gene_count`))
        }
        self$`gene_count` <- `gene_count`
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
    #' @return V2reportsOrganelle as a base R list.
    #' @examples
    #' # convert array of V2reportsOrganelle (x) to a data frame
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
    #' Convert V2reportsOrganelle to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsOrganelleObject <- list()
      if (!is.null(self$`description`)) {
        V2reportsOrganelleObject[["description"]] <-
          self$`description`$toSimpleType()
      }
      if (!is.null(self$`genbank`)) {
        V2reportsOrganelleObject[["genbank"]] <-
          self$`genbank`$toSimpleType()
      }
      if (!is.null(self$`refseq`)) {
        V2reportsOrganelleObject[["refseq"]] <-
          self$`refseq`$toSimpleType()
      }
      if (!is.null(self$`organism`)) {
        V2reportsOrganelleObject[["organism"]] <-
          self$`organism`$toSimpleType()
      }
      if (!is.null(self$`bioprojects`)) {
        V2reportsOrganelleObject[["bioprojects"]] <-
          lapply(self$`bioprojects`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`biosample`)) {
        V2reportsOrganelleObject[["biosample"]] <-
          self$`biosample`$toSimpleType()
      }
      if (!is.null(self$`gene_counts`)) {
        V2reportsOrganelleObject[["gene_counts"]] <-
          self$`gene_counts`$toSimpleType()
      }
      if (!is.null(self$`length`)) {
        V2reportsOrganelleObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`topology`)) {
        V2reportsOrganelleObject[["topology"]] <-
          self$`topology`$toSimpleType()
      }
      if (!is.null(self$`gene_count`)) {
        V2reportsOrganelleObject[["gene_count"]] <-
          self$`gene_count`
      }
      return(V2reportsOrganelleObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelle
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelle
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`description`)) {
        `description_object` <- V2reportsOrganelleType$new()
        `description_object`$fromJSON(jsonlite::toJSON(this_object$`description`, auto_unbox = TRUE, digits = NA))
        self$`description` <- `description_object`
      }
      if (!is.null(this_object$`genbank`)) {
        `genbank_object` <- V2reportsSequenceInformation$new()
        `genbank_object`$fromJSON(jsonlite::toJSON(this_object$`genbank`, auto_unbox = TRUE, digits = NA))
        self$`genbank` <- `genbank_object`
      }
      if (!is.null(this_object$`refseq`)) {
        `refseq_object` <- V2reportsSequenceInformation$new()
        `refseq_object`$fromJSON(jsonlite::toJSON(this_object$`refseq`, auto_unbox = TRUE, digits = NA))
        self$`refseq` <- `refseq_object`
      }
      if (!is.null(this_object$`organism`)) {
        `organism_object` <- V2reportsOrganism$new()
        `organism_object`$fromJSON(jsonlite::toJSON(this_object$`organism`, auto_unbox = TRUE, digits = NA))
        self$`organism` <- `organism_object`
      }
      if (!is.null(this_object$`bioprojects`)) {
        self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[V2reportsBioProject]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`biosample`)) {
        `biosample_object` <- V2reportsOrganelleBiosample$new()
        `biosample_object`$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
        self$`biosample` <- `biosample_object`
      }
      if (!is.null(this_object$`gene_counts`)) {
        `gene_counts_object` <- V2reportsOrganelleGeneCounts$new()
        `gene_counts_object`$fromJSON(jsonlite::toJSON(this_object$`gene_counts`, auto_unbox = TRUE, digits = NA))
        self$`gene_counts` <- `gene_counts_object`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`topology`)) {
        `topology_object` <- V2reportsOrganelleTopology$new()
        `topology_object`$fromJSON(jsonlite::toJSON(this_object$`topology`, auto_unbox = TRUE, digits = NA))
        self$`topology` <- `topology_object`
      }
      if (!is.null(this_object$`gene_count`)) {
        self$`gene_count` <- this_object$`gene_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsOrganelle in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsOrganelle
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsOrganelle
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`description` <- V2reportsOrganelleType$new()$fromJSON(jsonlite::toJSON(this_object$`description`, auto_unbox = TRUE, digits = NA))
      self$`genbank` <- V2reportsSequenceInformation$new()$fromJSON(jsonlite::toJSON(this_object$`genbank`, auto_unbox = TRUE, digits = NA))
      self$`refseq` <- V2reportsSequenceInformation$new()$fromJSON(jsonlite::toJSON(this_object$`refseq`, auto_unbox = TRUE, digits = NA))
      self$`organism` <- V2reportsOrganism$new()$fromJSON(jsonlite::toJSON(this_object$`organism`, auto_unbox = TRUE, digits = NA))
      self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[V2reportsBioProject]", loadNamespace("ncbiopenapi"))
      self$`biosample` <- V2reportsOrganelleBiosample$new()$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
      self$`gene_counts` <- V2reportsOrganelleGeneCounts$new()$fromJSON(jsonlite::toJSON(this_object$`gene_counts`, auto_unbox = TRUE, digits = NA))
      self$`length` <- this_object$`length`
      self$`topology` <- V2reportsOrganelleTopology$new()$fromJSON(jsonlite::toJSON(this_object$`topology`, auto_unbox = TRUE, digits = NA))
      self$`gene_count` <- this_object$`gene_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsOrganelle and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsOrganelle
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
# V2reportsOrganelle$unlock()
#
## Below is an example to define the print function
# V2reportsOrganelle$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsOrganelle$lock()

