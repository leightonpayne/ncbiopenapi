#' Create a new V2TaxonomyNode
#'
#' @description
#' V2TaxonomyNode Class
#'
#' @docType class
#' @title V2TaxonomyNode
#' @description V2TaxonomyNode Class
#' @format An \code{R6Class} generator object
#' @field tax_id  integer [optional]
#' @field organism_name  character [optional]
#' @field common_name  character [optional]
#' @field genbank_common_name  character [optional]
#' @field acronyms  list(character) [optional]
#' @field genbank_acronym  character [optional]
#' @field blast_name  character [optional]
#' @field lineage  list(integer) [optional]
#' @field children  list(integer) [optional]
#' @field descendent_with_described_species_names_count  integer [optional]
#' @field rank  \link{V2reportsRankType} [optional]
#' @field has_described_species_name  character [optional]
#' @field counts  list(\link{V2TaxonomyNodeCountByType}) [optional]
#' @field min_ord  integer [optional]
#' @field max_ord  integer [optional]
#' @field extinct  character [optional]
#' @field genomic_moltype  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2TaxonomyNode <- R6::R6Class(
  "V2TaxonomyNode",
  public = list(
    `tax_id` = NULL,
    `organism_name` = NULL,
    `common_name` = NULL,
    `genbank_common_name` = NULL,
    `acronyms` = NULL,
    `genbank_acronym` = NULL,
    `blast_name` = NULL,
    `lineage` = NULL,
    `children` = NULL,
    `descendent_with_described_species_names_count` = NULL,
    `rank` = NULL,
    `has_described_species_name` = NULL,
    `counts` = NULL,
    `min_ord` = NULL,
    `max_ord` = NULL,
    `extinct` = NULL,
    `genomic_moltype` = NULL,

    #' @description
    #' Initialize a new V2TaxonomyNode class.
    #'
    #' @param tax_id tax_id
    #' @param organism_name organism_name
    #' @param common_name common_name
    #' @param genbank_common_name genbank_common_name
    #' @param acronyms acronyms
    #' @param genbank_acronym genbank_acronym
    #' @param blast_name blast_name
    #' @param lineage lineage
    #' @param children children
    #' @param descendent_with_described_species_names_count descendent_with_described_species_names_count
    #' @param rank rank
    #' @param has_described_species_name has_described_species_name
    #' @param counts counts
    #' @param min_ord min_ord
    #' @param max_ord max_ord
    #' @param extinct extinct
    #' @param genomic_moltype genomic_moltype
    #' @param ... Other optional arguments.
    initialize = function(`tax_id` = NULL, `organism_name` = NULL, `common_name` = NULL, `genbank_common_name` = NULL, `acronyms` = NULL, `genbank_acronym` = NULL, `blast_name` = NULL, `lineage` = NULL, `children` = NULL, `descendent_with_described_species_names_count` = NULL, `rank` = NULL, `has_described_species_name` = NULL, `counts` = NULL, `min_ord` = NULL, `max_ord` = NULL, `extinct` = NULL, `genomic_moltype` = NULL, ...) {
      if (!is.null(`tax_id`)) {
        if (!(is.numeric(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be an integer:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`organism_name`)) {
        if (!(is.character(`organism_name`) && length(`organism_name`) == 1)) {
          stop(paste("Error! Invalid data for `organism_name`. Must be a string:", `organism_name`))
        }
        self$`organism_name` <- `organism_name`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
      }
      if (!is.null(`genbank_common_name`)) {
        if (!(is.character(`genbank_common_name`) && length(`genbank_common_name`) == 1)) {
          stop(paste("Error! Invalid data for `genbank_common_name`. Must be a string:", `genbank_common_name`))
        }
        self$`genbank_common_name` <- `genbank_common_name`
      }
      if (!is.null(`acronyms`)) {
        stopifnot(is.vector(`acronyms`), length(`acronyms`) != 0)
        sapply(`acronyms`, function(x) stopifnot(is.character(x)))
        self$`acronyms` <- `acronyms`
      }
      if (!is.null(`genbank_acronym`)) {
        if (!(is.character(`genbank_acronym`) && length(`genbank_acronym`) == 1)) {
          stop(paste("Error! Invalid data for `genbank_acronym`. Must be a string:", `genbank_acronym`))
        }
        self$`genbank_acronym` <- `genbank_acronym`
      }
      if (!is.null(`blast_name`)) {
        if (!(is.character(`blast_name`) && length(`blast_name`) == 1)) {
          stop(paste("Error! Invalid data for `blast_name`. Must be a string:", `blast_name`))
        }
        self$`blast_name` <- `blast_name`
      }
      if (!is.null(`lineage`)) {
        stopifnot(is.vector(`lineage`), length(`lineage`) != 0)
        sapply(`lineage`, function(x) stopifnot(is.character(x)))
        self$`lineage` <- `lineage`
      }
      if (!is.null(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(is.character(x)))
        self$`children` <- `children`
      }
      if (!is.null(`descendent_with_described_species_names_count`)) {
        if (!(is.numeric(`descendent_with_described_species_names_count`) && length(`descendent_with_described_species_names_count`) == 1)) {
          stop(paste("Error! Invalid data for `descendent_with_described_species_names_count`. Must be an integer:", `descendent_with_described_species_names_count`))
        }
        self$`descendent_with_described_species_names_count` <- `descendent_with_described_species_names_count`
      }
      if (!is.null(`rank`)) {
        if (!(`rank` %in% c())) {
          stop(paste("Error! \"", `rank`, "\" cannot be assigned to `rank`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`rank`))
        self$`rank` <- `rank`
      }
      if (!is.null(`has_described_species_name`)) {
        if (!(is.logical(`has_described_species_name`) && length(`has_described_species_name`) == 1)) {
          stop(paste("Error! Invalid data for `has_described_species_name`. Must be a boolean:", `has_described_species_name`))
        }
        self$`has_described_species_name` <- `has_described_species_name`
      }
      if (!is.null(`counts`)) {
        stopifnot(is.vector(`counts`), length(`counts`) != 0)
        sapply(`counts`, function(x) stopifnot(R6::is.R6(x)))
        self$`counts` <- `counts`
      }
      if (!is.null(`min_ord`)) {
        if (!(is.numeric(`min_ord`) && length(`min_ord`) == 1)) {
          stop(paste("Error! Invalid data for `min_ord`. Must be an integer:", `min_ord`))
        }
        self$`min_ord` <- `min_ord`
      }
      if (!is.null(`max_ord`)) {
        if (!(is.numeric(`max_ord`) && length(`max_ord`) == 1)) {
          stop(paste("Error! Invalid data for `max_ord`. Must be an integer:", `max_ord`))
        }
        self$`max_ord` <- `max_ord`
      }
      if (!is.null(`extinct`)) {
        if (!(is.logical(`extinct`) && length(`extinct`) == 1)) {
          stop(paste("Error! Invalid data for `extinct`. Must be a boolean:", `extinct`))
        }
        self$`extinct` <- `extinct`
      }
      if (!is.null(`genomic_moltype`)) {
        if (!(is.character(`genomic_moltype`) && length(`genomic_moltype`) == 1)) {
          stop(paste("Error! Invalid data for `genomic_moltype`. Must be a string:", `genomic_moltype`))
        }
        self$`genomic_moltype` <- `genomic_moltype`
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
    #' @return V2TaxonomyNode as a base R list.
    #' @examples
    #' # convert array of V2TaxonomyNode (x) to a data frame
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
    #' Convert V2TaxonomyNode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2TaxonomyNodeObject <- list()
      if (!is.null(self$`tax_id`)) {
        V2TaxonomyNodeObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`organism_name`)) {
        V2TaxonomyNodeObject[["organism_name"]] <-
          self$`organism_name`
      }
      if (!is.null(self$`common_name`)) {
        V2TaxonomyNodeObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`genbank_common_name`)) {
        V2TaxonomyNodeObject[["genbank_common_name"]] <-
          self$`genbank_common_name`
      }
      if (!is.null(self$`acronyms`)) {
        V2TaxonomyNodeObject[["acronyms"]] <-
          self$`acronyms`
      }
      if (!is.null(self$`genbank_acronym`)) {
        V2TaxonomyNodeObject[["genbank_acronym"]] <-
          self$`genbank_acronym`
      }
      if (!is.null(self$`blast_name`)) {
        V2TaxonomyNodeObject[["blast_name"]] <-
          self$`blast_name`
      }
      if (!is.null(self$`lineage`)) {
        V2TaxonomyNodeObject[["lineage"]] <-
          self$`lineage`
      }
      if (!is.null(self$`children`)) {
        V2TaxonomyNodeObject[["children"]] <-
          self$`children`
      }
      if (!is.null(self$`descendent_with_described_species_names_count`)) {
        V2TaxonomyNodeObject[["descendent_with_described_species_names_count"]] <-
          self$`descendent_with_described_species_names_count`
      }
      if (!is.null(self$`rank`)) {
        V2TaxonomyNodeObject[["rank"]] <-
          self$`rank`$toSimpleType()
      }
      if (!is.null(self$`has_described_species_name`)) {
        V2TaxonomyNodeObject[["has_described_species_name"]] <-
          self$`has_described_species_name`
      }
      if (!is.null(self$`counts`)) {
        V2TaxonomyNodeObject[["counts"]] <-
          lapply(self$`counts`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`min_ord`)) {
        V2TaxonomyNodeObject[["min_ord"]] <-
          self$`min_ord`
      }
      if (!is.null(self$`max_ord`)) {
        V2TaxonomyNodeObject[["max_ord"]] <-
          self$`max_ord`
      }
      if (!is.null(self$`extinct`)) {
        V2TaxonomyNodeObject[["extinct"]] <-
          self$`extinct`
      }
      if (!is.null(self$`genomic_moltype`)) {
        V2TaxonomyNodeObject[["genomic_moltype"]] <-
          self$`genomic_moltype`
      }
      return(V2TaxonomyNodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyNode
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`organism_name`)) {
        self$`organism_name` <- this_object$`organism_name`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`genbank_common_name`)) {
        self$`genbank_common_name` <- this_object$`genbank_common_name`
      }
      if (!is.null(this_object$`acronyms`)) {
        self$`acronyms` <- ApiClient$new()$deserializeObj(this_object$`acronyms`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`genbank_acronym`)) {
        self$`genbank_acronym` <- this_object$`genbank_acronym`
      }
      if (!is.null(this_object$`blast_name`)) {
        self$`blast_name` <- this_object$`blast_name`
      }
      if (!is.null(this_object$`lineage`)) {
        self$`lineage` <- ApiClient$new()$deserializeObj(this_object$`lineage`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[integer]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`descendent_with_described_species_names_count`)) {
        self$`descendent_with_described_species_names_count` <- this_object$`descendent_with_described_species_names_count`
      }
      if (!is.null(this_object$`rank`)) {
        `rank_object` <- V2reportsRankType$new()
        `rank_object`$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
        self$`rank` <- `rank_object`
      }
      if (!is.null(this_object$`has_described_species_name`)) {
        self$`has_described_species_name` <- this_object$`has_described_species_name`
      }
      if (!is.null(this_object$`counts`)) {
        self$`counts` <- ApiClient$new()$deserializeObj(this_object$`counts`, "array[V2TaxonomyNodeCountByType]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`min_ord`)) {
        self$`min_ord` <- this_object$`min_ord`
      }
      if (!is.null(this_object$`max_ord`)) {
        self$`max_ord` <- this_object$`max_ord`
      }
      if (!is.null(this_object$`extinct`)) {
        self$`extinct` <- this_object$`extinct`
      }
      if (!is.null(this_object$`genomic_moltype`)) {
        self$`genomic_moltype` <- this_object$`genomic_moltype`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2TaxonomyNode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2TaxonomyNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2TaxonomyNode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`tax_id` <- this_object$`tax_id`
      self$`organism_name` <- this_object$`organism_name`
      self$`common_name` <- this_object$`common_name`
      self$`genbank_common_name` <- this_object$`genbank_common_name`
      self$`acronyms` <- ApiClient$new()$deserializeObj(this_object$`acronyms`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`genbank_acronym` <- this_object$`genbank_acronym`
      self$`blast_name` <- this_object$`blast_name`
      self$`lineage` <- ApiClient$new()$deserializeObj(this_object$`lineage`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[integer]", loadNamespace("ncbiopenapi"))
      self$`descendent_with_described_species_names_count` <- this_object$`descendent_with_described_species_names_count`
      self$`rank` <- V2reportsRankType$new()$fromJSON(jsonlite::toJSON(this_object$`rank`, auto_unbox = TRUE, digits = NA))
      self$`has_described_species_name` <- this_object$`has_described_species_name`
      self$`counts` <- ApiClient$new()$deserializeObj(this_object$`counts`, "array[V2TaxonomyNodeCountByType]", loadNamespace("ncbiopenapi"))
      self$`min_ord` <- this_object$`min_ord`
      self$`max_ord` <- this_object$`max_ord`
      self$`extinct` <- this_object$`extinct`
      self$`genomic_moltype` <- this_object$`genomic_moltype`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2TaxonomyNode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2TaxonomyNode
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
# V2TaxonomyNode$unlock()
#
## Below is an example to define the print function
# V2TaxonomyNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2TaxonomyNode$lock()

