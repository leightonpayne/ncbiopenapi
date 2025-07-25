#' NCBI Datasets API
#'
#' ### NCBI Datasets is a resource that lets you easily gather data from NCBI. The Datasets version 2 API is still in alpha, and we're updating it often to add new functionality, iron out bugs and enhance usability. For some larger downloads, you may want to download a [dehydrated zip archive](https://www.ncbi.nlm.nih.gov/datasets/docs/v2/how-tos/genomes/large-download/), and retrieve the individual data files at a later time. 
#'
#' The version of the OpenAPI document: v2
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Prokaryote operations
#' @description ProkaryoteApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  DownloadProkaryoteGenePackage  ####################
#'
#' library(ncbiopenapi)
#' var_accessions <- c("inner_example") # array[character] | WP prokaryote protein accession
#' var_include_annotation_type <- c(v2Fasta$new()) # array[V2Fasta] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)
#' var_gene_flank_config_length <- 56 # integer |  (Optional)
#' var_taxon <- "taxon_example" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank When specified, return data from this taxon and its subtree (Optional)
#' var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)
#'
#' #Get a prokaryote gene dataset by RefSeq protein accession
#' api_instance <- ProkaryoteApi$new()
#'
#' # Configure API key authorization: ApiKeyAuthHeader
#' api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$DownloadProkaryoteGenePackage(var_accessions, include_annotation_type = var_include_annotation_type, gene_flank_config_length = var_gene_flank_config_length, taxon = var_taxon, filename = var_filenamedata_file = "result.txt")
#' result <- api_instance$DownloadProkaryoteGenePackage(var_accessions, include_annotation_type = var_include_annotation_type, gene_flank_config_length = var_gene_flank_config_length, taxon = var_taxon, filename = var_filename)
#' dput(result)
#'
#'
#' ####################  DownloadProkaryoteGenePackagePost  ####################
#'
#' library(ncbiopenapi)
#' var_v2_prokaryote_gene_request <- v2ProkaryoteGeneRequest$new(c("accessions_example"), c(v2Fasta$new()), v2ProkaryoteGeneRequestGeneFlankConfig$new(123), "taxon_example") # V2ProkaryoteGeneRequest | 
#' var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)
#'
#' #Get a prokaryote gene dataset by RefSeq protein accession by POST
#' api_instance <- ProkaryoteApi$new()
#'
#' # Configure API key authorization: ApiKeyAuthHeader
#' api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$DownloadProkaryoteGenePackagePost(var_v2_prokaryote_gene_request, filename = var_filenamedata_file = "result.txt")
#' result <- api_instance$DownloadProkaryoteGenePackagePost(var_v2_prokaryote_gene_request, filename = var_filename)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
ProkaryoteApi <- R6::R6Class(
  "ProkaryoteApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new ProkaryoteApi.
    #'
    #' @param api_client An instance of API client.
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },

    #' @description
    #' Get a prokaryote gene dataset by RefSeq protein accession
    #'
    #' @param accessions WP prokaryote protein accession
    #' @param include_annotation_type (optional) Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
    #' @param gene_flank_config_length (optional) No description
    #' @param taxon (optional) NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank When specified, return data from this taxon and its subtree
    #' @param filename (optional) Output file name. (default value: "ncbi_dataset.zip")
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return data.frame
    DownloadProkaryoteGenePackage = function(accessions, include_annotation_type = NULL, gene_flank_config_length = NULL, taxon = NULL, filename = "ncbi_dataset.zip", data_file = NULL, ...) {
      local_var_response <- self$DownloadProkaryoteGenePackageWithHttpInfo(accessions, include_annotation_type, gene_flank_config_length, taxon, filename, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' Get a prokaryote gene dataset by RefSeq protein accession
    #'
    #' @param accessions WP prokaryote protein accession
    #' @param include_annotation_type (optional) Select additional types of annotation to include in the data package.  If unset, no annotation is provided.
    #' @param gene_flank_config_length (optional) No description
    #' @param taxon (optional) NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank When specified, return data from this taxon and its subtree
    #' @param filename (optional) Output file name. (default value: "ncbi_dataset.zip")
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (data.frame) with additional information such as HTTP status code, headers
    DownloadProkaryoteGenePackageWithHttpInfo = function(accessions, include_annotation_type = NULL, gene_flank_config_length = NULL, taxon = NULL, filename = "ncbi_dataset.zip", data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`accessions`)) {
        stop("Missing required parameter `accessions`.")
      }






      # explore
      for (query_item in `include_annotation_type`) {
        query_params[["include_annotation_type"]] <- c(query_params[["include_annotation_type"]], list(`include_annotation_type` = query_item))
      }

      query_params[["gene_flank_config.length"]] <- `gene_flank_config_length`

      query_params[["taxon"]] <- `taxon`

      query_params[["filename"]] <- `filename`

      local_var_url_path <- "/protein/accession/{accessions}/download"
      if (!missing(`accessions`)) {
        local_var_url_path <- gsub("\\{accessions\\}", paste(URLencode(as.character(`accessions`), reserved = TRUE), collapse= ",", sep=""), local_var_url_path)
      }

      # API key authentication
      if ("api-key" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["api-key"]) > 0) {
        header_params["api-key"] <- paste(unlist(self$api_client$api_keys["api-key"]), collapse = "")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("text/plain", "application/zip")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "data.frame"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    },

    #' @description
    #' Get a prokaryote gene dataset by RefSeq protein accession by POST
    #'
    #' @param v2_prokaryote_gene_request 
    #' @param filename (optional) Output file name. (default value: "ncbi_dataset.zip")
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return data.frame
    DownloadProkaryoteGenePackagePost = function(v2_prokaryote_gene_request, filename = "ncbi_dataset.zip", data_file = NULL, ...) {
      local_var_response <- self$DownloadProkaryoteGenePackagePostWithHttpInfo(v2_prokaryote_gene_request, filename, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' Get a prokaryote gene dataset by RefSeq protein accession by POST
    #'
    #' @param v2_prokaryote_gene_request 
    #' @param filename (optional) Output file name. (default value: "ncbi_dataset.zip")
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (data.frame) with additional information such as HTTP status code, headers
    DownloadProkaryoteGenePackagePostWithHttpInfo = function(v2_prokaryote_gene_request, filename = "ncbi_dataset.zip", data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`v2_prokaryote_gene_request`)) {
        stop("Missing required parameter `v2_prokaryote_gene_request`.")
      }



      query_params[["filename"]] <- `filename`

      if (!is.null(`v2_prokaryote_gene_request`)) {
        local_var_body <- `v2_prokaryote_gene_request`$toJSONString()
      } else {
        local_var_body <- NULL
      }

      local_var_url_path <- "/protein/accession/download"
      # API key authentication
      if ("api-key" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["api-key"]) > 0) {
        header_params["api-key"] <- paste(unlist(self$api_client$api_keys["api-key"]), collapse = "")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("text/plain", "application/zip")

      # The Content-Type representation header
      local_var_content_types <- list("application/json")

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "POST",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "data.frame"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    }
  )
)
