#' Create a new V2reportsGeneDescriptor
#'
#' @description
#' V2reportsGeneDescriptor Class
#'
#' @docType class
#' @title V2reportsGeneDescriptor
#' @description V2reportsGeneDescriptor Class
#' @format An \code{R6Class} generator object
#' @field gene_id  character [optional]
#' @field symbol  character [optional]
#' @field description  character [optional]
#' @field tax_id  character [optional]
#' @field taxname  character [optional]
#' @field common_name  character [optional]
#' @field type  \link{V2reportsGeneType} [optional]
#' @field rna_type  \link{V2reportsRnaType} [optional]
#' @field orientation  \link{V2reportsOrientation} [optional]
#' @field reference_standards  list(\link{V2reportsGenomicRegion}) [optional]
#' @field genomic_regions  list(\link{V2reportsGenomicRegion}) [optional]
#' @field chromosomes  list(character) [optional]
#' @field nomenclature_authority  \link{V2reportsNomenclatureAuthority} [optional]
#' @field swiss_prot_accessions  list(character) [optional]
#' @field ensembl_gene_ids  list(character) [optional]
#' @field omim_ids  list(character) [optional]
#' @field synonyms  list(character) [optional]
#' @field replaced_gene_id  character [optional]
#' @field annotations  list(\link{V2reportsAnnotation}) [optional]
#' @field transcript_count  integer [optional]
#' @field protein_count  integer [optional]
#' @field transcript_type_counts  list(\link{V2reportsTranscriptTypeCount}) [optional]
#' @field gene_groups  list(\link{V2reportsGeneGroup}) [optional]
#' @field summary  list(\link{V2reportsGeneSummary}) [optional]
#' @field gene_ontology  \link{V2reportsGeneOntology} [optional]
#' @field locus_tag  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsGeneDescriptor <- R6::R6Class(
  "V2reportsGeneDescriptor",
  public = list(
    `gene_id` = NULL,
    `symbol` = NULL,
    `description` = NULL,
    `tax_id` = NULL,
    `taxname` = NULL,
    `common_name` = NULL,
    `type` = NULL,
    `rna_type` = NULL,
    `orientation` = NULL,
    `reference_standards` = NULL,
    `genomic_regions` = NULL,
    `chromosomes` = NULL,
    `nomenclature_authority` = NULL,
    `swiss_prot_accessions` = NULL,
    `ensembl_gene_ids` = NULL,
    `omim_ids` = NULL,
    `synonyms` = NULL,
    `replaced_gene_id` = NULL,
    `annotations` = NULL,
    `transcript_count` = NULL,
    `protein_count` = NULL,
    `transcript_type_counts` = NULL,
    `gene_groups` = NULL,
    `summary` = NULL,
    `gene_ontology` = NULL,
    `locus_tag` = NULL,

    #' @description
    #' Initialize a new V2reportsGeneDescriptor class.
    #'
    #' @param gene_id gene_id
    #' @param symbol symbol
    #' @param description description
    #' @param tax_id tax_id
    #' @param taxname taxname
    #' @param common_name common_name
    #' @param type type
    #' @param rna_type rna_type
    #' @param orientation orientation
    #' @param reference_standards reference_standards
    #' @param genomic_regions genomic_regions
    #' @param chromosomes chromosomes
    #' @param nomenclature_authority nomenclature_authority
    #' @param swiss_prot_accessions swiss_prot_accessions
    #' @param ensembl_gene_ids ensembl_gene_ids
    #' @param omim_ids omim_ids
    #' @param synonyms synonyms
    #' @param replaced_gene_id replaced_gene_id
    #' @param annotations annotations
    #' @param transcript_count transcript_count
    #' @param protein_count protein_count
    #' @param transcript_type_counts transcript_type_counts
    #' @param gene_groups gene_groups
    #' @param summary summary
    #' @param gene_ontology gene_ontology
    #' @param locus_tag locus_tag
    #' @param ... Other optional arguments.
    initialize = function(`gene_id` = NULL, `symbol` = NULL, `description` = NULL, `tax_id` = NULL, `taxname` = NULL, `common_name` = NULL, `type` = NULL, `rna_type` = NULL, `orientation` = NULL, `reference_standards` = NULL, `genomic_regions` = NULL, `chromosomes` = NULL, `nomenclature_authority` = NULL, `swiss_prot_accessions` = NULL, `ensembl_gene_ids` = NULL, `omim_ids` = NULL, `synonyms` = NULL, `replaced_gene_id` = NULL, `annotations` = NULL, `transcript_count` = NULL, `protein_count` = NULL, `transcript_type_counts` = NULL, `gene_groups` = NULL, `summary` = NULL, `gene_ontology` = NULL, `locus_tag` = NULL, ...) {
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
      if (!is.null(`chromosomes`)) {
        stopifnot(is.vector(`chromosomes`), length(`chromosomes`) != 0)
        sapply(`chromosomes`, function(x) stopifnot(is.character(x)))
        self$`chromosomes` <- `chromosomes`
      }
      if (!is.null(`nomenclature_authority`)) {
        stopifnot(R6::is.R6(`nomenclature_authority`))
        self$`nomenclature_authority` <- `nomenclature_authority`
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
      if (!is.null(`replaced_gene_id`)) {
        if (!(is.character(`replaced_gene_id`) && length(`replaced_gene_id`) == 1)) {
          stop(paste("Error! Invalid data for `replaced_gene_id`. Must be a string:", `replaced_gene_id`))
        }
        self$`replaced_gene_id` <- `replaced_gene_id`
      }
      if (!is.null(`annotations`)) {
        stopifnot(is.vector(`annotations`), length(`annotations`) != 0)
        sapply(`annotations`, function(x) stopifnot(R6::is.R6(x)))
        self$`annotations` <- `annotations`
      }
      if (!is.null(`transcript_count`)) {
        if (!(is.numeric(`transcript_count`) && length(`transcript_count`) == 1)) {
          stop(paste("Error! Invalid data for `transcript_count`. Must be an integer:", `transcript_count`))
        }
        self$`transcript_count` <- `transcript_count`
      }
      if (!is.null(`protein_count`)) {
        if (!(is.numeric(`protein_count`) && length(`protein_count`) == 1)) {
          stop(paste("Error! Invalid data for `protein_count`. Must be an integer:", `protein_count`))
        }
        self$`protein_count` <- `protein_count`
      }
      if (!is.null(`transcript_type_counts`)) {
        stopifnot(is.vector(`transcript_type_counts`), length(`transcript_type_counts`) != 0)
        sapply(`transcript_type_counts`, function(x) stopifnot(R6::is.R6(x)))
        self$`transcript_type_counts` <- `transcript_type_counts`
      }
      if (!is.null(`gene_groups`)) {
        stopifnot(is.vector(`gene_groups`), length(`gene_groups`) != 0)
        sapply(`gene_groups`, function(x) stopifnot(R6::is.R6(x)))
        self$`gene_groups` <- `gene_groups`
      }
      if (!is.null(`summary`)) {
        stopifnot(is.vector(`summary`), length(`summary`) != 0)
        sapply(`summary`, function(x) stopifnot(R6::is.R6(x)))
        self$`summary` <- `summary`
      }
      if (!is.null(`gene_ontology`)) {
        stopifnot(R6::is.R6(`gene_ontology`))
        self$`gene_ontology` <- `gene_ontology`
      }
      if (!is.null(`locus_tag`)) {
        if (!(is.character(`locus_tag`) && length(`locus_tag`) == 1)) {
          stop(paste("Error! Invalid data for `locus_tag`. Must be a string:", `locus_tag`))
        }
        self$`locus_tag` <- `locus_tag`
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
    #' @return V2reportsGeneDescriptor as a base R list.
    #' @examples
    #' # convert array of V2reportsGeneDescriptor (x) to a data frame
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
    #' Convert V2reportsGeneDescriptor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsGeneDescriptorObject <- list()
      if (!is.null(self$`gene_id`)) {
        V2reportsGeneDescriptorObject[["gene_id"]] <-
          self$`gene_id`
      }
      if (!is.null(self$`symbol`)) {
        V2reportsGeneDescriptorObject[["symbol"]] <-
          self$`symbol`
      }
      if (!is.null(self$`description`)) {
        V2reportsGeneDescriptorObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`tax_id`)) {
        V2reportsGeneDescriptorObject[["tax_id"]] <-
          self$`tax_id`
      }
      if (!is.null(self$`taxname`)) {
        V2reportsGeneDescriptorObject[["taxname"]] <-
          self$`taxname`
      }
      if (!is.null(self$`common_name`)) {
        V2reportsGeneDescriptorObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`type`)) {
        V2reportsGeneDescriptorObject[["type"]] <-
          self$`type`$toSimpleType()
      }
      if (!is.null(self$`rna_type`)) {
        V2reportsGeneDescriptorObject[["rna_type"]] <-
          self$`rna_type`$toSimpleType()
      }
      if (!is.null(self$`orientation`)) {
        V2reportsGeneDescriptorObject[["orientation"]] <-
          self$`orientation`$toSimpleType()
      }
      if (!is.null(self$`reference_standards`)) {
        V2reportsGeneDescriptorObject[["reference_standards"]] <-
          lapply(self$`reference_standards`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`genomic_regions`)) {
        V2reportsGeneDescriptorObject[["genomic_regions"]] <-
          lapply(self$`genomic_regions`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`chromosomes`)) {
        V2reportsGeneDescriptorObject[["chromosomes"]] <-
          self$`chromosomes`
      }
      if (!is.null(self$`nomenclature_authority`)) {
        V2reportsGeneDescriptorObject[["nomenclature_authority"]] <-
          self$`nomenclature_authority`$toSimpleType()
      }
      if (!is.null(self$`swiss_prot_accessions`)) {
        V2reportsGeneDescriptorObject[["swiss_prot_accessions"]] <-
          self$`swiss_prot_accessions`
      }
      if (!is.null(self$`ensembl_gene_ids`)) {
        V2reportsGeneDescriptorObject[["ensembl_gene_ids"]] <-
          self$`ensembl_gene_ids`
      }
      if (!is.null(self$`omim_ids`)) {
        V2reportsGeneDescriptorObject[["omim_ids"]] <-
          self$`omim_ids`
      }
      if (!is.null(self$`synonyms`)) {
        V2reportsGeneDescriptorObject[["synonyms"]] <-
          self$`synonyms`
      }
      if (!is.null(self$`replaced_gene_id`)) {
        V2reportsGeneDescriptorObject[["replaced_gene_id"]] <-
          self$`replaced_gene_id`
      }
      if (!is.null(self$`annotations`)) {
        V2reportsGeneDescriptorObject[["annotations"]] <-
          lapply(self$`annotations`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`transcript_count`)) {
        V2reportsGeneDescriptorObject[["transcript_count"]] <-
          self$`transcript_count`
      }
      if (!is.null(self$`protein_count`)) {
        V2reportsGeneDescriptorObject[["protein_count"]] <-
          self$`protein_count`
      }
      if (!is.null(self$`transcript_type_counts`)) {
        V2reportsGeneDescriptorObject[["transcript_type_counts"]] <-
          lapply(self$`transcript_type_counts`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`gene_groups`)) {
        V2reportsGeneDescriptorObject[["gene_groups"]] <-
          lapply(self$`gene_groups`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`summary`)) {
        V2reportsGeneDescriptorObject[["summary"]] <-
          lapply(self$`summary`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`gene_ontology`)) {
        V2reportsGeneDescriptorObject[["gene_ontology"]] <-
          self$`gene_ontology`$toSimpleType()
      }
      if (!is.null(self$`locus_tag`)) {
        V2reportsGeneDescriptorObject[["locus_tag"]] <-
          self$`locus_tag`
      }
      return(V2reportsGeneDescriptorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneDescriptor
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
      if (!is.null(this_object$`reference_standards`)) {
        self$`reference_standards` <- ApiClient$new()$deserializeObj(this_object$`reference_standards`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`genomic_regions`)) {
        self$`genomic_regions` <- ApiClient$new()$deserializeObj(this_object$`genomic_regions`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`chromosomes`)) {
        self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`nomenclature_authority`)) {
        `nomenclature_authority_object` <- V2reportsNomenclatureAuthority$new()
        `nomenclature_authority_object`$fromJSON(jsonlite::toJSON(this_object$`nomenclature_authority`, auto_unbox = TRUE, digits = NA))
        self$`nomenclature_authority` <- `nomenclature_authority_object`
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
      if (!is.null(this_object$`replaced_gene_id`)) {
        self$`replaced_gene_id` <- this_object$`replaced_gene_id`
      }
      if (!is.null(this_object$`annotations`)) {
        self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[V2reportsAnnotation]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`transcript_count`)) {
        self$`transcript_count` <- this_object$`transcript_count`
      }
      if (!is.null(this_object$`protein_count`)) {
        self$`protein_count` <- this_object$`protein_count`
      }
      if (!is.null(this_object$`transcript_type_counts`)) {
        self$`transcript_type_counts` <- ApiClient$new()$deserializeObj(this_object$`transcript_type_counts`, "array[V2reportsTranscriptTypeCount]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`gene_groups`)) {
        self$`gene_groups` <- ApiClient$new()$deserializeObj(this_object$`gene_groups`, "array[V2reportsGeneGroup]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`summary`)) {
        self$`summary` <- ApiClient$new()$deserializeObj(this_object$`summary`, "array[V2reportsGeneSummary]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`gene_ontology`)) {
        `gene_ontology_object` <- V2reportsGeneOntology$new()
        `gene_ontology_object`$fromJSON(jsonlite::toJSON(this_object$`gene_ontology`, auto_unbox = TRUE, digits = NA))
        self$`gene_ontology` <- `gene_ontology_object`
      }
      if (!is.null(this_object$`locus_tag`)) {
        self$`locus_tag` <- this_object$`locus_tag`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsGeneDescriptor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsGeneDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsGeneDescriptor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`gene_id` <- this_object$`gene_id`
      self$`symbol` <- this_object$`symbol`
      self$`description` <- this_object$`description`
      self$`tax_id` <- this_object$`tax_id`
      self$`taxname` <- this_object$`taxname`
      self$`common_name` <- this_object$`common_name`
      self$`type` <- V2reportsGeneType$new()$fromJSON(jsonlite::toJSON(this_object$`type`, auto_unbox = TRUE, digits = NA))
      self$`rna_type` <- V2reportsRnaType$new()$fromJSON(jsonlite::toJSON(this_object$`rna_type`, auto_unbox = TRUE, digits = NA))
      self$`orientation` <- V2reportsOrientation$new()$fromJSON(jsonlite::toJSON(this_object$`orientation`, auto_unbox = TRUE, digits = NA))
      self$`reference_standards` <- ApiClient$new()$deserializeObj(this_object$`reference_standards`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      self$`genomic_regions` <- ApiClient$new()$deserializeObj(this_object$`genomic_regions`, "array[V2reportsGenomicRegion]", loadNamespace("ncbiopenapi"))
      self$`chromosomes` <- ApiClient$new()$deserializeObj(this_object$`chromosomes`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`nomenclature_authority` <- V2reportsNomenclatureAuthority$new()$fromJSON(jsonlite::toJSON(this_object$`nomenclature_authority`, auto_unbox = TRUE, digits = NA))
      self$`swiss_prot_accessions` <- ApiClient$new()$deserializeObj(this_object$`swiss_prot_accessions`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`ensembl_gene_ids` <- ApiClient$new()$deserializeObj(this_object$`ensembl_gene_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`omim_ids` <- ApiClient$new()$deserializeObj(this_object$`omim_ids`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`synonyms` <- ApiClient$new()$deserializeObj(this_object$`synonyms`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`replaced_gene_id` <- this_object$`replaced_gene_id`
      self$`annotations` <- ApiClient$new()$deserializeObj(this_object$`annotations`, "array[V2reportsAnnotation]", loadNamespace("ncbiopenapi"))
      self$`transcript_count` <- this_object$`transcript_count`
      self$`protein_count` <- this_object$`protein_count`
      self$`transcript_type_counts` <- ApiClient$new()$deserializeObj(this_object$`transcript_type_counts`, "array[V2reportsTranscriptTypeCount]", loadNamespace("ncbiopenapi"))
      self$`gene_groups` <- ApiClient$new()$deserializeObj(this_object$`gene_groups`, "array[V2reportsGeneGroup]", loadNamespace("ncbiopenapi"))
      self$`summary` <- ApiClient$new()$deserializeObj(this_object$`summary`, "array[V2reportsGeneSummary]", loadNamespace("ncbiopenapi"))
      self$`gene_ontology` <- V2reportsGeneOntology$new()$fromJSON(jsonlite::toJSON(this_object$`gene_ontology`, auto_unbox = TRUE, digits = NA))
      self$`locus_tag` <- this_object$`locus_tag`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsGeneDescriptor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsGeneDescriptor
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
# V2reportsGeneDescriptor$unlock()
#
## Below is an example to define the print function
# V2reportsGeneDescriptor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsGeneDescriptor$lock()

