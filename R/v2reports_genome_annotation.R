#' Create a new V2reportsGenomeAnnotation
#'
#' @description
#' V2reportsGenomeAnnotation Class
#'
#' @docType class
#' @title V2reportsGenomeAnnotation
#' @description V2reportsGenomeAnnotation Class
#' @format An \code{R6Class} generator object
#' @field gene_id  character [optional]
#' @field symbol  character [optional]
#' @field description  character [optional]
#' @field name  character [optional]
#' @field tax_id  character [optional]
#' @field taxname  character [optional]
#' @field common_name  character [optional]
#' @field type  \link{V2reportsGeneType} [optional]
#' @field gene_type  character [optional]
#' @field rna_type  \link{V2reportsRnaType} [optional]
#' @field orientation  \link{V2reportsOrientation} [optional]
#' @field locus_tag  character [optional]
#' @field reference_standards  list(\link{V2reportsGenomicRegion}) [optional]
#' @field genomic_regions  list(\link{V2reportsGenomicRegion}) [optional]
#' @field transcripts  list(\link{V2reportsTranscript}) [optional]
#' @field proteins  list(\link{V2reportsProtein}) [optional]
#' @field chromosomes  list(character) [optional]
#' @field swiss_prot_accessions  list(character) [optional]
#' @field ensembl_gene_ids  list(character) [optional]
#' @field omim_ids  list(character) [optional]
#' @field synonyms  list(character) [optional]
#' @field annotations  list(\link{V2reportsAnnotation}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGenomeAnnotation <- R6::R6Class(
  "V2reportsGenomeAnnotation",
  public = list(
    `gene_id` = NULL,
    `symbol` = NULL,
    `description` = NULL,
    `name` = NULL,
    `tax_id` = NULL,
    `taxname` = NULL,
    `common_name` = NULL,
    `type` = NULL,
    `gene_type` = NULL,
    `rna_type` = NULL,
    `orientation` = NULL,
    `locus_tag` = NULL,
    `reference_standards` = NULL,
    `genomic_regions` = NULL,
    `transcripts` = NULL,
    `proteins` = NULL,
    `chromosomes` = NULL,
    `swiss_prot_accessions` = NULL,
    `ensembl_gene_ids` = NULL,
    `omim_ids` = NULL,
    `synonyms` = NULL,
    `annotations` = NULL,

    #' @description
    #' Initialize a new V2reportsGenomeAnnotation class.
    #'
    #' @param gene_id gene_id
    #' @param symbol symbol
    #' @param description description
    #' @param name name
    #' @param tax_id tax_id
    #' @param taxname taxname
    #' @param common_name common_name
    #' @param type type
    #' @param gene_type gene_type
    #' @param rna_type rna_type
    #' @param orientation orientation
    #' @param locus_tag locus_tag
    #' @param reference_standards reference_standards
    #' @param genomic_regions genomic_regions
    #' @param transcripts transcripts
    #' @param proteins proteins
    #' @param chromosomes chromosomes
    #' @param swiss_prot_accessions swiss_prot_accessions
    #' @param ensembl_gene_ids ensembl_gene_ids
    #' @param omim_ids omim_ids
    #' @param synonyms synonyms
    #' @param annotations annotations
    #' @param ... Other optional arguments.
    initialize = function(`gene_id` = NULL, `symbol` = NULL, `description` = NULL, `name` = NULL, `tax_id` = NULL, `taxname` = NULL, `common_name` = NULL, `type` = NULL, `gene_type` = NULL, `rna_type` = NULL, `orientation` = NULL, `locus_tag` = NULL, `reference_standards` = NULL, `genomic_regions` = NULL, `transcripts` = NULL, `proteins` = NULL, `chromosomes` = NULL, `swiss_prot_accessions` = NULL, `ensembl_gene_ids` = NULL, `omim_ids` = NULL, `synonyms` = NULL, `annotations` = NULL, ...) {
      if (!is.null(`gene_id`)) {
        if (!(is.character(`gene_id`) && length(`gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `gene_id`. Must be a string:", `gene_id`))
        }
        self$`gene_id` <- `gene_id`
      }
      if (!is.null(`symbol`)) {
        if (!(is.character(`symbol`) && length(`symbol`) == 1)) {
          stop(paste("Error! Invalid data for `symbol`. Must be a string:", `symbol`))
        }
        self$`symbol` <- `symbol`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`tax_id`)) {
        if (!(is.character(`tax_id`) && length(`tax_id`) == 1)) {
          stop(paste("Error! Invalid data for `tax_id`. Must be a string:", `tax_id`))
        }
        self$`tax_id` <- `tax_id`
      }
      if (!is.null(`taxname`)) {
        if (!(is.character(`taxname`) && length(`taxname`) == 1)) {
          stop(paste("Error! Invalid data for `taxname`. Must be a string:", `taxname`))
        }
        self$`taxname` <- `taxname`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c())) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`type`))
        self$`type` <- `type`
      }
      if (!is.null(`gene_type`)) {
        if (!(is.character(`gene_type`) && length(`gene_type`) == 1)) {
          stop(paste("Error! Invalid data for `gene_type`. Must be a string:", `gene_type`))
        }
        self$`gene_type` <- `gene_type`
      }
      if (!is.null(`rna_type`)) {
        if (!(`rna_type` %in% c())) {
          stop(paste("Error! \"", `rna_type`, "\" cannot be assigned to `rna_type`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`rna_type`))
        self$`rna_type` <- `rna_type`
      }
      if (!is.null(`orientation`)) {
        if (!(`orientation` %in% c())) {
          stop(paste("Error! \"", `orientation`, "\" cannot be assigned to `orientation`. Must be .", sep = ""))
        }
        stopifnot(R6::is.R6(`orientation`))
        self$`orientation` <- `orientation`
      }
      if (!is.null(`locus_tag`)) {
        if (!(is.character(`locus_tag`) && length(`locus_tag`) == 1)) {
          stop(paste("Error! Invalid data for `locus_tag`. Must be a string:", `locus_tag`))
        }
        self$`locus_tag` <- `locus_tag`
      }
      if (!is.null(`reference_standards`)) {
        stopifnot(is.vector(`reference_standards`), length(`reference_standards`) != 0)
        sapply(`reference_standards`, function(x) stopifnot(R6::is.R6(x)))
        self$`reference_standards` <- `reference_standards`
      }
      if (!is.null(`genomic_regions`)) {
        stopifnot(is.vector(`genomic_regions`), length(`genomic_regions`) != 0)
        sapply(`genomic_regions`, function(x) stopifnot(R6::is.R6(x)))
        self$`genomic_regions` <- `genomic_regions`
      }
      if (!is.null(`transcripts`)) {
        stopifnot(is.vector(`transcripts`), length(`transcripts`) != 0)
        sapply(`transcripts`, function(x) stopifnot(R6::is.R6(x)))
        self$`transcripts` <- `transcripts`
      }
      if (!is.null(`proteins`)) {
        stopifnot(is.vector(`proteins`), length(`proteins`) != 0)
        sapply(`proteins`, function(x) stopifnot(R6::is.R6(x)))
        self$`proteins` <- `proteins`
      }
      if (!is.null(`chromosomes`)) {
        stopifnot(is.vector(`chromosomes`), length(`chromosomes`) != 0)
        sapply(`chromosomes`, function(x) stopifnot(is.character(x)))
        self$`chromosomes` <- `chromosomes`
      }
      if (!is.null(`swiss_prot_accessions`)) {
        stopifnot(is.vector(`swiss_prot_accessions`), length(`swiss_prot_accessions`) != 0)
        sapply(`swiss_prot_accessions`, function(x) stopifnot(is.character(x)))
        self$`swiss_prot_accessions` <- `swiss_prot_accessions`
      }
      if (!is.null(`ensembl_gene_ids`)) {
        stopifnot(is.vector(`ensembl_gene_ids`), length(`ensembl_gene_ids`) != 0)
        sapply(`ensembl_gene_ids`, function(x) stopifnot(is.character(x)))
        self$`ensembl_gene_ids` <- `ensembl_gene_ids`
      }
      if (!is.null(`omim_ids`)) {
        stopifnot(is.vector(`omim_ids`), length(`omim_ids`) != 0)
        sapply(`omim_ids`, function(x) stopifnot(is.character(x)))
        self$`omim_ids` <- `omim_ids`
      }
      if (!is.null(`synonyms`)) {
        stopifnot(is.vector(`synonyms`), length(`synonyms`) != 0)
        sapply(`synonyms`, function(x) stopifnot(is.character(x)))
        self$`synonyms` <- `synonyms`
      }
      if (!is.null(`annotations`)) {
        stopifnot(is.vector(`annotations`), length(`annotations`) != 0)
        sapply(`annotations`, function(x) stopifnot(R6::is.R6(x)))
        self$`annotations` <- `annotations`
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
    #' @return V2reportsGenomeAnnotation as a base R list.
    #' @examples
    #' # convert array of V2reportsGenomeAnnotation (x) to a data frame
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
    #' Convert V2reportsGenomeAnnotation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGenomeAnnotationObject <- list()
      if (!is.null(self$`gene_id`)) {
        V2reportsGenomeAnnotationObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`symbol`)) {
        V2reportsGenomeAnnotationObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`description`)) {
        V2reportsGenomeAnnotationObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`name`)) {
        V2reportsGenomeAnnotationObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`tax_id`)) {
        V2reportsGenomeAnnotationObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`taxname`)) {
        V2reportsGenomeAnnotationObject[["taxname"]] <-
          self$`taxname`
      }
      if (!is.null(self$`common_name`)) {
        V2reportsGenomeAnnotationObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`type`)) {
        V2reportsGenomeAnnotationObject[["type"]] <-
          self$`type`$toSimpleType()
      }
      if (!is.null(self$`gene_type`)) {
        V2reportsGenomeAnnotationObject[["gene_type"]] <-
          self$`gene_type`
      }
      if (!is.null(self$`rna_type`)) {
        V2reportsGenomeAnnotationObject[["rna_type"]] <-
          self$`rna_type`$toSimpleType()
      }
      if (!is.null(self$`orientation`)) {
        V2reportsGenomeAnnotationObject[["orientation"]] <-
          self$`orientation`$toSimpleType()
      }
      if (!is.null(self$`locus_tag`)) {
        V2reportsGenomeAnnotationObject[["locus_tag"]] <-
          self$`locus_tag`
      }
      if (!is.null(self$`reference_standards`)) {
        V2reportsGenomeAnnotationObject[["reference_standards"]] <-
          lapply(self$`reference_standards`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`genomic_regions`)) {
        V2reportsGenomeAnnotationObject[["genomic_regions"]] <-
          lapply(self$`genomic_regions`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`transcripts`)) {
        V2reportsGenomeAnnotationObject[["transcripts"]] <-
          lapply(self$`transcripts`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`proteins`)) {
        V2reportsGenomeAnnotationObject[["proteins"]] <-
          lapply(self$`proteins`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`chromosomes`)) {
        V2reportsGenomeAnnotationObject[["chromosomes"]] <-
          self$`chromosomes`
      }
      if (!is.null(self$`swiss_prot_accessions`)) {
        V2reportsGenomeAnnotationObject[["swiss_prot_accessions"]] <-
          self$`swiss_prot_accessions`
      }
      if (!is.null(self$`ensembl_gene_ids`)) {
        V2reportsGenomeAnnotationObject[["ensembl_gene_ids"]] <-
          self$`ensembl_gene_ids`
      }
      if (!is.null(self$`omim_ids`)) {
        V2reportsGenomeAnnotationObject[["omim_ids"]] <-
          self$`omim_ids`
      }
      if (!is.null(self$`synonyms`)) {
        V2reportsGenomeAnnotationObject[["synonyms"]] <-
          self$`synonyms`
      }
      if (!is.null(self$`annotations`)) {
        V2reportsGenomeAnnotationObject[["annotations"]] <-
          lapply(self$`annotations`, function(x) x$toSimpleType())
      }
      return(V2reportsGenomeAnnotationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomeAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomeAnnotation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`gene_id`)) {
        self$`gene_id` <- this_object$`gene_id`
      }
      if (!is.null(this_object$`symbol`)) {
        self$`symbol` <- this_object$`symbol`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`tax_id`)) {
        self$`tax_id` <- this_object$`tax_id`
      }
      if (!is.null(this_object$`taxname`)) {
        self$`taxname` <- this_object$`taxname`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`type`)) {
        `type_object` <- V2reportsGeneType$new()
        `type_object`$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
        self$`type` <- `type_object`
      }
      if (!is.null(this_object$`gene_type`)) {
        self$`gene_type` <- this_object$`gene_type`
      }
      if (!is.null(this_object$`rna_type`)) {
        `rna_type_object` <- V2reportsRnaType$new()
        `rna_type_object`$fromJSON(jsonlite::toJSON(this_object$`rna_type`, auto_unbox = TRUE, digits = NA))
        self$`rna_type` <- `rna_type_object`
      }
      if (!is.null(this_object$`orientation`)) {
        `orientation_object` <- V2reportsOrientation$new()
        `orientation_object`$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
        self$`orientation` <- `orientation_object`
      }
      if (!is.null(this_object$`locus_tag`)) {
        self$`locus_tag` <- this_object$`locus_tag`
      }
      if (!is.null(this_object$`reference_standards`)) {
        self$`reference_standards` <- ApiClient$new()$deserializeObj(this_object$`reference_standards`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`genomic_regions`)) {
        self$`genomic_regions` <- ApiClient$new()$deserializeObj(this_object$`genomic_regions`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`transcripts`)) {
        self$`transcripts` <- ApiClient$new()$deserializeObj(this_object$`transcripts`, "array[V2reportsTranscript]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`proteins`)) {
        self$`proteins` <- ApiClient$new()$deserializeObj(this_object$`proteins`, "array[V2reportsProtein]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`chromosomes`)) {
        self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`swiss_prot_accessions`)) {
        self$`swiss_prot_accessions` <- ApiClient$new()$deserializeObj(this_object$`swiss_prot_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`ensembl_gene_ids`)) {
        self$`ensembl_gene_ids` <- ApiClient$new()$deserializeObj(this_object$`ensembl_gene_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`omim_ids`)) {
        self$`omim_ids` <- ApiClient$new()$deserializeObj(this_object$`omim_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`synonyms`)) {
        self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`annotations`)) {
        self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[V2reportsAnnotation]", loadNamespace("ncbiopenapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGenomeAnnotation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGenomeAnnotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGenomeAnnotation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_id` <- this_object$`gene_id`
      self$`symbol` <- this_object$`symbol`
      self$`description` <- this_object$`description`
      self$`name` <- this_object$`name`
      self$`tax_id` <- this_object$`tax_id`
      self$`taxname` <- this_object$`taxname`
      self$`common_name` <- this_object$`common_name`
      self$`type` <- V2reportsGeneType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`gene_type` <- this_object$`gene_type`
      self$`rna_type` <- V2reportsRnaType$new()$fromJSON(jsonlite::toJSON(this_object$`rna_type`, auto_unbox = TRUE, digits = NA))
      self$`orientation` <- V2reportsOrientation$new()$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
      self$`locus_tag` <- this_object$`locus_tag`
      self$`reference_standards` <- ApiClient$new()$deserializeObj(this_object$`reference_standards`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      self$`genomic_regions` <- ApiClient$new()$deserializeObj(this_object$`genomic_regions`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      self$`transcripts` <- ApiClient$new()$deserializeObj(this_object$`transcripts`, "array[V2reportsTranscript]", loadNamespace("ncbiopenapi"))
      self$`proteins` <- ApiClient$new()$deserializeObj(this_object$`proteins`, "array[V2reportsProtein]", loadNamespace("ncbiopenapi"))
      self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`swiss_prot_accessions` <- ApiClient$new()$deserializeObj(this_object$`swiss_prot_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`ensembl_gene_ids` <- ApiClient$new()$deserializeObj(this_object$`ensembl_gene_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`omim_ids` <- ApiClient$new()$deserializeObj(this_object$`omim_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[V2reportsAnnotation]", loadNamespace("ncbiopenapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGenomeAnnotation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGenomeAnnotation
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
# V2reportsGenomeAnnotation$unlock()
#
## Below is an example to define the print function
# V2reportsGenomeAnnotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGenomeAnnotation$lock()

