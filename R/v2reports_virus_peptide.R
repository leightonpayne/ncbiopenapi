#' Create a new V2reportsVirusPeptide
#'
#' @description
#' V2reportsVirusPeptide Class
#'
#' @docType class
#' @title V2reportsVirusPeptide
#' @description V2reportsVirusPeptide Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field name  character [optional]
#' @field other_names  list(character) [optional]
#' @field nucleotide  \link{V2reportsSeqRangeSetFasta} [optional]
#' @field protein  \link{V2reportsSeqRangeSetFasta} [optional]
#' @field pdb_ids  list(character) [optional]
#' @field cdd  list(\link{V2reportsConservedDomain}) [optional]
#' @field uni_prot_kb  \link{V2reportsVirusPeptideUniProtId} [optional]
#' @field mature_peptide  list(\link{V2reportsVirusPeptide}) [optional]
#' @field protein_completeness  \link{V2reportsVirusPeptideViralPeptideCompleteness} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusPeptide <- R6::R6Class(
  "V2reportsVirusPeptide",
  public = list(
    `accession` = NULL,
    `name` = NULL,
    `other_names` = NULL,
    `nucleotide` = NULL,
    `protein` = NULL,
    `pdb_ids` = NULL,
    `cdd` = NULL,
    `uni_prot_kb` = NULL,
    `mature_peptide` = NULL,
    `protein_completeness` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusPeptide class.
    #'
    #' @param accession accession
    #' @param name name
    #' @param other_names other_names
    #' @param nucleotide nucleotide
    #' @param protein protein
    #' @param pdb_ids pdb_ids
    #' @param cdd cdd
    #' @param uni_prot_kb uni_prot_kb
    #' @param mature_peptide mature_peptide
    #' @param protein_completeness protein_completeness
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `name` = NULL, `other_names` = NULL, `nucleotide` = NULL, `protein` = NULL, `pdb_ids` = NULL, `cdd` = NULL, `uni_prot_kb` = NULL, `mature_peptide` = NULL, `protein_completeness` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`other_names`)) {
        stopifnot(is.vector(`other_names`), length(`other_names`) != 0)
        sapply(`other_names`, function(x) stopifnot(is.character(x)))
        self$`other_names` <- `other_names`
      }
      if (!is.null(`nucleotide`)) {
        stopifnot(R6::is.R6(`nucleotide`))
        self$`nucleotide` <- `nucleotide`
      }
      if (!is.null(`protein`)) {
        stopifnot(R6::is.R6(`protein`))
        self$`protein` <- `protein`
      }
      if (!is.null(`pdb_ids`)) {
        stopifnot(is.vector(`pdb_ids`), length(`pdb_ids`) != 0)
        sapply(`pdb_ids`, function(x) stopifnot(is.character(x)))
        self$`pdb_ids` <- `pdb_ids`
      }
      if (!is.null(`cdd`)) {
        stopifnot(is.vector(`cdd`), length(`cdd`) != 0)
        sapply(`cdd`, function(x) stopifnot(R6::is.R6(x)))
        self$`cdd` <- `cdd`
      }
      if (!is.null(`uni_prot_kb`)) {
        stopifnot(R6::is.R6(`uni_prot_kb`))
        self$`uni_prot_kb` <- `uni_prot_kb`
      }
      if (!is.null(`mature_peptide`)) {
        stopifnot(is.vector(`mature_peptide`), length(`mature_peptide`) != 0)
        sapply(`mature_peptide`, function(x) stopifnot(R6::is.R6(x)))
        self$`mature_peptide` <- `mature_peptide`
      }
      if (!is.null(`protein_completeness`)) {
        if (!(`protein_completeness` %in% c())) {
          stop(paste("Error! \"", `protein_completeness`, "\" cannot be assigned to `protein_completeness`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`protein_completeness`))
        self$`protein_completeness` <- `protein_completeness`
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
    #' @return V2reportsVirusPeptide as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusPeptide (x) to a data frame
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
    #' Convert V2reportsVirusPeptide to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusPeptideObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsVirusPeptideObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`name`)) {
        V2reportsVirusPeptideObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`other_names`)) {
        V2reportsVirusPeptideObject[["other_names"]] <-
          self$`other_names`
      }
      if (!is.null(self$`nucleotide`)) {
        V2reportsVirusPeptideObject[["nucleotide"]] <-
          self$`nucleotide`$toSimpleType()
      }
      if (!is.null(self$`protein`)) {
        V2reportsVirusPeptideObject[["protein"]] <-
          self$`protein`$toSimpleType()
      }
      if (!is.null(self$`pdb_ids`)) {
        V2reportsVirusPeptideObject[["pdb_ids"]] <-
          self$`pdb_ids`
      }
      if (!is.null(self$`cdd`)) {
        V2reportsVirusPeptideObject[["cdd"]] <-
          lapply(self$`cdd`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`uni_prot_kb`)) {
        V2reportsVirusPeptideObject[["uni_prot_kb"]] <-
          self$`uni_prot_kb`$toSimpleType()
      }
      if (!is.null(self$`mature_peptide`)) {
        V2reportsVirusPeptideObject[["mature_peptide"]] <-
          lapply(self$`mature_peptide`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`protein_completeness`)) {
        V2reportsVirusPeptideObject[["protein_completeness"]] <-
          self$`protein_completeness`$toSimpleType()
      }
      return(V2reportsVirusPeptideObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusPeptide
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusPeptide
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`other_names`)) {
        self$`other_names` <- ApiClient$new()$deserializeObj(this_object$`other_names`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`nucleotide`)) {
        `nucleotide_object` <- V2reportsSeqRangeSetFasta$new()
        `nucleotide_object`$fromJSON(jsonlite::toJSON(this_object$`nucleotide`, auto_unbox = TRUE, digits = NA))
        self$`nucleotide` <- `nucleotide_object`
      }
      if (!is.null(this_object$`protein`)) {
        `protein_object` <- V2reportsSeqRangeSetFasta$new()
        `protein_object`$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
        self$`protein` <- `protein_object`
      }
      if (!is.null(this_object$`pdb_ids`)) {
        self$`pdb_ids` <- ApiClient$new()$deserializeObj(this_object$`pdb_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`cdd`)) {
        self$`cdd` <- ApiClient$new()$deserializeObj(this_object$`cdd`, "array[V2reportsConservedDomain]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`uni_prot_kb`)) {
        `uni_prot_kb_object` <- V2reportsVirusPeptideUniProtId$new()
        `uni_prot_kb_object`$fromJSON(jsonlite::toJSON(this_object$`uni_prot_kb`, auto_unbox = TRUE, digits = NA))
        self$`uni_prot_kb` <- `uni_prot_kb_object`
      }
      if (!is.null(this_object$`mature_peptide`)) {
        self$`mature_peptide` <- ApiClient$new()$deserializeObj(this_object$`mature_peptide`, "array[V2reportsVirusPeptide]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`protein_completeness`)) {
        `protein_completeness_object` <- V2reportsVirusPeptideViralPeptideCompleteness$new()
        `protein_completeness_object`$fromJSON(jsonlite::toJSON(this_object$`protein_completeness`, auto_unbox = TRUE, digits = NA))
        self$`protein_completeness` <- `protein_completeness_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusPeptide in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusPeptide
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusPeptide
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`name` <- this_object$`name`
      self$`other_names` <- ApiClient$new()$deserializeObj(this_object$`other_names`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`nucleotide` <- V2reportsSeqRangeSetFasta$new()$fromJSON(jsonlite::toJSON(this_object$`nucleotide`, auto_unbox = TRUE, digits = NA))
      self$`protein` <- V2reportsSeqRangeSetFasta$new()$fromJSON(jsonlite::toJSON(this_object$`protein`, auto_unbox = TRUE, digits = NA))
      self$`pdb_ids` <- ApiClient$new()$deserializeObj(this_object$`pdb_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`cdd` <- ApiClient$new()$deserializeObj(this_object$`cdd`, "array[V2reportsConservedDomain]", loadNamespace("ncbiopenapi"))
      self$`uni_prot_kb` <- V2reportsVirusPeptideUniProtId$new()$fromJSON(jsonlite::toJSON(this_object$`uni_prot_kb`, auto_unbox = TRUE, digits = NA))
      self$`mature_peptide` <- ApiClient$new()$deserializeObj(this_object$`mature_peptide`, "array[V2reportsVirusPeptide]", loadNamespace("ncbiopenapi"))
      self$`protein_completeness` <- V2reportsVirusPeptideViralPeptideCompleteness$new()$fromJSON(jsonlite::toJSON(this_object$`protein_completeness`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusPeptide and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusPeptide
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
# V2reportsVirusPeptide$unlock()
#
## Below is an example to define the print function
# V2reportsVirusPeptide$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusPeptide$lock()

