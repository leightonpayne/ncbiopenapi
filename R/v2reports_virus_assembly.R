#' Create a new V2reportsVirusAssembly
#'
#' @description
#' V2reportsVirusAssembly Class
#'
#' @docType class
#' @title V2reportsVirusAssembly
#' @description V2reportsVirusAssembly Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field is_complete  character [optional]
#' @field is_annotated  character [optional]
#' @field isolate  \link{V2reportsIsolate} [optional]
#' @field source_database  character [optional]
#' @field protein_count  integer [optional]
#' @field host  \link{V2reportsOrganism} [optional]
#' @field virus  \link{V2reportsOrganism} [optional]
#' @field bioprojects  list(character) [optional]
#' @field location  \link{V2reportsVirusAssemblyCollectionLocation} [optional]
#' @field update_date  character [optional]
#' @field release_date  character [optional]
#' @field nucleotide_completeness  character [optional]
#' @field completeness  \link{V2reportsVirusAssemblyCompleteness} [optional]
#' @field length  integer [optional]
#' @field gene_count  integer [optional]
#' @field mature_peptide_count  integer [optional]
#' @field biosample  character [optional]
#' @field mol_type  character [optional]
#' @field nucleotide  \link{V2reportsSeqRangeSetFasta} [optional]
#' @field purpose_of_sampling  \link{V2reportsPurposeOfSampling} [optional]
#' @field sra_accessions  list(character) [optional]
#' @field submitter  \link{V2reportsVirusAssemblySubmitterInfo} [optional]
#' @field lab_host  character [optional]
#' @field is_lab_host  character [optional]
#' @field is_vaccine_strain  character [optional]
#' @field segment  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsVirusAssembly <- R6::R6Class(
  "V2reportsVirusAssembly",
  public = list(
    `accession` = NULL,
    `is_complete` = NULL,
    `is_annotated` = NULL,
    `isolate` = NULL,
    `source_database` = NULL,
    `protein_count` = NULL,
    `host` = NULL,
    `virus` = NULL,
    `bioprojects` = NULL,
    `location` = NULL,
    `update_date` = NULL,
    `release_date` = NULL,
    `nucleotide_completeness` = NULL,
    `completeness` = NULL,
    `length` = NULL,
    `gene_count` = NULL,
    `mature_peptide_count` = NULL,
    `biosample` = NULL,
    `mol_type` = NULL,
    `nucleotide` = NULL,
    `purpose_of_sampling` = NULL,
    `sra_accessions` = NULL,
    `submitter` = NULL,
    `lab_host` = NULL,
    `is_lab_host` = NULL,
    `is_vaccine_strain` = NULL,
    `segment` = NULL,

    #' @description
    #' Initialize a new V2reportsVirusAssembly class.
    #'
    #' @param accession accession
    #' @param is_complete is_complete
    #' @param is_annotated is_annotated
    #' @param isolate isolate
    #' @param source_database source_database
    #' @param protein_count protein_count
    #' @param host host
    #' @param virus virus
    #' @param bioprojects bioprojects
    #' @param location location
    #' @param update_date update_date
    #' @param release_date release_date
    #' @param nucleotide_completeness nucleotide_completeness
    #' @param completeness completeness
    #' @param length length
    #' @param gene_count gene_count
    #' @param mature_peptide_count mature_peptide_count
    #' @param biosample biosample
    #' @param mol_type mol_type
    #' @param nucleotide nucleotide
    #' @param purpose_of_sampling purpose_of_sampling
    #' @param sra_accessions sra_accessions
    #' @param submitter submitter
    #' @param lab_host lab_host
    #' @param is_lab_host is_lab_host
    #' @param is_vaccine_strain is_vaccine_strain
    #' @param segment segment
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `is_complete` = NULL, `is_annotated` = NULL, `isolate` = NULL, `source_database` = NULL, `protein_count` = NULL, `host` = NULL, `virus` = NULL, `bioprojects` = NULL, `location` = NULL, `update_date` = NULL, `release_date` = NULL, `nucleotide_completeness` = NULL, `completeness` = NULL, `length` = NULL, `gene_count` = NULL, `mature_peptide_count` = NULL, `biosample` = NULL, `mol_type` = NULL, `nucleotide` = NULL, `purpose_of_sampling` = NULL, `sra_accessions` = NULL, `submitter` = NULL, `lab_host` = NULL, `is_lab_host` = NULL, `is_vaccine_strain` = NULL, `segment` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`is_complete`)) {
        if (!(is.logical(`is_complete`) && length(`is_complete`) == 1)) {
          stop(paste("Error! Invalid data for `is_complete`. Must be a boolean:", `is_complete`))
        }
        self$`is_complete` <- `is_complete`
      }
      if (!is.null(`is_annotated`)) {
        if (!(is.logical(`is_annotated`) && length(`is_annotated`) == 1)) {
          stop(paste("Error! Invalid data for `is_annotated`. Must be a boolean:", `is_annotated`))
        }
        self$`is_annotated` <- `is_annotated`
      }
      if (!is.null(`isolate`)) {
        stopifnot(R6::is.R6(`isolate`))
        self$`isolate` <- `isolate`
      }
      if (!is.null(`source_database`)) {
        if (!(is.character(`source_database`) && length(`source_database`) == 1)) {
          stop(paste("Error! Invalid data for `source_database`. Must be a string:", `source_database`))
        }
        self$`source_database` <- `source_database`
      }
      if (!is.null(`protein_count`)) {
        if (!(is.numeric(`protein_count`) && length(`protein_count`) == 1)) {
          stop(paste("Error! Invalid data for `protein_count`. Must be an integer:", `protein_count`))
        }
        self$`protein_count` <- `protein_count`
      }
      if (!is.null(`host`)) {
        stopifnot(R6::is.R6(`host`))
        self$`host` <- `host`
      }
      if (!is.null(`virus`)) {
        stopifnot(R6::is.R6(`virus`))
        self$`virus` <- `virus`
      }
      if (!is.null(`bioprojects`)) {
        stopifnot(is.vector(`bioprojects`), length(`bioprojects`) != 0)
        sapply(`bioprojects`, function(x) stopifnot(is.character(x)))
        self$`bioprojects` <- `bioprojects`
      }
      if (!is.null(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!is.null(`update_date`)) {
        if (!(is.character(`update_date`) && length(`update_date`) == 1)) {
          stop(paste("Error! Invalid data for `update_date`. Must be a string:", `update_date`))
        }
        self$`update_date` <- `update_date`
      }
      if (!is.null(`release_date`)) {
        if (!(is.character(`release_date`) && length(`release_date`) == 1)) {
          stop(paste("Error! Invalid data for `release_date`. Must be a string:", `release_date`))
        }
        self$`release_date` <- `release_date`
      }
      if (!is.null(`nucleotide_completeness`)) {
        if (!(is.character(`nucleotide_completeness`) && length(`nucleotide_completeness`) == 1)) {
          stop(paste("Error! Invalid data for `nucleotide_completeness`. Must be a string:", `nucleotide_completeness`))
        }
        self$`nucleotide_completeness` <- `nucleotide_completeness`
      }
      if (!is.null(`completeness`)) {
        if (!(`completeness` %in% c())) {
          stop(paste("Error! \"", `completeness`, "\" cannot be assigned to `completeness`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`completeness`))
        self$`completeness` <- `completeness`
      }
      if (!is.null(`length`)) {
        if (!(is.numeric(`length`) && length(`length`) == 1)) {
          stop(paste("Error! Invalid data for `length`. Must be an integer:", `length`))
        }
        self$`length` <- `length`
      }
      if (!is.null(`gene_count`)) {
        if (!(is.numeric(`gene_count`) && length(`gene_count`) == 1)) {
          stop(paste("Error! Invalid data for `gene_count`. Must be an integer:", `gene_count`))
        }
        self$`gene_count` <- `gene_count`
      }
      if (!is.null(`mature_peptide_count`)) {
        if (!(is.numeric(`mature_peptide_count`) && length(`mature_peptide_count`) == 1)) {
          stop(paste("Error! Invalid data for `mature_peptide_count`. Must be an integer:", `mature_peptide_count`))
        }
        self$`mature_peptide_count` <- `mature_peptide_count`
      }
      if (!is.null(`biosample`)) {
        if (!(is.character(`biosample`) && length(`biosample`) == 1)) {
          stop(paste("Error! Invalid data for `biosample`. Must be a string:", `biosample`))
        }
        self$`biosample` <- `biosample`
      }
      if (!is.null(`mol_type`)) {
        if (!(is.character(`mol_type`) && length(`mol_type`) == 1)) {
          stop(paste("Error! Invalid data for `mol_type`. Must be a string:", `mol_type`))
        }
        self$`mol_type` <- `mol_type`
      }
      if (!is.null(`nucleotide`)) {
        stopifnot(R6::is.R6(`nucleotide`))
        self$`nucleotide` <- `nucleotide`
      }
      if (!is.null(`purpose_of_sampling`)) {
        if (!(`purpose_of_sampling` %in% c())) {
          stop(paste("Error! \"", `purpose_of_sampling`, "\" cannot be assigned to `purpose_of_sampling`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`purpose_of_sampling`))
        self$`purpose_of_sampling` <- `purpose_of_sampling`
      }
      if (!is.null(`sra_accessions`)) {
        stopifnot(is.vector(`sra_accessions`), length(`sra_accessions`) != 0)
        sapply(`sra_accessions`, function(x) stopifnot(is.character(x)))
        self$`sra_accessions` <- `sra_accessions`
      }
      if (!is.null(`submitter`)) {
        stopifnot(R6::is.R6(`submitter`))
        self$`submitter` <- `submitter`
      }
      if (!is.null(`lab_host`)) {
        if (!(is.character(`lab_host`) && length(`lab_host`) == 1)) {
          stop(paste("Error! Invalid data for `lab_host`. Must be a string:", `lab_host`))
        }
        self$`lab_host` <- `lab_host`
      }
      if (!is.null(`is_lab_host`)) {
        if (!(is.logical(`is_lab_host`) && length(`is_lab_host`) == 1)) {
          stop(paste("Error! Invalid data for `is_lab_host`. Must be a boolean:", `is_lab_host`))
        }
        self$`is_lab_host` <- `is_lab_host`
      }
      if (!is.null(`is_vaccine_strain`)) {
        if (!(is.logical(`is_vaccine_strain`) && length(`is_vaccine_strain`) == 1)) {
          stop(paste("Error! Invalid data for `is_vaccine_strain`. Must be a boolean:", `is_vaccine_strain`))
        }
        self$`is_vaccine_strain` <- `is_vaccine_strain`
      }
      if (!is.null(`segment`)) {
        if (!(is.character(`segment`) && length(`segment`) == 1)) {
          stop(paste("Error! Invalid data for `segment`. Must be a string:", `segment`))
        }
        self$`segment` <- `segment`
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
    #' @return V2reportsVirusAssembly as a base R list.
    #' @examples
    #' # convert array of V2reportsVirusAssembly (x) to a data frame
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
    #' Convert V2reportsVirusAssembly to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsVirusAssemblyObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsVirusAssemblyObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`is_complete`)) {
        V2reportsVirusAssemblyObject[["is_complete"]] <-
          self$`is_complete`
      }
      if (!is.null(self$`is_annotated`)) {
        V2reportsVirusAssemblyObject[["is_annotated"]] <-
          self$`is_annotated`
      }
      if (!is.null(self$`isolate`)) {
        V2reportsVirusAssemblyObject[["isolate"]] <-
          self$`isolate`$toSimpleType()
      }
      if (!is.null(self$`source_database`)) {
        V2reportsVirusAssemblyObject[["source_database"]] <-
          self$`source_database`
      }
      if (!is.null(self$`protein_count`)) {
        V2reportsVirusAssemblyObject[["protein_count"]] <-
          self$`protein_count`
      }
      if (!is.null(self$`host`)) {
        V2reportsVirusAssemblyObject[["host"]] <-
          self$`host`$toSimpleType()
      }
      if (!is.null(self$`virus`)) {
        V2reportsVirusAssemblyObject[["virus"]] <-
          self$`virus`$toSimpleType()
      }
      if (!is.null(self$`bioprojects`)) {
        V2reportsVirusAssemblyObject[["bioprojects"]] <-
          self$`bioprojects`
      }
      if (!is.null(self$`location`)) {
        V2reportsVirusAssemblyObject[["location"]] <-
          self$`location`$toSimpleType()
      }
      if (!is.null(self$`update_date`)) {
        V2reportsVirusAssemblyObject[["update_date"]] <-
          self$`update_date`
      }
      if (!is.null(self$`release_date`)) {
        V2reportsVirusAssemblyObject[["release_date"]] <-
          self$`release_date`
      }
      if (!is.null(self$`nucleotide_completeness`)) {
        V2reportsVirusAssemblyObject[["nucleotide_completeness"]] <-
          self$`nucleotide_completeness`
      }
      if (!is.null(self$`completeness`)) {
        V2reportsVirusAssemblyObject[["completeness"]] <-
          self$`completeness`$toSimpleType()
      }
      if (!is.null(self$`length`)) {
        V2reportsVirusAssemblyObject[["length"]] <-
          self$`length`
      }
      if (!is.null(self$`gene_count`)) {
        V2reportsVirusAssemblyObject[["gene_count"]] <-
          self$`gene_count`
      }
      if (!is.null(self$`mature_peptide_count`)) {
        V2reportsVirusAssemblyObject[["mature_peptide_count"]] <-
          self$`mature_peptide_count`
      }
      if (!is.null(self$`biosample`)) {
        V2reportsVirusAssemblyObject[["biosample"]] <-
          self$`biosample`
      }
      if (!is.null(self$`mol_type`)) {
        V2reportsVirusAssemblyObject[["mol_type"]] <-
          self$`mol_type`
      }
      if (!is.null(self$`nucleotide`)) {
        V2reportsVirusAssemblyObject[["nucleotide"]] <-
          self$`nucleotide`$toSimpleType()
      }
      if (!is.null(self$`purpose_of_sampling`)) {
        V2reportsVirusAssemblyObject[["purpose_of_sampling"]] <-
          self$`purpose_of_sampling`$toSimpleType()
      }
      if (!is.null(self$`sra_accessions`)) {
        V2reportsVirusAssemblyObject[["sra_accessions"]] <-
          self$`sra_accessions`
      }
      if (!is.null(self$`submitter`)) {
        V2reportsVirusAssemblyObject[["submitter"]] <-
          self$`submitter`$toSimpleType()
      }
      if (!is.null(self$`lab_host`)) {
        V2reportsVirusAssemblyObject[["lab_host"]] <-
          self$`lab_host`
      }
      if (!is.null(self$`is_lab_host`)) {
        V2reportsVirusAssemblyObject[["is_lab_host"]] <-
          self$`is_lab_host`
      }
      if (!is.null(self$`is_vaccine_strain`)) {
        V2reportsVirusAssemblyObject[["is_vaccine_strain"]] <-
          self$`is_vaccine_strain`
      }
      if (!is.null(self$`segment`)) {
        V2reportsVirusAssemblyObject[["segment"]] <-
          self$`segment`
      }
      return(V2reportsVirusAssemblyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAssembly
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAssembly
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`is_complete`)) {
        self$`is_complete` <- this_object$`is_complete`
      }
      if (!is.null(this_object$`is_annotated`)) {
        self$`is_annotated` <- this_object$`is_annotated`
      }
      if (!is.null(this_object$`isolate`)) {
        `isolate_object` <- V2reportsIsolate$new()
        `isolate_object`$fromJSON(jsonlite::toJSON(this_object$`isolate`, auto_unbox = TRUE, digits = NA))
        self$`isolate` <- `isolate_object`
      }
      if (!is.null(this_object$`source_database`)) {
        self$`source_database` <- this_object$`source_database`
      }
      if (!is.null(this_object$`protein_count`)) {
        self$`protein_count` <- this_object$`protein_count`
      }
      if (!is.null(this_object$`host`)) {
        `host_object` <- V2reportsOrganism$new()
        `host_object`$fromJSON(jsonlite::toJSON(this_object$`host`, auto_unbox = TRUE, digits = NA))
        self$`host` <- `host_object`
      }
      if (!is.null(this_object$`virus`)) {
        `virus_object` <- V2reportsOrganism$new()
        `virus_object`$fromJSON(jsonlite::toJSON(this_object$`virus`, auto_unbox = TRUE, digits = NA))
        self$`virus` <- `virus_object`
      }
      if (!is.null(this_object$`bioprojects`)) {
        self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- V2reportsVirusAssemblyCollectionLocation$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`update_date`)) {
        self$`update_date` <- this_object$`update_date`
      }
      if (!is.null(this_object$`release_date`)) {
        self$`release_date` <- this_object$`release_date`
      }
      if (!is.null(this_object$`nucleotide_completeness`)) {
        self$`nucleotide_completeness` <- this_object$`nucleotide_completeness`
      }
      if (!is.null(this_object$`completeness`)) {
        `completeness_object` <- V2reportsVirusAssemblyCompleteness$new()
        `completeness_object`$fromJSON(jsonlite::toJSON(this_object$`completeness`, auto_unbox = TRUE, digits = NA))
        self$`completeness` <- `completeness_object`
      }
      if (!is.null(this_object$`length`)) {
        self$`length` <- this_object$`length`
      }
      if (!is.null(this_object$`gene_count`)) {
        self$`gene_count` <- this_object$`gene_count`
      }
      if (!is.null(this_object$`mature_peptide_count`)) {
        self$`mature_peptide_count` <- this_object$`mature_peptide_count`
      }
      if (!is.null(this_object$`biosample`)) {
        self$`biosample` <- this_object$`biosample`
      }
      if (!is.null(this_object$`mol_type`)) {
        self$`mol_type` <- this_object$`mol_type`
      }
      if (!is.null(this_object$`nucleotide`)) {
        `nucleotide_object` <- V2reportsSeqRangeSetFasta$new()
        `nucleotide_object`$fromJSON(jsonlite::toJSON(this_object$`nucleotide`, auto_unbox = TRUE, digits = NA))
        self$`nucleotide` <- `nucleotide_object`
      }
      if (!is.null(this_object$`purpose_of_sampling`)) {
        `purpose_of_sampling_object` <- V2reportsPurposeOfSampling$new()
        `purpose_of_sampling_object`$fromJSON(jsonlite::toJSON(this_object$`purpose_of_sampling`, auto_unbox = TRUE, digits = NA))
        self$`purpose_of_sampling` <- `purpose_of_sampling_object`
      }
      if (!is.null(this_object$`sra_accessions`)) {
        self$`sra_accessions` <- ApiClient$new()$deserializeObj(this_object$`sra_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`submitter`)) {
        `submitter_object` <- V2reportsVirusAssemblySubmitterInfo$new()
        `submitter_object`$fromJSON(jsonlite::toJSON(this_object$`submitter`, auto_unbox = TRUE, digits = NA))
        self$`submitter` <- `submitter_object`
      }
      if (!is.null(this_object$`lab_host`)) {
        self$`lab_host` <- this_object$`lab_host`
      }
      if (!is.null(this_object$`is_lab_host`)) {
        self$`is_lab_host` <- this_object$`is_lab_host`
      }
      if (!is.null(this_object$`is_vaccine_strain`)) {
        self$`is_vaccine_strain` <- this_object$`is_vaccine_strain`
      }
      if (!is.null(this_object$`segment`)) {
        self$`segment` <- this_object$`segment`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsVirusAssembly in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsVirusAssembly
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsVirusAssembly
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`is_complete` <- this_object$`is_complete`
      self$`is_annotated` <- this_object$`is_annotated`
      self$`isolate` <- V2reportsIsolate$new()$fromJSON(jsonlite::toJSON(this_object$`isolate`, auto_unbox = TRUE, digits = NA))
      self$`source_database` <- this_object$`source_database`
      self$`protein_count` <- this_object$`protein_count`
      self$`host` <- V2reportsOrganism$new()$fromJSON(jsonlite::toJSON(this_object$`host`, auto_unbox = TRUE, digits = NA))
      self$`virus` <- V2reportsOrganism$new()$fromJSON(jsonlite::toJSON(this_object$`virus`, auto_unbox = TRUE, digits = NA))
      self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`location` <- V2reportsVirusAssemblyCollectionLocation$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`update_date` <- this_object$`update_date`
      self$`release_date` <- this_object$`release_date`
      self$`nucleotide_completeness` <- this_object$`nucleotide_completeness`
      self$`completeness` <- V2reportsVirusAssemblyCompleteness$new()$fromJSON(jsonlite::toJSON(this_object$`completeness`, auto_unbox = TRUE, digits = NA))
      self$`length` <- this_object$`length`
      self$`gene_count` <- this_object$`gene_count`
      self$`mature_peptide_count` <- this_object$`mature_peptide_count`
      self$`biosample` <- this_object$`biosample`
      self$`mol_type` <- this_object$`mol_type`
      self$`nucleotide` <- V2reportsSeqRangeSetFasta$new()$fromJSON(jsonlite::toJSON(this_object$`nucleotide`, auto_unbox = TRUE, digits = NA))
      self$`purpose_of_sampling` <- V2reportsPurposeOfSampling$new()$fromJSON(jsonlite::toJSON(this_object$`purpose_of_sampling`, auto_unbox = TRUE, digits = NA))
      self$`sra_accessions` <- ApiClient$new()$deserializeObj(this_object$`sra_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`submitter` <- V2reportsVirusAssemblySubmitterInfo$new()$fromJSON(jsonlite::toJSON(this_object$`submitter`, auto_unbox = TRUE, digits = NA))
      self$`lab_host` <- this_object$`lab_host`
      self$`is_lab_host` <- this_object$`is_lab_host`
      self$`is_vaccine_strain` <- this_object$`is_vaccine_strain`
      self$`segment` <- this_object$`segment`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsVirusAssembly and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsVirusAssembly
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
# V2reportsVirusAssembly$unlock()
#
## Below is an example to define the print function
# V2reportsVirusAssembly$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsVirusAssembly$lock()

