#' Create a new V2reportsSequenceInfo
#'
#' @description
#' V2reportsSequenceInfo Class
#'
#' @docType class
#' @title V2reportsSequenceInfo
#' @description V2reportsSequenceInfo Class
#' @format An \code{R6Class} generator object
#' @field assembly_accession  character [optional]
#' @field chr_name  character [optional]
#' @field ucsc_style_name  character [optional]
#' @field sort_order  integer [optional]
#' @field assigned_molecule_location_type  character [optional]
#' @field refseq_accession  character [optional]
#' @field assembly_unit  character [optional]
#' @field length  integer [optional]
#' @field genbank_accession  character [optional]
#' @field gc_count  character [optional]
#' @field gc_percent  numeric [optional]
#' @field unlocalized_count  integer [optional]
#' @field assembly_unplaced_count  integer [optional]
#' @field role  character [optional]
#' @field sequence_name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsSequenceInfo <- R6::R6Class(
  "V2reportsSequenceInfo",
  public = list(
    `assembly_accession` = NULL,
    `chr_name` = NULL,
    `ucsc_style_name` = NULL,
    `sort_order` = NULL,
    `assigned_molecule_location_type` = NULL,
    `refseq_accession` = NULL,
    `assembly_unit` = NULL,
    `length` = NULL,
    `genbank_accession` = NULL,
    `gc_count` = NULL,
    `gc_percent` = NULL,
    `unlocalized_count` = NULL,
    `assembly_unplaced_count` = NULL,
    `role` = NULL,
    `sequence_name` = NULL,

    #' @description
    #' Initialize a new V2reportsSequenceInfo class.
    #'
    #' @param assembly_accession assembly_accession
    #' @param chr_name chr_name
    #' @param ucsc_style_name ucsc_style_name
    #' @param sort_order sort_order
    #' @param assigned_molecule_location_type assigned_molecule_location_type
    #' @param refseq_accession refseq_accession
    #' @param assembly_unit assembly_unit
    #' @param length length
    #' @param genbank_accession genbank_accession
    #' @param gc_count gc_count
    #' @param gc_percent gc_percent
    #' @param unlocalized_count unlocalized_count
    #' @param assembly_unplaced_count assembly_unplaced_count
    #' @param role role
    #' @param sequence_name sequence_name
    #' @param ... Other optional arguments.
    initialize = function(`assembly_accession` = NULL, `chr_name` = NULL, `ucsc_style_name` = NULL, `sort_order` = NULL, `assigned_molecule_location_type` = NULL, `refseq_accession` = NULL, `assembly_unit` = NULL, `length` = NULL, `genbank_accession` = NULL, `gc_count` = NULL, `gc_percent` = NULL, `unlocalized_count` = NULL, `assembly_unplaced_count` = NULL, `role` = NULL, `sequence_name` = NULL, ...) {
      if (!is.null(`assembly_accession`)) {
        if (!(is.character(`assembly_accession`) && length(`assembly_accession`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_accession`. Must be a string:", `assembly_accession`))
        }
        self$`assembly_accession` <- `assembly_accession`
      }
      if (!is.null(`chr_name`)) {
        if (!(is.character(`chr_name`) && length(`chr_name`) == 1)) {
          stop(paste("Error! Invalid data for `chr_name`. Must be a string:", `chr_name`))
        }
        self$`chr_name` <- `chr_name`
      }
      if (!is.null(`ucsc_style_name`)) {
        if (!(is.character(`ucsc_style_name`) && length(`ucsc_style_name`) == 1)) {
          stop(paste("Error! Invalid data for `ucsc_style_name`. Must be a string:", `ucsc_style_name`))
        }
        self$`ucsc_style_name` <- `ucsc_style_name`
      }
      if (!is.null(`sort_order`)) {
        if (!(is.numeric(`sort_order`) && length(`sort_order`) == 1)) {
          stop(paste("Error! Invalid data for `sort_order`. Must be an integer:", `sort_order`))
        }
        self$`sort_order` <- `sort_order`
      }
      if (!is.null(`assigned_molecule_location_type`)) {
        if (!(is.character(`assigned_molecule_location_type`) && length(`assigned_molecule_location_type`) == 1)) {
          stop(paste("Error! Invalid data for `assigned_molecule_location_type`. Must be a string:", `assigned_molecule_location_type`))
        }
        self$`assigned_molecule_location_type` <- `assigned_molecule_location_type`
      }
      if (!is.null(`refseq_accession`)) {
        if (!(is.character(`refseq_accession`) && length(`refseq_accession`) == 1)) {
          stop(paste("Error! Invalid data for `refseq_accession`. Must be a string:", `refseq_accession`))
        }
        self$`refseq_accession` <- `refseq_accession`
      }
      if (!is.null(`assembly_unit`)) {
        if (!(is.character(`assembly_unit`) && length(`assembly_unit`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_unit`. Must be a string:", `assembly_unit`))
        }
        self$`assembly_unit` <- `assembly_unit`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`genbank_accession`)) {
        if (!(is.character(`genbank_accession`) && length(`genbank_accession`) == 1)) {
          stop(paste("Error! Invalid data for `genbank_accession`. Must be a string:", `genbank_accession`))
        }
        self$`genbank_accession` <- `genbank_accession`
      }
      if (!is.null(`gc_count`)) {
        if (!(is.character(`gc_count`) && length(`gc_count`) == 1)) {
          stop(paste("Error! Invalid data for `gc_count`. Must be a string:", `gc_count`))
        }
        self$`gc_count` <- `gc_count`
      }
      if (!is.null(`gc_percent`)) {
        if (!(is.numeric(`gc_percent`) && length(`gc_percent`) == 1)) {
          stop(paste("Error! Invalid data for `gc_percent`. Must be a number:", `gc_percent`))
        }
        self$`gc_percent` <- `gc_percent`
      }
      if (!is.null(`unlocalized_count`)) {
        if (!(is.numeric(`unlocalized_count`) && length(`unlocalized_count`) == 1)) {
          stop(paste("Error! Invalid data for `unlocalized_count`. Must be an integer:", `unlocalized_count`))
        }
        self$`unlocalized_count` <- `unlocalized_count`
      }
      if (!is.null(`assembly_unplaced_count`)) {
        if (!(is.numeric(`assembly_unplaced_count`) && length(`assembly_unplaced_count`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_unplaced_count`. Must be an integer:", `assembly_unplaced_count`))
        }
        self$`assembly_unplaced_count` <- `assembly_unplaced_count`
      }
      if (!is.null(`role`)) {
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!is.null(`sequence_name`)) {
        if (!(is.character(`sequence_name`) && length(`sequence_name`) == 1)) {
          stop(paste("Error! Invalid data for `sequence_name`. Must be a string:", `sequence_name`))
        }
        self$`sequence_name` <- `sequence_name`
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
    #' @return V2reportsSequenceInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsSequenceInfo (x) to a data frame
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
    #' Convert V2reportsSequenceInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsSequenceInfoObject <- list()
      if (!is.null(self$`assembly_accession`)) {
        V2reportsSequenceInfoObject[["assembly_accession"]] <-
          self$`assembly_accession`
      }
      if (!is.null(self$`chr_name`)) {
        V2reportsSequenceInfoObject[["chr_name"]] <-
          self$`chr_name`
      }
      if (!is.null(self$`ucsc_style_name`)) {
        V2reportsSequenceInfoObject[["ucsc_style_name"]] <-
          self$`ucsc_style_name`
      }
      if (!is.null(self$`sort_order`)) {
        V2reportsSequenceInfoObject[["sort_order"]] <-
          self$`sort_order`
      }
      if (!is.null(self$`assigned_molecule_location_type`)) {
        V2reportsSequenceInfoObject[["assigned_molecule_location_type"]] <-
          self$`assigned_molecule_location_type`
      }
      if (!is.null(self$`refseq_accession`)) {
        V2reportsSequenceInfoObject[["refseq_accession"]] <-
          self$`refseq_accession`
      }
      if (!is.null(self$`assembly_unit`)) {
        V2reportsSequenceInfoObject[["assembly_unit"]] <-
          self$`assembly_unit`
      }
      if (!is.null(self$`length`)) {
        V2reportsSequenceInfoObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`genbank_accession`)) {
        V2reportsSequenceInfoObject[["genbank_accession"]] <-
          self$`genbank_accession`
      }
      if (!is.null(self$`gc_count`)) {
        V2reportsSequenceInfoObject[["gc_count"]] <-
          self$`gc_count`
      }
      if (!is.null(self$`gc_percent`)) {
        V2reportsSequenceInfoObject[["gc_percent"]] <-
          self$`gc_percent`
      }
      if (!is.null(self$`unlocalized_count`)) {
        V2reportsSequenceInfoObject[["unlocalized_count"]] <-
          self$`unlocalized_count`
      }
      if (!is.null(self$`assembly_unplaced_count`)) {
        V2reportsSequenceInfoObject[["assembly_unplaced_count"]] <-
          self$`assembly_unplaced_count`
      }
      if (!is.null(self$`role`)) {
        V2reportsSequenceInfoObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`sequence_name`)) {
        V2reportsSequenceInfoObject[["sequence_name"]] <-
          self$`sequence_name`
      }
      return(V2reportsSequenceInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSequenceInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSequenceInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_accession`)) {
        self$`assembly_accession` <- this_object$`assembly_accession`
      }
      if (!is.null(this_object$`chr_name`)) {
        self$`chr_name` <- this_object$`chr_name`
      }
      if (!is.null(this_object$`ucsc_style_name`)) {
        self$`ucsc_style_name` <- this_object$`ucsc_style_name`
      }
      if (!is.null(this_object$`sort_order`)) {
        self$`sort_order` <- this_object$`sort_order`
      }
      if (!is.null(this_object$`assigned_molecule_location_type`)) {
        self$`assigned_molecule_location_type` <- this_object$`assigned_molecule_location_type`
      }
      if (!is.null(this_object$`refseq_accession`)) {
        self$`refseq_accession` <- this_object$`refseq_accession`
      }
      if (!is.null(this_object$`assembly_unit`)) {
        self$`assembly_unit` <- this_object$`assembly_unit`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`genbank_accession`)) {
        self$`genbank_accession` <- this_object$`genbank_accession`
      }
      if (!is.null(this_object$`gc_count`)) {
        self$`gc_count` <- this_object$`gc_count`
      }
      if (!is.null(this_object$`gc_percent`)) {
        self$`gc_percent` <- this_object$`gc_percent`
      }
      if (!is.null(this_object$`unlocalized_count`)) {
        self$`unlocalized_count` <- this_object$`unlocalized_count`
      }
      if (!is.null(this_object$`assembly_unplaced_count`)) {
        self$`assembly_unplaced_count` <- this_object$`assembly_unplaced_count`
      }
      if (!is.null(this_object$`role`)) {
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`sequence_name`)) {
        self$`sequence_name` <- this_object$`sequence_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsSequenceInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsSequenceInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsSequenceInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_accession` <- this_object$`assembly_accession`
      self$`chr_name` <- this_object$`chr_name`
      self$`ucsc_style_name` <- this_object$`ucsc_style_name`
      self$`sort_order` <- this_object$`sort_order`
      self$`assigned_molecule_location_type` <- this_object$`assigned_molecule_location_type`
      self$`refseq_accession` <- this_object$`refseq_accession`
      self$`assembly_unit` <- this_object$`assembly_unit`
      self$`length` <- this_object$`length`
      self$`genbank_accession` <- this_object$`genbank_accession`
      self$`gc_count` <- this_object$`gc_count`
      self$`gc_percent` <- this_object$`gc_percent`
      self$`unlocalized_count` <- this_object$`unlocalized_count`
      self$`assembly_unplaced_count` <- this_object$`assembly_unplaced_count`
      self$`role` <- this_object$`role`
      self$`sequence_name` <- this_object$`sequence_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsSequenceInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsSequenceInfo
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
# V2reportsSequenceInfo$unlock()
#
## Below is an example to define the print function
# V2reportsSequenceInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsSequenceInfo$lock()

