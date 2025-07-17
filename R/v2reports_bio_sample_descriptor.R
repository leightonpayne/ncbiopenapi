#' Create a new V2reportsBioSampleDescriptor
#'
#' @description
#' V2reportsBioSampleDescriptor Class
#'
#' @docType class
#' @title V2reportsBioSampleDescriptor
#' @description V2reportsBioSampleDescriptor Class
#' @format An \code{R6Class} generator object
#' @field accession  character [optional]
#' @field last_updated  character [optional]
#' @field publication_date  character [optional]
#' @field submission_date  character [optional]
#' @field sample_ids  list(\link{V2reportsBioSampleId}) [optional]
#' @field description  \link{V2reportsBioSampleDescription} [optional]
#' @field owner  \link{V2reportsBioSampleOwner} [optional]
#' @field models  list(character) [optional]
#' @field bioprojects  list(\link{V2reportsBioProject}) [optional]
#' @field package  character [optional]
#' @field attributes  list(\link{V2reportsBioSampleAttribute}) [optional]
#' @field status  \link{V2reportsBioSampleStatus} [optional]
#' @field age  character [optional]
#' @field biomaterial_provider  character [optional]
#' @field breed  character [optional]
#' @field collected_by  character [optional]
#' @field collection_date  character [optional]
#' @field cultivar  character [optional]
#' @field dev_stage  character [optional]
#' @field ecotype  character [optional]
#' @field geo_loc_name  character [optional]
#' @field host  character [optional]
#' @field host_disease  character [optional]
#' @field identified_by  character [optional]
#' @field ifsac_category  character [optional]
#' @field isolate  character [optional]
#' @field isolate_name_alias  character [optional]
#' @field isolation_source  character [optional]
#' @field lat_lon  character [optional]
#' @field project_name  character [optional]
#' @field sample_name  character [optional]
#' @field serovar  character [optional]
#' @field sex  character [optional]
#' @field source_type  character [optional]
#' @field strain  character [optional]
#' @field sub_species  character [optional]
#' @field tissue  character [optional]
#' @field serotype  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
V2reportsBioSampleDescriptor <- R6::R6Class(
  "V2reportsBioSampleDescriptor",
  public = list(
    `accession` = NULL,
    `last_updated` = NULL,
    `publication_date` = NULL,
    `submission_date` = NULL,
    `sample_ids` = NULL,
    `description` = NULL,
    `owner` = NULL,
    `models` = NULL,
    `bioprojects` = NULL,
    `package` = NULL,
    `attributes` = NULL,
    `status` = NULL,
    `age` = NULL,
    `biomaterial_provider` = NULL,
    `breed` = NULL,
    `collected_by` = NULL,
    `collection_date` = NULL,
    `cultivar` = NULL,
    `dev_stage` = NULL,
    `ecotype` = NULL,
    `geo_loc_name` = NULL,
    `host` = NULL,
    `host_disease` = NULL,
    `identified_by` = NULL,
    `ifsac_category` = NULL,
    `isolate` = NULL,
    `isolate_name_alias` = NULL,
    `isolation_source` = NULL,
    `lat_lon` = NULL,
    `project_name` = NULL,
    `sample_name` = NULL,
    `serovar` = NULL,
    `sex` = NULL,
    `source_type` = NULL,
    `strain` = NULL,
    `sub_species` = NULL,
    `tissue` = NULL,
    `serotype` = NULL,

    #' @description
    #' Initialize a new V2reportsBioSampleDescriptor class.
    #'
    #' @param accession accession
    #' @param last_updated last_updated
    #' @param publication_date publication_date
    #' @param submission_date submission_date
    #' @param sample_ids sample_ids
    #' @param description description
    #' @param owner owner
    #' @param models models
    #' @param bioprojects bioprojects
    #' @param package package
    #' @param attributes attributes
    #' @param status status
    #' @param age age
    #' @param biomaterial_provider biomaterial_provider
    #' @param breed breed
    #' @param collected_by collected_by
    #' @param collection_date collection_date
    #' @param cultivar cultivar
    #' @param dev_stage dev_stage
    #' @param ecotype ecotype
    #' @param geo_loc_name geo_loc_name
    #' @param host host
    #' @param host_disease host_disease
    #' @param identified_by identified_by
    #' @param ifsac_category ifsac_category
    #' @param isolate isolate
    #' @param isolate_name_alias isolate_name_alias
    #' @param isolation_source isolation_source
    #' @param lat_lon lat_lon
    #' @param project_name project_name
    #' @param sample_name sample_name
    #' @param serovar serovar
    #' @param sex sex
    #' @param source_type source_type
    #' @param strain strain
    #' @param sub_species sub_species
    #' @param tissue tissue
    #' @param serotype serotype
    #' @param ... Other optional arguments.
    initialize = function(`accession` = NULL, `last_updated` = NULL, `publication_date` = NULL, `submission_date` = NULL, `sample_ids` = NULL, `description` = NULL, `owner` = NULL, `models` = NULL, `bioprojects` = NULL, `package` = NULL, `attributes` = NULL, `status` = NULL, `age` = NULL, `biomaterial_provider` = NULL, `breed` = NULL, `collected_by` = NULL, `collection_date` = NULL, `cultivar` = NULL, `dev_stage` = NULL, `ecotype` = NULL, `geo_loc_name` = NULL, `host` = NULL, `host_disease` = NULL, `identified_by` = NULL, `ifsac_category` = NULL, `isolate` = NULL, `isolate_name_alias` = NULL, `isolation_source` = NULL, `lat_lon` = NULL, `project_name` = NULL, `sample_name` = NULL, `serovar` = NULL, `sex` = NULL, `source_type` = NULL, `strain` = NULL, `sub_species` = NULL, `tissue` = NULL, `serotype` = NULL, ...) {
      if (!is.null(`accession`)) {
        if (!(is.character(`accession`) && length(`accession`) == 1)) {
          stop(paste("Error! Invalid data for `accession`. Must be a string:", `accession`))
        }
        self$`accession` <- `accession`
      }
      if (!is.null(`last_updated`)) {
        if (!(is.character(`last_updated`) && length(`last_updated`) == 1)) {
          stop(paste("Error! Invalid data for `last_updated`. Must be a string:", `last_updated`))
        }
        self$`last_updated` <- `last_updated`
      }
      if (!is.null(`publication_date`)) {
        if (!(is.character(`publication_date`) && length(`publication_date`) == 1)) {
          stop(paste("Error! Invalid data for `publication_date`. Must be a string:", `publication_date`))
        }
        self$`publication_date` <- `publication_date`
      }
      if (!is.null(`submission_date`)) {
        if (!(is.character(`submission_date`) && length(`submission_date`) == 1)) {
          stop(paste("Error! Invalid data for `submission_date`. Must be a string:", `submission_date`))
        }
        self$`submission_date` <- `submission_date`
      }
      if (!is.null(`sample_ids`)) {
        stopifnot(is.vector(`sample_ids`), length(`sample_ids`) != 0)
        sapply(`sample_ids`, function(x) stopifnot(R6::is.R6(x)))
        self$`sample_ids` <- `sample_ids`
      }
      if (!is.null(`description`)) {
        stopifnot(R6::is.R6(`description`))
        self$`description` <- `description`
      }
      if (!is.null(`owner`)) {
        stopifnot(R6::is.R6(`owner`))
        self$`owner` <- `owner`
      }
      if (!is.null(`models`)) {
        stopifnot(is.vector(`models`), length(`models`) != 0)
        sapply(`models`, function(x) stopifnot(is.character(x)))
        self$`models` <- `models`
      }
      if (!is.null(`bioprojects`)) {
        stopifnot(is.vector(`bioprojects`), length(`bioprojects`) != 0)
        sapply(`bioprojects`, function(x) stopifnot(R6::is.R6(x)))
        self$`bioprojects` <- `bioprojects`
      }
      if (!is.null(`package`)) {
        if (!(is.character(`package`) && length(`package`) == 1)) {
          stop(paste("Error! Invalid data for `package`. Must be a string:", `package`))
        }
        self$`package` <- `package`
      }
      if (!is.null(`attributes`)) {
        stopifnot(is.vector(`attributes`), length(`attributes`) != 0)
        sapply(`attributes`, function(x) stopifnot(R6::is.R6(x)))
        self$`attributes` <- `attributes`
      }
      if (!is.null(`status`)) {
        stopifnot(R6::is.R6(`status`))
        self$`status` <- `status`
      }
      if (!is.null(`age`)) {
        if (!(is.character(`age`) && length(`age`) == 1)) {
          stop(paste("Error! Invalid data for `age`. Must be a string:", `age`))
        }
        self$`age` <- `age`
      }
      if (!is.null(`biomaterial_provider`)) {
        if (!(is.character(`biomaterial_provider`) && length(`biomaterial_provider`) == 1)) {
          stop(paste("Error! Invalid data for `biomaterial_provider`. Must be a string:", `biomaterial_provider`))
        }
        self$`biomaterial_provider` <- `biomaterial_provider`
      }
      if (!is.null(`breed`)) {
        if (!(is.character(`breed`) && length(`breed`) == 1)) {
          stop(paste("Error! Invalid data for `breed`. Must be a string:", `breed`))
        }
        self$`breed` <- `breed`
      }
      if (!is.null(`collected_by`)) {
        if (!(is.character(`collected_by`) && length(`collected_by`) == 1)) {
          stop(paste("Error! Invalid data for `collected_by`. Must be a string:", `collected_by`))
        }
        self$`collected_by` <- `collected_by`
      }
      if (!is.null(`collection_date`)) {
        if (!(is.character(`collection_date`) && length(`collection_date`) == 1)) {
          stop(paste("Error! Invalid data for `collection_date`. Must be a string:", `collection_date`))
        }
        self$`collection_date` <- `collection_date`
      }
      if (!is.null(`cultivar`)) {
        if (!(is.character(`cultivar`) && length(`cultivar`) == 1)) {
          stop(paste("Error! Invalid data for `cultivar`. Must be a string:", `cultivar`))
        }
        self$`cultivar` <- `cultivar`
      }
      if (!is.null(`dev_stage`)) {
        if (!(is.character(`dev_stage`) && length(`dev_stage`) == 1)) {
          stop(paste("Error! Invalid data for `dev_stage`. Must be a string:", `dev_stage`))
        }
        self$`dev_stage` <- `dev_stage`
      }
      if (!is.null(`ecotype`)) {
        if (!(is.character(`ecotype`) && length(`ecotype`) == 1)) {
          stop(paste("Error! Invalid data for `ecotype`. Must be a string:", `ecotype`))
        }
        self$`ecotype` <- `ecotype`
      }
      if (!is.null(`geo_loc_name`)) {
        if (!(is.character(`geo_loc_name`) && length(`geo_loc_name`) == 1)) {
          stop(paste("Error! Invalid data for `geo_loc_name`. Must be a string:", `geo_loc_name`))
        }
        self$`geo_loc_name` <- `geo_loc_name`
      }
      if (!is.null(`host`)) {
        if (!(is.character(`host`) && length(`host`) == 1)) {
          stop(paste("Error! Invalid data for `host`. Must be a string:", `host`))
        }
        self$`host` <- `host`
      }
      if (!is.null(`host_disease`)) {
        if (!(is.character(`host_disease`) && length(`host_disease`) == 1)) {
          stop(paste("Error! Invalid data for `host_disease`. Must be a string:", `host_disease`))
        }
        self$`host_disease` <- `host_disease`
      }
      if (!is.null(`identified_by`)) {
        if (!(is.character(`identified_by`) && length(`identified_by`) == 1)) {
          stop(paste("Error! Invalid data for `identified_by`. Must be a string:", `identified_by`))
        }
        self$`identified_by` <- `identified_by`
      }
      if (!is.null(`ifsac_category`)) {
        if (!(is.character(`ifsac_category`) && length(`ifsac_category`) == 1)) {
          stop(paste("Error! Invalid data for `ifsac_category`. Must be a string:", `ifsac_category`))
        }
        self$`ifsac_category` <- `ifsac_category`
      }
      if (!is.null(`isolate`)) {
        if (!(is.character(`isolate`) && length(`isolate`) == 1)) {
          stop(paste("Error! Invalid data for `isolate`. Must be a string:", `isolate`))
        }
        self$`isolate` <- `isolate`
      }
      if (!is.null(`isolate_name_alias`)) {
        if (!(is.character(`isolate_name_alias`) && length(`isolate_name_alias`) == 1)) {
          stop(paste("Error! Invalid data for `isolate_name_alias`. Must be a string:", `isolate_name_alias`))
        }
        self$`isolate_name_alias` <- `isolate_name_alias`
      }
      if (!is.null(`isolation_source`)) {
        if (!(is.character(`isolation_source`) && length(`isolation_source`) == 1)) {
          stop(paste("Error! Invalid data for `isolation_source`. Must be a string:", `isolation_source`))
        }
        self$`isolation_source` <- `isolation_source`
      }
      if (!is.null(`lat_lon`)) {
        if (!(is.character(`lat_lon`) && length(`lat_lon`) == 1)) {
          stop(paste("Error! Invalid data for `lat_lon`. Must be a string:", `lat_lon`))
        }
        self$`lat_lon` <- `lat_lon`
      }
      if (!is.null(`project_name`)) {
        if (!(is.character(`project_name`) && length(`project_name`) == 1)) {
          stop(paste("Error! Invalid data for `project_name`. Must be a string:", `project_name`))
        }
        self$`project_name` <- `project_name`
      }
      if (!is.null(`sample_name`)) {
        if (!(is.character(`sample_name`) && length(`sample_name`) == 1)) {
          stop(paste("Error! Invalid data for `sample_name`. Must be a string:", `sample_name`))
        }
        self$`sample_name` <- `sample_name`
      }
      if (!is.null(`serovar`)) {
        if (!(is.character(`serovar`) && length(`serovar`) == 1)) {
          stop(paste("Error! Invalid data for `serovar`. Must be a string:", `serovar`))
        }
        self$`serovar` <- `serovar`
      }
      if (!is.null(`sex`)) {
        if (!(is.character(`sex`) && length(`sex`) == 1)) {
          stop(paste("Error! Invalid data for `sex`. Must be a string:", `sex`))
        }
        self$`sex` <- `sex`
      }
      if (!is.null(`source_type`)) {
        if (!(is.character(`source_type`) && length(`source_type`) == 1)) {
          stop(paste("Error! Invalid data for `source_type`. Must be a string:", `source_type`))
        }
        self$`source_type` <- `source_type`
      }
      if (!is.null(`strain`)) {
        if (!(is.character(`strain`) && length(`strain`) == 1)) {
          stop(paste("Error! Invalid data for `strain`. Must be a string:", `strain`))
        }
        self$`strain` <- `strain`
      }
      if (!is.null(`sub_species`)) {
        if (!(is.character(`sub_species`) && length(`sub_species`) == 1)) {
          stop(paste("Error! Invalid data for `sub_species`. Must be a string:", `sub_species`))
        }
        self$`sub_species` <- `sub_species`
      }
      if (!is.null(`tissue`)) {
        if (!(is.character(`tissue`) && length(`tissue`) == 1)) {
          stop(paste("Error! Invalid data for `tissue`. Must be a string:", `tissue`))
        }
        self$`tissue` <- `tissue`
      }
      if (!is.null(`serotype`)) {
        if (!(is.character(`serotype`) && length(`serotype`) == 1)) {
          stop(paste("Error! Invalid data for `serotype`. Must be a string:", `serotype`))
        }
        self$`serotype` <- `serotype`
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
    #' @return V2reportsBioSampleDescriptor as a base R list.
    #' @examples
    #' # convert array of V2reportsBioSampleDescriptor (x) to a data frame
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
    #' Convert V2reportsBioSampleDescriptor to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      V2reportsBioSampleDescriptorObject <- list()
      if (!is.null(self$`accession`)) {
        V2reportsBioSampleDescriptorObject[["accession"]] <-
          self$`accession`
      }
      if (!is.null(self$`last_updated`)) {
        V2reportsBioSampleDescriptorObject[["last_updated"]] <-
          self$`last_updated`
      }
      if (!is.null(self$`publication_date`)) {
        V2reportsBioSampleDescriptorObject[["publication_date"]] <-
          self$`publication_date`
      }
      if (!is.null(self$`submission_date`)) {
        V2reportsBioSampleDescriptorObject[["submission_date"]] <-
          self$`submission_date`
      }
      if (!is.null(self$`sample_ids`)) {
        V2reportsBioSampleDescriptorObject[["sample_ids"]] <-
          lapply(self$`sample_ids`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`description`)) {
        V2reportsBioSampleDescriptorObject[["description"]] <-
          self$`description`$toSimpleType()
      }
      if (!is.null(self$`owner`)) {
        V2reportsBioSampleDescriptorObject[["owner"]] <-
          self$`owner`$toSimpleType()
      }
      if (!is.null(self$`models`)) {
        V2reportsBioSampleDescriptorObject[["models"]] <-
          self$`models`
      }
      if (!is.null(self$`bioprojects`)) {
        V2reportsBioSampleDescriptorObject[["bioprojects"]] <-
          lapply(self$`bioprojects`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`package`)) {
        V2reportsBioSampleDescriptorObject[["package"]] <-
          self$`package`
      }
      if (!is.null(self$`attributes`)) {
        V2reportsBioSampleDescriptorObject[["attributes"]] <-
          lapply(self$`attributes`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`status`)) {
        V2reportsBioSampleDescriptorObject[["status"]] <-
          self$`status`$toSimpleType()
      }
      if (!is.null(self$`age`)) {
        V2reportsBioSampleDescriptorObject[["age"]] <-
          self$`age`
      }
      if (!is.null(self$`biomaterial_provider`)) {
        V2reportsBioSampleDescriptorObject[["biomaterial_provider"]] <-
          self$`biomaterial_provider`
      }
      if (!is.null(self$`breed`)) {
        V2reportsBioSampleDescriptorObject[["breed"]] <-
          self$`breed`
      }
      if (!is.null(self$`collected_by`)) {
        V2reportsBioSampleDescriptorObject[["collected_by"]] <-
          self$`collected_by`
      }
      if (!is.null(self$`collection_date`)) {
        V2reportsBioSampleDescriptorObject[["collection_date"]] <-
          self$`collection_date`
      }
      if (!is.null(self$`cultivar`)) {
        V2reportsBioSampleDescriptorObject[["cultivar"]] <-
          self$`cultivar`
      }
      if (!is.null(self$`dev_stage`)) {
        V2reportsBioSampleDescriptorObject[["dev_stage"]] <-
          self$`dev_stage`
      }
      if (!is.null(self$`ecotype`)) {
        V2reportsBioSampleDescriptorObject[["ecotype"]] <-
          self$`ecotype`
      }
      if (!is.null(self$`geo_loc_name`)) {
        V2reportsBioSampleDescriptorObject[["geo_loc_name"]] <-
          self$`geo_loc_name`
      }
      if (!is.null(self$`host`)) {
        V2reportsBioSampleDescriptorObject[["host"]] <-
          self$`host`
      }
      if (!is.null(self$`host_disease`)) {
        V2reportsBioSampleDescriptorObject[["host_disease"]] <-
          self$`host_disease`
      }
      if (!is.null(self$`identified_by`)) {
        V2reportsBioSampleDescriptorObject[["identified_by"]] <-
          self$`identified_by`
      }
      if (!is.null(self$`ifsac_category`)) {
        V2reportsBioSampleDescriptorObject[["ifsac_category"]] <-
          self$`ifsac_category`
      }
      if (!is.null(self$`isolate`)) {
        V2reportsBioSampleDescriptorObject[["isolate"]] <-
          self$`isolate`
      }
      if (!is.null(self$`isolate_name_alias`)) {
        V2reportsBioSampleDescriptorObject[["isolate_name_alias"]] <-
          self$`isolate_name_alias`
      }
      if (!is.null(self$`isolation_source`)) {
        V2reportsBioSampleDescriptorObject[["isolation_source"]] <-
          self$`isolation_source`
      }
      if (!is.null(self$`lat_lon`)) {
        V2reportsBioSampleDescriptorObject[["lat_lon"]] <-
          self$`lat_lon`
      }
      if (!is.null(self$`project_name`)) {
        V2reportsBioSampleDescriptorObject[["project_name"]] <-
          self$`project_name`
      }
      if (!is.null(self$`sample_name`)) {
        V2reportsBioSampleDescriptorObject[["sample_name"]] <-
          self$`sample_name`
      }
      if (!is.null(self$`serovar`)) {
        V2reportsBioSampleDescriptorObject[["serovar"]] <-
          self$`serovar`
      }
      if (!is.null(self$`sex`)) {
        V2reportsBioSampleDescriptorObject[["sex"]] <-
          self$`sex`
      }
      if (!is.null(self$`source_type`)) {
        V2reportsBioSampleDescriptorObject[["source_type"]] <-
          self$`source_type`
      }
      if (!is.null(self$`strain`)) {
        V2reportsBioSampleDescriptorObject[["strain"]] <-
          self$`strain`
      }
      if (!is.null(self$`sub_species`)) {
        V2reportsBioSampleDescriptorObject[["sub_species"]] <-
          self$`sub_species`
      }
      if (!is.null(self$`tissue`)) {
        V2reportsBioSampleDescriptorObject[["tissue"]] <-
          self$`tissue`
      }
      if (!is.null(self$`serotype`)) {
        V2reportsBioSampleDescriptorObject[["serotype"]] <-
          self$`serotype`
      }
      return(V2reportsBioSampleDescriptorObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleDescriptor
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`accession`)) {
        self$`accession` <- this_object$`accession`
      }
      if (!is.null(this_object$`last_updated`)) {
        self$`last_updated` <- this_object$`last_updated`
      }
      if (!is.null(this_object$`publication_date`)) {
        self$`publication_date` <- this_object$`publication_date`
      }
      if (!is.null(this_object$`submission_date`)) {
        self$`submission_date` <- this_object$`submission_date`
      }
      if (!is.null(this_object$`sample_ids`)) {
        self$`sample_ids` <- ApiClient$new()$deserializeObj(this_object$`sample_ids`, "array[V2reportsBioSampleId]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`description`)) {
        `description_object` <- V2reportsBioSampleDescription$new()
        `description_object`$fromJSON(jsonlite::toJSON(this_object$`description`, auto_unbox = TRUE, digits = NA))
        self$`description` <- `description_object`
      }
      if (!is.null(this_object$`owner`)) {
        `owner_object` <- V2reportsBioSampleOwner$new()
        `owner_object`$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
        self$`owner` <- `owner_object`
      }
      if (!is.null(this_object$`models`)) {
        self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`bioprojects`)) {
        self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[V2reportsBioProject]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`package`)) {
        self$`package` <- this_object$`package`
      }
      if (!is.null(this_object$`attributes`)) {
        self$`attributes` <- ApiClient$new()$deserializeObj(this_object$`attributes`, "array[V2reportsBioSampleAttribute]", loadNamespace("ncbiopenapi"))
      }
      if (!is.null(this_object$`status`)) {
        `status_object` <- V2reportsBioSampleStatus$new()
        `status_object`$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
        self$`status` <- `status_object`
      }
      if (!is.null(this_object$`age`)) {
        self$`age` <- this_object$`age`
      }
      if (!is.null(this_object$`biomaterial_provider`)) {
        self$`biomaterial_provider` <- this_object$`biomaterial_provider`
      }
      if (!is.null(this_object$`breed`)) {
        self$`breed` <- this_object$`breed`
      }
      if (!is.null(this_object$`collected_by`)) {
        self$`collected_by` <- this_object$`collected_by`
      }
      if (!is.null(this_object$`collection_date`)) {
        self$`collection_date` <- this_object$`collection_date`
      }
      if (!is.null(this_object$`cultivar`)) {
        self$`cultivar` <- this_object$`cultivar`
      }
      if (!is.null(this_object$`dev_stage`)) {
        self$`dev_stage` <- this_object$`dev_stage`
      }
      if (!is.null(this_object$`ecotype`)) {
        self$`ecotype` <- this_object$`ecotype`
      }
      if (!is.null(this_object$`geo_loc_name`)) {
        self$`geo_loc_name` <- this_object$`geo_loc_name`
      }
      if (!is.null(this_object$`host`)) {
        self$`host` <- this_object$`host`
      }
      if (!is.null(this_object$`host_disease`)) {
        self$`host_disease` <- this_object$`host_disease`
      }
      if (!is.null(this_object$`identified_by`)) {
        self$`identified_by` <- this_object$`identified_by`
      }
      if (!is.null(this_object$`ifsac_category`)) {
        self$`ifsac_category` <- this_object$`ifsac_category`
      }
      if (!is.null(this_object$`isolate`)) {
        self$`isolate` <- this_object$`isolate`
      }
      if (!is.null(this_object$`isolate_name_alias`)) {
        self$`isolate_name_alias` <- this_object$`isolate_name_alias`
      }
      if (!is.null(this_object$`isolation_source`)) {
        self$`isolation_source` <- this_object$`isolation_source`
      }
      if (!is.null(this_object$`lat_lon`)) {
        self$`lat_lon` <- this_object$`lat_lon`
      }
      if (!is.null(this_object$`project_name`)) {
        self$`project_name` <- this_object$`project_name`
      }
      if (!is.null(this_object$`sample_name`)) {
        self$`sample_name` <- this_object$`sample_name`
      }
      if (!is.null(this_object$`serovar`)) {
        self$`serovar` <- this_object$`serovar`
      }
      if (!is.null(this_object$`sex`)) {
        self$`sex` <- this_object$`sex`
      }
      if (!is.null(this_object$`source_type`)) {
        self$`source_type` <- this_object$`source_type`
      }
      if (!is.null(this_object$`strain`)) {
        self$`strain` <- this_object$`strain`
      }
      if (!is.null(this_object$`sub_species`)) {
        self$`sub_species` <- this_object$`sub_species`
      }
      if (!is.null(this_object$`tissue`)) {
        self$`tissue` <- this_object$`tissue`
      }
      if (!is.null(this_object$`serotype`)) {
        self$`serotype` <- this_object$`serotype`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return V2reportsBioSampleDescriptor in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of V2reportsBioSampleDescriptor
    #'
    #' @param input_json the JSON input
    #' @return the instance of V2reportsBioSampleDescriptor
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`accession` <- this_object$`accession`
      self$`last_updated` <- this_object$`last_updated`
      self$`publication_date` <- this_object$`publication_date`
      self$`submission_date` <- this_object$`submission_date`
      self$`sample_ids` <- ApiClient$new()$deserializeObj(this_object$`sample_ids`, "array[V2reportsBioSampleId]", loadNamespace("ncbiopenapi"))
      self$`description` <- V2reportsBioSampleDescription$new()$fromJSON(jsonlite::toJSON(this_object$`description`, auto_unbox = TRUE, digits = NA))
      self$`owner` <- V2reportsBioSampleOwner$new()$fromJSON(jsonlite::toJSON(this_object$`owner`, auto_unbox = TRUE, digits = NA))
      self$`models` <- ApiClient$new()$deserializeObj(this_object$`models`, "array[character]", loadNamespace("ncbiopenapi"))
      self$`bioprojects` <- ApiClient$new()$deserializeObj(this_object$`bioprojects`, "array[V2reportsBioProject]", loadNamespace("ncbiopenapi"))
      self$`package` <- this_object$`package`
      self$`attributes` <- ApiClient$new()$deserializeObj(this_object$`attributes`, "array[V2reportsBioSampleAttribute]", loadNamespace("ncbiopenapi"))
      self$`status` <- V2reportsBioSampleStatus$new()$fromJSON(jsonlite::toJSON(this_object$`status`, auto_unbox = TRUE, digits = NA))
      self$`age` <- this_object$`age`
      self$`biomaterial_provider` <- this_object$`biomaterial_provider`
      self$`breed` <- this_object$`breed`
      self$`collected_by` <- this_object$`collected_by`
      self$`collection_date` <- this_object$`collection_date`
      self$`cultivar` <- this_object$`cultivar`
      self$`dev_stage` <- this_object$`dev_stage`
      self$`ecotype` <- this_object$`ecotype`
      self$`geo_loc_name` <- this_object$`geo_loc_name`
      self$`host` <- this_object$`host`
      self$`host_disease` <- this_object$`host_disease`
      self$`identified_by` <- this_object$`identified_by`
      self$`ifsac_category` <- this_object$`ifsac_category`
      self$`isolate` <- this_object$`isolate`
      self$`isolate_name_alias` <- this_object$`isolate_name_alias`
      self$`isolation_source` <- this_object$`isolation_source`
      self$`lat_lon` <- this_object$`lat_lon`
      self$`project_name` <- this_object$`project_name`
      self$`sample_name` <- this_object$`sample_name`
      self$`serovar` <- this_object$`serovar`
      self$`sex` <- this_object$`sex`
      self$`source_type` <- this_object$`source_type`
      self$`strain` <- this_object$`strain`
      self$`sub_species` <- this_object$`sub_species`
      self$`tissue` <- this_object$`tissue`
      self$`serotype` <- this_object$`serotype`
      self
    },

    #' @description
    #' Validate JSON input with respect to V2reportsBioSampleDescriptor and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of V2reportsBioSampleDescriptor
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
# V2reportsBioSampleDescriptor$unlock()
#
## Below is an example to define the print function
# V2reportsBioSampleDescriptor$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# V2reportsBioSampleDescriptor$lock()

