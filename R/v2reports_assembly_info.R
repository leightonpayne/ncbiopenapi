#' Create a new V2reportsAssemblyInfo
#'
#' @description
#' V2reportsAssemblyInfo Class
#'
#' @docType class
#' @title V2reportsAssemblyInfo
#' @description V2reportsAssemblyInfo Class
#' @format An \code{R6Class} generator object
#' @field assembly_level  character [optional]
#' @field assembly_status  \link{V2reportsAssemblyStatus} [optional]
#' @field paired_assembly  \link{V2reportsPairedAssembly} [optional]
#' @field assembly_name  character [optional]
#' @field assembly_long_name  character [optional]
#' @field assembly_type  character [optional]
#' @field bioproject_lineage  list(\link{V2reportsBioProjectLineage}) [optional]
#' @field bioproject_accession  character [optional]
#' @field submission_date  character [optional]
#' @field release_date  character [optional]
#' @field description  character [optional]
#' @field submitter  character [optional]
#' @field refseq_category  character [optional]
#' @field synonym  character [optional]
#' @field linked_assembly  character [optional]
#' @field linked_assemblies  list(\link{V2reportsLinkedAssembly}) [optional]
#' @field atypical  \link{V2reportsAtypicalInfo} [optional]
#' @field genome_notes  list(character) [optional]
#' @field sequencing_tech  character [optional]
#' @field assembly_method  character [optional]
#' @field grouping_method  character [optional]
#' @field biosample  \link{V2reportsBioSampleDescriptor} [optional]
#' @field blast_url  character [optional]
#' @field comments  character [optional]
#' @field suppression_reason  character [optional]
#' @field diploid_role  \link{V2reportsLinkedAssemblyType} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsAssemblyInfo <- R6::R6Class(
  "V2reportsAssemblyInfo",
  public = list(
    `assembly_level` = NULL,
    `assembly_status` = NULL,
    `paired_assembly` = NULL,
    `assembly_name` = NULL,
    `assembly_long_name` = NULL,
    `assembly_type` = NULL,
    `bioproject_lineage` = NULL,
    `bioproject_accession` = NULL,
    `submission_date` = NULL,
    `release_date` = NULL,
    `description` = NULL,
    `submitter` = NULL,
    `refseq_category` = NULL,
    `synonym` = NULL,
    `linked_assembly` = NULL,
    `linked_assemblies` = NULL,
    `atypical` = NULL,
    `genome_notes` = NULL,
    `sequencing_tech` = NULL,
    `assembly_method` = NULL,
    `grouping_method` = NULL,
    `biosample` = NULL,
    `blast_url` = NULL,
    `comments` = NULL,
    `suppression_reason` = NULL,
    `diploid_role` = NULL,

    #' @description
    #' Initialize a new V2reportsAssemblyInfo class.
    #'
    #' @param assembly_level assembly_level
    #' @param assembly_status assembly_status
    #' @param paired_assembly paired_assembly
    #' @param assembly_name assembly_name
    #' @param assembly_long_name assembly_long_name
    #' @param assembly_type assembly_type
    #' @param bioproject_lineage bioproject_lineage
    #' @param bioproject_accession bioproject_accession
    #' @param submission_date submission_date
    #' @param release_date release_date
    #' @param description description
    #' @param submitter submitter
    #' @param refseq_category refseq_category
    #' @param synonym synonym
    #' @param linked_assembly linked_assembly
    #' @param linked_assemblies linked_assemblies
    #' @param atypical atypical
    #' @param genome_notes genome_notes
    #' @param sequencing_tech sequencing_tech
    #' @param assembly_method assembly_method
    #' @param grouping_method grouping_method
    #' @param biosample biosample
    #' @param blast_url blast_url
    #' @param comments comments
    #' @param suppression_reason suppression_reason
    #' @param diploid_role diploid_role
    #' @param ... Other optional arguments.
    initialize = function(`assembly_level` = NULL, `assembly_status` = NULL, `paired_assembly` = NULL, `assembly_name` = NULL, `assembly_long_name` = NULL, `assembly_type` = NULL, `bioproject_lineage` = NULL, `bioproject_accession` = NULL, `submission_date` = NULL, `release_date` = NULL, `description` = NULL, `submitter` = NULL, `refseq_category` = NULL, `synonym` = NULL, `linked_assembly` = NULL, `linked_assemblies` = NULL, `atypical` = NULL, `genome_notes` = NULL, `sequencing_tech` = NULL, `assembly_method` = NULL, `grouping_method` = NULL, `biosample` = NULL, `blast_url` = NULL, `comments` = NULL, `suppression_reason` = NULL, `diploid_role` = NULL, ...) {
      if (!is.null(`assembly_level`)) {
        if (!(is.character(`assembly_level`) && length(`assembly_level`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_level`. Must be a string:", `assembly_level`))
        }
        self$`assembly_level` <- `assembly_level`
      }
      if (!is.null(`assembly_status`)) {
        if (!(`assembly_status` %in% c())) {
          stop(paste("Error! \"", `assembly_status`, "\" cannot be assigned to `assembly_status`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`assembly_status`))
        self$`assembly_status` <- `assembly_status`
      }
      if (!is.null(`paired_assembly`)) {
        stopifnot(R6::is.R6(`paired_assembly`))
        self$`paired_assembly` <- `paired_assembly`
      }
      if (!is.null(`assembly_name`)) {
        if (!(is.character(`assembly_name`) && length(`assembly_name`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_name`. Must be a string:", `assembly_name`))
        }
        self$`assembly_name` <- `assembly_name`
      }
      if (!is.null(`assembly_long_name`)) {
        if (!(is.character(`assembly_long_name`) && length(`assembly_long_name`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_long_name`. Must be a string:", `assembly_long_name`))
        }
        self$`assembly_long_name` <- `assembly_long_name`
      }
      if (!is.null(`assembly_type`)) {
        if (!(is.character(`assembly_type`) && length(`assembly_type`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_type`. Must be a string:", `assembly_type`))
        }
        self$`assembly_type` <- `assembly_type`
      }
      if (!is.null(`bioproject_lineage`)) {
        stopifnot(is.vector(`bioproject_lineage`), length(`bioproject_lineage`) != 0)
        sapply(`bioproject_lineage`, function(x) stopifnot(R6::is.R6(x)))
        self$`bioproject_lineage` <- `bioproject_lineage`
      }
      if (!is.null(`bioproject_accession`)) {
        if (!(is.character(`bioproject_accession`) && length(`bioproject_accession`) == 1)) {
          stop(paste("Error! Invalid data for `bioproject_accession`. Must be a string:", `bioproject_accession`))
        }
        self$`bioproject_accession` <- `bioproject_accession`
      }
      if (!is.null(`submission_date`)) {
        if (!(is.character(`submission_date`) && length(`submission_date`) == 1)) {
          stop(paste("Error! Invalid data for `submission_date`. Must be a string:", `submission_date`))
        }
        self$`submission_date` <- `submission_date`
      }
      if (!is.null(`release_date`)) {
        if (!(is.character(`release_date`) && length(`release_date`) == 1)) {
          stop(paste("Error! Invalid data for `release_date`. Must be a string:", `release_date`))
        }
        self$`release_date` <- `release_date`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`submitter`)) {
        if (!(is.character(`submitter`) && length(`submitter`) == 1)) {
          stop(paste("Error! Invalid data for `submitter`. Must be a string:", `submitter`))
        }
        self$`submitter` <- `submitter`
      }
      if (!is.null(`refseq_category`)) {
        if (!(is.character(`refseq_category`) && length(`refseq_category`) == 1)) {
          stop(paste("Error! Invalid data for `refseq_category`. Must be a string:", `refseq_category`))
        }
        self$`refseq_category` <- `refseq_category`
      }
      if (!is.null(`synonym`)) {
        if (!(is.character(`synonym`) && length(`synonym`) == 1)) {
          stop(paste("Error! Invalid data for `synonym`. Must be a string:", `synonym`))
        }
        self$`synonym` <- `synonym`
      }
      if (!is.null(`linked_assembly`)) {
        if (!(is.character(`linked_assembly`) && length(`linked_assembly`) == 1)) {
          stop(paste("Error! Invalid data for `linked_assembly`. Must be a string:", `linked_assembly`))
        }
        self$`linked_assembly` <- `linked_assembly`
      }
      if (!is.null(`linked_assemblies`)) {
        stopifnot(is.vector(`linked_assemblies`), length(`linked_assemblies`) != 0)
        sapply(`linked_assemblies`, function(x) stopifnot(R6::is.R6(x)))
        self$`linked_assemblies` <- `linked_assemblies`
      }
      if (!is.null(`atypical`)) {
        stopifnot(R6::is.R6(`atypical`))
        self$`atypical` <- `atypical`
      }
      if (!is.null(`genome_notes`)) {
        stopifnot(is.vector(`genome_notes`), length(`genome_notes`) != 0)
        sapply(`genome_notes`, function(x) stopifnot(is.character(x)))
        self$`genome_notes` <- `genome_notes`
      }
      if (!is.null(`sequencing_tech`)) {
        if (!(is.character(`sequencing_tech`) && length(`sequencing_tech`) == 1)) {
          stop(paste("Error! Invalid data for `sequencing_tech`. Must be a string:", `sequencing_tech`))
        }
        self$`sequencing_tech` <- `sequencing_tech`
      }
      if (!is.null(`assembly_method`)) {
        if (!(is.character(`assembly_method`) && length(`assembly_method`) == 1)) {
          stop(paste("Error! Invalid data for `assembly_method`. Must be a string:", `assembly_method`))
        }
        self$`assembly_method` <- `assembly_method`
      }
      if (!is.null(`grouping_method`)) {
        if (!(is.character(`grouping_method`) && length(`grouping_method`) == 1)) {
          stop(paste("Error! Invalid data for `grouping_method`. Must be a string:", `grouping_method`))
        }
        self$`grouping_method` <- `grouping_method`
      }
      if (!is.null(`biosample`)) {
        stopifnot(R6::is.R6(`biosample`))
        self$`biosample` <- `biosample`
      }
      if (!is.null(`blast_url`)) {
        if (!(is.character(`blast_url`) && length(`blast_url`) == 1)) {
          stop(paste("Error! Invalid data for `blast_url`. Must be a string:", `blast_url`))
        }
        self$`blast_url` <- `blast_url`
      }
      if (!is.null(`comments`)) {
        if (!(is.character(`comments`) && length(`comments`) == 1)) {
          stop(paste("Error! Invalid data for `comments`. Must be a string:", `comments`))
        }
        self$`comments` <- `comments`
      }
      if (!is.null(`suppression_reason`)) {
        if (!(is.character(`suppression_reason`) && length(`suppression_reason`) == 1)) {
          stop(paste("Error! Invalid data for `suppression_reason`. Must be a string:", `suppression_reason`))
        }
        self$`suppression_reason` <- `suppression_reason`
      }
      if (!is.null(`diploid_role`)) {
        if (!(`diploid_role` %in% c())) {
          stop(paste("Error! \"", `diploid_role`, "\" cannot be assigned to `diploid_role`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`diploid_role`))
        self$`diploid_role` <- `diploid_role`
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
    #' @return V2reportsAssemblyInfo as a base R list.
    #' @examples
    #' # convert array of V2reportsAssemblyInfo (x) to a data frame
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
    #' Convert V2reportsAssemblyInfo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsAssemblyInfoObject <- list()
      if (!is.null(self$`assembly_level`)) {
        V2reportsAssemblyInfoObject[["assembly_level"]] <-
          self$`assembly_level`
      }
      if (!is.null(self$`assembly_status`)) {
        V2reportsAssemblyInfoObject[["assembly_status"]] <-
          self$`assembly_status`$toSimpleType()
      }
      if (!is.null(self$`paired_assembly`)) {
        V2reportsAssemblyInfoObject[["paired_assembly"]] <-
          self$`paired_assembly`$toSimpleType()
      }
      if (!is.null(self$`assembly_name`)) {
        V2reportsAssemblyInfoObject[["assembly_name"]] <-
          self$`assembly_name`
      }
      if (!is.null(self$`assembly_long_name`)) {
        V2reportsAssemblyInfoObject[["assembly_long_name"]] <-
          self$`assembly_long_name`
      }
      if (!is.null(self$`assembly_type`)) {
        V2reportsAssemblyInfoObject[["assembly_type"]] <-
          self$`assembly_type`
      }
      if (!is.null(self$`bioproject_lineage`)) {
        V2reportsAssemblyInfoObject[["bioproject_lineage"]] <-
          lapply(self$`bioproject_lineage`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`bioproject_accession`)) {
        V2reportsAssemblyInfoObject[["bioproject_accession"]] <-
          self$`bioproject_accession`
      }
      if (!is.null(self$`submission_date`)) {
        V2reportsAssemblyInfoObject[["submission_date"]] <-
          self$`submission_date`
      }
      if (!is.null(self$`release_date`)) {
        V2reportsAssemblyInfoObject[["release_date"]] <-
          self$`release_date`
      }
      if (!is.null(self$`description`)) {
        V2reportsAssemblyInfoObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`submitter`)) {
        V2reportsAssemblyInfoObject[["submitter"]] <-
          self$`submitter`
      }
      if (!is.null(self$`refseq_category`)) {
        V2reportsAssemblyInfoObject[["refseq_category"]] <-
          self$`refseq_category`
      }
      if (!is.null(self$`synonym`)) {
        V2reportsAssemblyInfoObject[["synonym"]] <-
          self$`synonym`
      }
      if (!is.null(self$`linked_assembly`)) {
        V2reportsAssemblyInfoObject[["linked_assembly"]] <-
          self$`linked_assembly`
      }
      if (!is.null(self$`linked_assemblies`)) {
        V2reportsAssemblyInfoObject[["linked_assemblies"]] <-
          lapply(self$`linked_assemblies`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`atypical`)) {
        V2reportsAssemblyInfoObject[["atypical"]] <-
          self$`atypical`$toSimpleType()
      }
      if (!is.null(self$`genome_notes`)) {
        V2reportsAssemblyInfoObject[["genome_notes"]] <-
          self$`genome_notes`
      }
      if (!is.null(self$`sequencing_tech`)) {
        V2reportsAssemblyInfoObject[["sequencing_tech"]] <-
          self$`sequencing_tech`
      }
      if (!is.null(self$`assembly_method`)) {
        V2reportsAssemblyInfoObject[["assembly_method"]] <-
          self$`assembly_method`
      }
      if (!is.null(self$`grouping_method`)) {
        V2reportsAssemblyInfoObject[["grouping_method"]] <-
          self$`grouping_method`
      }
      if (!is.null(self$`biosample`)) {
        V2reportsAssemblyInfoObject[["biosample"]] <-
          self$`biosample`$toSimpleType()
      }
      if (!is.null(self$`blast_url`)) {
        V2reportsAssemblyInfoObject[["blast_url"]] <-
          self$`blast_url`
      }
      if (!is.null(self$`comments`)) {
        V2reportsAssemblyInfoObject[["comments"]] <-
          self$`comments`
      }
      if (!is.null(self$`suppression_reason`)) {
        V2reportsAssemblyInfoObject[["suppression_reason"]] <-
          self$`suppression_reason`
      }
      if (!is.null(self$`diploid_role`)) {
        V2reportsAssemblyInfoObject[["diploid_role"]] <-
          self$`diploid_role`$toSimpleType()
      }
      return(V2reportsAssemblyInfoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyInfo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`assembly_level`)) {
        self$`assembly_level` <- this_object$`assembly_level`
      }
      if (!is.null(this_object$`assembly_status`)) {
        `assembly_status_object` <- V2reportsAssemblyStatus$new()
        `assembly_status_object`$fromJSON(jsonlite::toJSON(this_object$`assembly_status`, auto_unbox = TRUE, digits = NA))
        self$`assembly_status` <- `assembly_status_object`
      }
      if (!is.null(this_object$`paired_assembly`)) {
        `paired_assembly_object` <- V2reportsPairedAssembly$new()
        `paired_assembly_object`$fromJSON(jsonlite::toJSON(this_object$`paired_assembly`, auto_unbox = TRUE, digits = NA))
        self$`paired_assembly` <- `paired_assembly_object`
      }
      if (!is.null(this_object$`assembly_name`)) {
        self$`assembly_name` <- this_object$`assembly_name`
      }
      if (!is.null(this_object$`assembly_long_name`)) {
        self$`assembly_long_name` <- this_object$`assembly_long_name`
      }
      if (!is.null(this_object$`assembly_type`)) {
        self$`assembly_type` <- this_object$`assembly_type`
      }
      if (!is.null(this_object$`bioproject_lineage`)) {
        self$`bioproject_lineage` <- ApiClient$new()$deserializeObj(this_object$`bioproject_lineage`, "array[V2reportsBioProjectLineage]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`bioproject_accession`)) {
        self$`bioproject_accession` <- this_object$`bioproject_accession`
      }
      if (!is.null(this_object$`submission_date`)) {
        self$`submission_date` <- this_object$`submission_date`
      }
      if (!is.null(this_object$`release_date`)) {
        self$`release_date` <- this_object$`release_date`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`submitter`)) {
        self$`submitter` <- this_object$`submitter`
      }
      if (!is.null(this_object$`refseq_category`)) {
        self$`refseq_category` <- this_object$`refseq_category`
      }
      if (!is.null(this_object$`synonym`)) {
        self$`synonym` <- this_object$`synonym`
      }
      if (!is.null(this_object$`linked_assembly`)) {
        self$`linked_assembly` <- this_object$`linked_assembly`
      }
      if (!is.null(this_object$`linked_assemblies`)) {
        self$`linked_assemblies` <- ApiClient$new()$deserializeObj(this_object$`linked_assemblies`, "array[V2reportsLinkedAssembly]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`atypical`)) {
        `atypical_object` <- V2reportsAtypicalInfo$new()
        `atypical_object`$fromJSON(jsonlite::toJSON(this_object$`atypical`, auto_unbox = TRUE, digits = NA))
        self$`atypical` <- `atypical_object`
      }
      if (!is.null(this_object$`genome_notes`)) {
        self$`genome_notes` <- ApiClient$new()$deserializeObj(this_object$`genome_notes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`sequencing_tech`)) {
        self$`sequencing_tech` <- this_object$`sequencing_tech`
      }
      if (!is.null(this_object$`assembly_method`)) {
        self$`assembly_method` <- this_object$`assembly_method`
      }
      if (!is.null(this_object$`grouping_method`)) {
        self$`grouping_method` <- this_object$`grouping_method`
      }
      if (!is.null(this_object$`biosample`)) {
        `biosample_object` <- V2reportsBioSampleDescriptor$new()
        `biosample_object`$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
        self$`biosample` <- `biosample_object`
      }
      if (!is.null(this_object$`blast_url`)) {
        self$`blast_url` <- this_object$`blast_url`
      }
      if (!is.null(this_object$`comments`)) {
        self$`comments` <- this_object$`comments`
      }
      if (!is.null(this_object$`suppression_reason`)) {
        self$`suppression_reason` <- this_object$`suppression_reason`
      }
      if (!is.null(this_object$`diploid_role`)) {
        `diploid_role_object` <- V2reportsLinkedAssemblyType$new()
        `diploid_role_object`$fromJSON(jsonlite::toJSON(this_object$`diploid_role`, auto_unbox = TRUE, digits = NA))
        self$`diploid_role` <- `diploid_role_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsAssemblyInfo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsAssemblyInfo
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsAssemblyInfo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`assembly_level` <- this_object$`assembly_level`
      self$`assembly_status` <- V2reportsAssemblyStatus$new()$fromJSON(jsonlite::toJSON(this_object$`assembly_status`, auto_unbox = TRUE, digits = NA))
      self$`paired_assembly` <- V2reportsPairedAssembly$new()$fromJSON(jsonlite::toJSON(this_object$`paired_assembly`, auto_unbox = TRUE, digits = NA))
      self$`assembly_name` <- this_object$`assembly_name`
      self$`assembly_long_name` <- this_object$`assembly_long_name`
      self$`assembly_type` <- this_object$`assembly_type`
      self$`bioproject_lineage` <- ApiClient$new()$deserializeObj(this_object$`bioproject_lineage`, "array[V2reportsBioProjectLineage]", loadNamespace("ncbiopenapi"))
      self$`bioproject_accession` <- this_object$`bioproject_accession`
      self$`submission_date` <- this_object$`submission_date`
      self$`release_date` <- this_object$`release_date`
      self$`description` <- this_object$`description`
      self$`submitter` <- this_object$`submitter`
      self$`refseq_category` <- this_object$`refseq_category`
      self$`synonym` <- this_object$`synonym`
      self$`linked_assembly` <- this_object$`linked_assembly`
      self$`linked_assemblies` <- ApiClient$new()$deserializeObj(this_object$`linked_assemblies`, "array[V2reportsLinkedAssembly]", loadNamespace("ncbiopenapi"))
      self$`atypical` <- V2reportsAtypicalInfo$new()$fromJSON(jsonlite::toJSON(this_object$`atypical`, auto_unbox = TRUE, digits = NA))
      self$`genome_notes` <- ApiClient$new()$deserializeObj(this_object$`genome_notes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`sequencing_tech` <- this_object$`sequencing_tech`
      self$`assembly_method` <- this_object$`assembly_method`
      self$`grouping_method` <- this_object$`grouping_method`
      self$`biosample` <- V2reportsBioSampleDescriptor$new()$fromJSON(jsonlite::toJSON(this_object$`biosample`, auto_unbox = TRUE, digits = NA))
      self$`blast_url` <- this_object$`blast_url`
      self$`comments` <- this_object$`comments`
      self$`suppression_reason` <- this_object$`suppression_reason`
      self$`diploid_role` <- V2reportsLinkedAssemblyType$new()$fromJSON(jsonlite::toJSON(this_object$`diploid_role`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsAssemblyInfo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsAssemblyInfo
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
# V2reportsAssemblyInfo$unlock()
#
## Below is an example to define the print function
# V2reportsAssemblyInfo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsAssemblyInfo$lock()

