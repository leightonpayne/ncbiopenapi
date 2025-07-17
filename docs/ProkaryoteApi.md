# ProkaryoteApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DownloadProkaryoteGenePackage**](ProkaryoteApi.md#DownloadProkaryoteGenePackage) | **GET** /protein/accession/{accessions}/download | Get a prokaryote gene dataset by RefSeq protein accession
[**DownloadProkaryoteGenePackagePost**](ProkaryoteApi.md#DownloadProkaryoteGenePackagePost) | **POST** /protein/accession/download | Get a prokaryote gene dataset by RefSeq protein accession by POST


# **DownloadProkaryoteGenePackage**
> data.frame DownloadProkaryoteGenePackage(accessions, include_annotation_type = var.include_annotation_type, gene_flank_config_length = var.gene_flank_config_length, taxon = var.taxon, filename = "ncbi_dataset.zip")

Get a prokaryote gene dataset by RefSeq protein accession

Get a prokaryote gene dataset including gene and protein fasta sequence, annotation and metadata by prokaryote protein accession.

### Example
```R
library(ncbiopenapi)

# Get a prokaryote gene dataset by RefSeq protein accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | WP prokaryote protein accession
var_include_annotation_type <- c(v2Fasta$new()) # array[V2Fasta] | Select additional types of annotation to include in the data package.  If unset, no annotation is provided. (Optional)
var_gene_flank_config_length <- 56 # integer |  (Optional)
var_taxon <- "taxon_example" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank When specified, return data from this taxon and its subtree (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- ProkaryoteApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadProkaryoteGenePackage(var_accessions, include_annotation_type = var_include_annotation_type, gene_flank_config_length = var_gene_flank_config_length, taxon = var_taxon, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadProkaryoteGenePackage(var_accessions, include_annotation_type = var_include_annotation_type, gene_flank_config_length = var_gene_flank_config_length, taxon = var_taxon, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| WP prokaryote protein accession | 
 **include_annotation_type** | list( [**V2Fasta**](v2Fasta.md) )| Select additional types of annotation to include in the data package.  If unset, no annotation is provided. | [optional] 
 **gene_flank_config_length** | **integer**|  | [optional] 
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank When specified, return data from this taxon and its subtree | [optional] 
 **filename** | **character**| Output file name. | [optional] [default to &quot;ncbi_dataset.zip&quot;]

### Return type

**data.frame**

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/zip

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **DownloadProkaryoteGenePackagePost**
> data.frame DownloadProkaryoteGenePackagePost(v2_prokaryote_gene_request, filename = "ncbi_dataset.zip")

Get a prokaryote gene dataset by RefSeq protein accession by POST

Get a prokaryote gene dataset including gene and protein fasta sequence, annotation and metadata by prokaryote protein accession by POST.

### Example
```R
library(ncbiopenapi)

# Get a prokaryote gene dataset by RefSeq protein accession by POST
#
# prepare function argument(s)
var_v2_prokaryote_gene_request <- v2ProkaryoteGeneRequest$new(c("accessions_example"), c(v2Fasta$new()), v2ProkaryoteGeneRequestGeneFlankConfig$new(123), "taxon_example") # V2ProkaryoteGeneRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- ProkaryoteApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DownloadProkaryoteGenePackagePost(var_v2_prokaryote_gene_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$DownloadProkaryoteGenePackagePost(var_v2_prokaryote_gene_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_prokaryote_gene_request** | [**V2ProkaryoteGeneRequest**](V2ProkaryoteGeneRequest.md)|  | 
 **filename** | **character**| Output file name. | [optional] [default to &quot;ncbi_dataset.zip&quot;]

### Return type

**data.frame**

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/zip

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

