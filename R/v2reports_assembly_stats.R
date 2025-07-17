#' Create a new V2reportsAssemblyStats
#'
#' @description
#' V2reportsAssemblyStats Class
#'
#' @docType class
#' @title V2reportsAssemblyStats
#' @description V2reportsAssemblyStats Class
#' @format An \code{R6Class} generator object
#' @field total_number_of_chromosomes  integer [optional]
#' @field total_sequence_length  character [optional]
#' @field total_ungapped_length  character [optional]
#' @field number_of_contigs  integer [optional]
#' @field contig_n50  integer [optional]
#' @field contig_l50  integer [optional]
#' @field number_of_scaffolds  integer [optional]
#' @field scaffold_n50  integer [optional]
#' @field scaffold_l50  integer [optional]
#' @field gaps_between_scaffolds_count  integer [optional]
#' @field number_of_component_sequences  integer [optional]
#' @field atgc_count  character [optional]
#' @field gc_count  character [optional]
#' @field gc_percent  numeric [optional]
#' @field genome_coverage  character [optional]
#' @field number_of_organelles  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAssemblyStats <- R6::R6Class(
  "V2reportsAssemblyStats",
  public = list(
    `total_number_of_chromosomes` = NULL,
    `total_sequence_length` = NULL,
    `total_ungapped_length` = NULL,
    `number_of_contigs` = NULL,
    `contig_n50` = NULL,
    `contig_l50` = NULL,
    `number_of_scaffolds` = NULL,
    `scaffold_n50` = NULL,
    `scaffold_l50` = NULL,
    `gaps_between_scaffolds_count` = NULL,
    `number_of_component_sequences` = NULL,
    `atgc_count` = NULL,
    `gc_count` = NULL,
    `gc_percent` = NULL,
    `genome_coverage` = NULL,
    `number_of_organelles` = NULL,

    #' @description
    #' Initialize a new V2reportsAssemblyStats class.
    #'
    #' @param total_number_of_chromosomes total_number_of_chromosomes
    #' @param total_sequence_length total_sequence_length
    #' @param total_ungapped_length total_ungapped_length
    #' @param number_of_contigs number_of_contigs
    #' @param contig_n50 contig_n50
    #' @param contig_l50 contig_l50
    #' @param number_of_scaffolds number_of_scaffolds
    #' @param scaffold_n50 scaffold_n50
    #' @param scaffold_l50 scaffold_l50
    #' @param gaps_between_scaffolds_count gaps_between_scaffolds_count
    #' @param number_of_component_sequences number_of_component_sequences
    #' @param atgc_count atgc_count
    #' @param gc_count gc_count
    #' @param gc_percent gc_percent
    #' @param genome_coverage genome_coverage
    #' @param number_of_organelles number_of_organelles
    #' @param ... Other optional arguments.
    initialize = function(`total_number_of_chromosomes` = NULL, `total_sequence_length` = NULL, `total_ungapped_length` = NULL, `number_of_contigs` = NULL, `contig_n50` = NULL, `contig_l50` = NULL, `number_of_scaffolds` = NULL, `scaffold_n50` = NULL, `scaffold_l50` = NULL, `gaps_between_scaffolds_count` = NULL, `number_of_component_sequences` = NULL, `atgc_count` = NULL, `gc_count` = NULL, `gc_percent` = NULL, `genome_coverage` = NULL, `number_of_organelles` = NULL, ...) {
      if (!is.null(`total_number_of_chromosomes`)) {
        if (!(is.numeric(`total_number_of_chromosomes`) && length(`total_number_of_chromosomes`) == 1)) {
          stop(paste("Error! Invalid data for `total_number_of_chromosomes`. Must be an integer:", `total_number_of_chromosomes`))
        }
        self$`total_number_of_chromosomes` <- `total_number_of_chromosomes`
      }
      if (!is.null(`total_sequence_length`)) {
        if (!(is.character(`total_sequence_length`) && length(`total_sequence_length`) == 1)) {
          stop(paste("Error! Invalid data for `total_sequence_length`. Must be a string:", `total_sequence_length`))
        }
        self$`total_sequence_length` <- `total_sequence_length`
      }
      if (!is.null(`total_ungapped_length`)) {
        if (!(is.character(`total_ungapped_length`) && length(`total_ungapped_length`) == 1)) {
          stop(paste("Error! Invalid data for `total_ungapped_length`. Must be a string:", `total_ungapped_length`))
        }
        self$`total_ungapped_length` <- `total_ungapped_length`
      }
      if (!is.null(`number_of_contigs`)) {
        if (!(is.numeric(`number_of_contigs`) && length(`number_of_contigs`) == 1)) {
          stop(paste("Error! Invalid data for `number_of_contigs`. Must be an integer:", `number_of_contigs`))
        }
        self$`number_of_contigs` <- `number_of_contigs`
      }
      if (!is.null(`contig_n50`)) {
        if (!(is.numeric(`contig_n50`) && length(`contig_n50`) == 1)) {
          stop(paste("Error! Invalid data for `contig_n50`. Must be an integer:", `contig_n50`))
        }
        self$`contig_n50` <- `contig_n50`
      }
      if (!is.null(`contig_l50`)) {
        if (!(is.numeric(`contig_l50`) && length(`contig_l50`) == 1)) {
          stop(paste("Error! Invalid data for `contig_l50`. Must be an integer:", `contig_l50`))
        }
        self$`contig_l50` <- `contig_l50`
      }
      if (!is.null(`number_of_scaffolds`)) {
        if (!(is.numeric(`number_of_scaffolds`) && length(`number_of_scaffolds`) == 1)) {
          stop(paste("Error! Invalid data for `number_of_scaffolds`. Must be an integer:", `number_of_scaffolds`))
        }
        self$`number_of_scaffolds` <- `number_of_scaffolds`
      }
      if (!is.null(`scaffold_n50`)) {
        if (!(is.numeric(`scaffold_n50`) && length(`scaffold_n50`) == 1)) {
          stop(paste("Error! Invalid data for `scaffold_n50`. Must be an integer:", `scaffold_n50`))
        }
        self$`scaffold_n50` <- `scaffold_n50`
      }
      if (!is.null(`scaffold_l50`)) {
        if (!(is.numeric(`scaffold_l50`) && length(`scaffold_l50`) == 1)) {
          stop(paste("Error! Invalid data for `scaffold_l50`. Must be an integer:", `scaffold_l50`))
        }
        self$`scaffold_l50` <- `scaffold_l50`
      }
      if (!is.null(`gaps_between_scaffolds_count`)) {
        if (!(is.numeric(`gaps_between_scaffolds_count`) && length(`gaps_between_scaffolds_count`) == 1)) {
          stop(paste("Error! Invalid data for `gaps_between_scaffolds_count`. Must be an integer:", `gaps_between_scaffolds_count`))
        }
        self$`gaps_between_scaffolds_count` <- `gaps_between_scaffolds_count`
      }
      if (!is.null(`number_of_component_sequences`)) {
        if (!(is.numeric(`number_of_component_sequences`) && length(`number_of_component_sequences`) == 1)) {
          stop(paste("Error! Invalid data for `number_of_component_sequences`. Must be an integer:", `number_of_component_sequences`))
        }
        self$`number_of_component_sequences` <- `number_of_component_sequences`
      }
      if (!is.null(`atgc_count`)) {
        if (!(is.character(`atgc_count`) && length(`atgc_count`) == 1)) {
          stop(paste("Error! Invalid data for `atgc_count`. Must be a string:", `atgc_count`))
        }
        self$`atgc_count` <- `atgc_count`
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
      if (!is.null(`genome_coverage`)) {
        if (!(is.character(`genome_coverage`) && length(`genome_coverage`) == 1)) {
          stop(paste("Error! Invalid data for `genome_coverage`. Must be a string:", `genome_coverage`))
        }
        self$`genome_coverage` <- `genome_coverage`
      }
      if (!is.null(`number_of_organelles`)) {
        if (!(is.numeric(`number_of_organelles`) && length(`number_of_organelles`) == 1)) {
          stop(paste("Error! Invalid data for `number_of_organelles`. Must be an integer:", `number_of_organelles`))
        }
        self$`number_of_organelles` <- `number_of_organelles`
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
    #' @return V2reportsAssemblyStats as a base R list.
    #' @examples
    #' # convert array of V2reportsAssemblyStats (x) to a data frame
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
    #' Convert V2reportsAssemblyStats to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAssemblyStatsObject <- list()
      if (!is.null(self$`total_number_of_chromosomes`)) {
        V2reportsAssemblyStatsObject[["total_number_of_chromosomes"]] <-
          self$`total_number_of_chromosomes`
      }
      if (!is.null(self$`total_sequence_length`)) {
        V2reportsAssemblyStatsObject[["total_sequence_length"]] <-
          self$`total_sequence_length`
      }
      if (!is.null(self$`total_ungapped_length`)) {
        V2reportsAssemblyStatsObject[["total_ungapped_length"]] <-
          self$`total_ungapped_length`
      }
      if (!is.null(self$`number_of_contigs`)) {
        V2reportsAssemblyStatsObject[["number_of_contigs"]] <-
          self$`number_of_contigs`
      }
      if (!is.null(self$`contig_n50`)) {
        V2reportsAssemblyStatsObject[["contig_n50"]] <-
          self$`contig_n50`
      }
      if (!is.null(self$`contig_l50`)) {
        V2reportsAssemblyStatsObject[["contig_l50"]] <-
          self$`contig_l50`
      }
      if (!is.null(self$`number_of_scaffolds`)) {
        V2reportsAssemblyStatsObject[["number_of_scaffolds"]] <-
          self$`number_of_scaffolds`
      }
      if (!is.null(self$`scaffold_n50`)) {
        V2reportsAssemblyStatsObject[["scaffold_n50"]] <-
          self$`scaffold_n50`
      }
      if (!is.null(self$`scaffold_l50`)) {
        V2reportsAssemblyStatsObject[["scaffold_l50"]] <-
          self$`scaffold_l50`
      }
      if (!is.null(self$`gaps_between_scaffolds_count`)) {
        V2reportsAssemblyStatsObject[["gaps_between_scaffolds_count"]] <-
          self$`gaps_between_scaffolds_count`
      }
      if (!is.null(self$`number_of_component_sequences`)) {
        V2reportsAssemblyStatsObject[["number_of_component_sequences"]] <-
          self$`number_of_component_sequences`
      }
      if (!is.null(self$`atgc_count`)) {
        V2reportsAssemblyStatsObject[["atgc_count"]] <-
          self$`atgc_count`
      }
      if (!is.null(self$`gc_count`)) {
        V2reportsAssemblyStatsObject[["gc_count"]] <-
          self$`gc_count`
      }
      if (!is.null(self$`gc_percent`)) {
        V2reportsAssemblyStatsObject[["gc_percent"]] <-
          self$`gc_percent`
      }
      if (!is.null(self$`genome_coverage`)) {
        V2reportsAssemblyStatsObject[["genome_coverage"]] <-
          self$`genome_coverage`
      }
      if (!is.null(self$`number_of_organelles`)) {
        V2reportsAssemblyStatsObject[["number_of_organelles"]] <-
          self$`number_of_organelles`
      }
      return(V2reportsAssemblyStatsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyStats
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total_number_of_chromosomes`)) {
        self$`total_number_of_chromosomes` <- this_object$`total_number_of_chromosomes`
      }
      if (!is.null(this_object$`total_sequence_length`)) {
        self$`total_sequence_length` <- this_object$`total_sequence_length`
      }
      if (!is.null(this_object$`total_ungapped_length`)) {
        self$`total_ungapped_length` <- this_object$`total_ungapped_length`
      }
      if (!is.null(this_object$`number_of_contigs`)) {
        self$`number_of_contigs` <- this_object$`number_of_contigs`
      }
      if (!is.null(this_object$`contig_n50`)) {
        self$`contig_n50` <- this_object$`contig_n50`
      }
      if (!is.null(this_object$`contig_l50`)) {
        self$`contig_l50` <- this_object$`contig_l50`
      }
      if (!is.null(this_object$`number_of_scaffolds`)) {
        self$`number_of_scaffolds` <- this_object$`number_of_scaffolds`
      }
      if (!is.null(this_object$`scaffold_n50`)) {
        self$`scaffold_n50` <- this_object$`scaffold_n50`
      }
      if (!is.null(this_object$`scaffold_l50`)) {
        self$`scaffold_l50` <- this_object$`scaffold_l50`
      }
      if (!is.null(this_object$`gaps_between_scaffolds_count`)) {
        self$`gaps_between_scaffolds_count` <- this_object$`gaps_between_scaffolds_count`
      }
      if (!is.null(this_object$`number_of_component_sequences`)) {
        self$`number_of_component_sequences` <- this_object$`number_of_component_sequences`
      }
      if (!is.null(this_object$`atgc_count`)) {
        self$`atgc_count` <- this_object$`atgc_count`
      }
      if (!is.null(this_object$`gc_count`)) {
        self$`gc_count` <- this_object$`gc_count`
      }
      if (!is.null(this_object$`gc_percent`)) {
        self$`gc_percent` <- this_object$`gc_percent`
      }
      if (!is.null(this_object$`genome_coverage`)) {
        self$`genome_coverage` <- this_object$`genome_coverage`
      }
      if (!is.null(this_object$`number_of_organelles`)) {
        self$`number_of_organelles` <- this_object$`number_of_organelles`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAssemblyStats in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyStats
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total_number_of_chromosomes` <- this_object$`total_number_of_chromosomes`
      self$`total_sequence_length` <- this_object$`total_sequence_length`
      self$`total_ungapped_length` <- this_object$`total_ungapped_length`
      self$`number_of_contigs` <- this_object$`number_of_contigs`
      self$`contig_n50` <- this_object$`contig_n50`
      self$`contig_l50` <- this_object$`contig_l50`
      self$`number_of_scaffolds` <- this_object$`number_of_scaffolds`
      self$`scaffold_n50` <- this_object$`scaffold_n50`
      self$`scaffold_l50` <- this_object$`scaffold_l50`
      self$`gaps_between_scaffolds_count` <- this_object$`gaps_between_scaffolds_count`
      self$`number_of_component_sequences` <- this_object$`number_of_component_sequences`
      self$`atgc_count` <- this_object$`atgc_count`
      self$`gc_count` <- this_object$`gc_count`
      self$`gc_percent` <- this_object$`gc_percent`
      self$`genome_coverage` <- this_object$`genome_coverage`
      self$`number_of_organelles` <- this_object$`number_of_organelles`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAssemblyStats and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAssemblyStats
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
# V2reportsAssemblyStats$unlock()
#
## Below is an example to define the print function
# V2reportsAssemblyStats$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAssemblyStats$lock()

