# VirusApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Sars2ProteinDownload**](VirusApi.md#Sars2ProteinDownload) | **GET** /virus/taxon/sars2/protein/{proteins}/download | Download SARS-CoV-2 protein and CDS datasets by protein name
[**Sars2ProteinDownloadPost**](VirusApi.md#Sars2ProteinDownloadPost) | **POST** /virus/taxon/sars2/protein/download | Download SARS-CoV-2 protein and CDS datasets by protein name by POST request
[**Sars2ProteinSummary**](VirusApi.md#Sars2ProteinSummary) | **GET** /virus/taxon/sars2/protein/{proteins} | Summary of SARS-CoV-2 protein and CDS datasets by protein name
[**Sars2ProteinSummaryByPost**](VirusApi.md#Sars2ProteinSummaryByPost) | **POST** /virus/taxon/sars2/protein | Summary of SARS-CoV-2 protein and CDS datasets by protein name
[**Sars2ProteinTable**](VirusApi.md#Sars2ProteinTable) | **GET** /virus/taxon/sars2/protein/{proteins}/table | Get SARS-CoV-2 protein metadata in a tabular format.
[**VirusAccessionAvailability**](VirusApi.md#VirusAccessionAvailability) | **GET** /virus/accession/{accessions}/check | Check available viruses by accession
[**VirusAccessionAvailabilityPost**](VirusApi.md#VirusAccessionAvailabilityPost) | **POST** /virus/check | Check available viruses by accession
[**VirusAnnotationReportsByAcessions**](VirusApi.md#VirusAnnotationReportsByAcessions) | **GET** /virus/accession/{accessions}/annotation_report | Get virus annotation report by accession
[**VirusAnnotationReportsByPost**](VirusApi.md#VirusAnnotationReportsByPost) | **POST** /virus/annotation_report | Get virus annotation report by POST
[**VirusAnnotationReportsByTaxon**](VirusApi.md#VirusAnnotationReportsByTaxon) | **GET** /virus/taxon/{taxon}/annotation_report | Get virus annotation report by taxon
[**VirusGenomeDownload**](VirusApi.md#VirusGenomeDownload) | **GET** /virus/taxon/{taxon}/genome/download | Download a virus genome dataset by taxon
[**VirusGenomeDownloadAccession**](VirusApi.md#VirusGenomeDownloadAccession) | **GET** /virus/accession/{accessions}/genome/download | Download a virus genome dataset by accession
[**VirusGenomeDownloadPost**](VirusApi.md#VirusGenomeDownloadPost) | **POST** /virus/genome/download | Get a virus genome dataset by post
[**VirusGenomeSummary**](VirusApi.md#VirusGenomeSummary) | **GET** /virus/taxon/{taxon}/genome | Get summary data for virus genomes by taxon
[**VirusGenomeSummaryByPost**](VirusApi.md#VirusGenomeSummaryByPost) | **POST** /virus/genome | Get summary data for virus genomes by post
[**VirusGenomeTable**](VirusApi.md#VirusGenomeTable) | **GET** /virus/taxon/{taxon}/genome/table | Get virus genome metadata in a tabular format.
[**VirusReportsByAcessions**](VirusApi.md#VirusReportsByAcessions) | **GET** /virus/accession/{accessions}/dataset_report | Get virus metadata by accession
[**VirusReportsByPost**](VirusApi.md#VirusReportsByPost) | **POST** /virus | Get virus metadata by POST
[**VirusReportsByTaxon**](VirusApi.md#VirusReportsByTaxon) | **GET** /virus/taxon/{taxon}/dataset_report | Get virus metadata by taxon


# **Sars2ProteinDownload**
> data.frame Sars2ProteinDownload(proteins, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, include_sequence = var.include_sequence, aux_report = var.aux_report, filename = "ncbi_dataset.zip")

Download SARS-CoV-2 protein and CDS datasets by protein name

Download SARS-CoV-2 protein datasets

### Example
```R
library(ncbiopenapi)

# Download SARS-CoV-2 protein and CDS datasets by protein name
#
# prepare function argument(s)
var_proteins <- c("inner_example") # array[character] | Which proteins to retrieve in the data package
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | Specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | List additional reports to include with download. Data report is included by default. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Sars2ProteinDownload(var_proteins, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report, filename = var_filenamedata_file = "result.txt")
result <- api_instance$Sars2ProteinDownload(var_proteins, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proteins** | list( **character** )| Which proteins to retrieve in the data package | 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| Specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| List additional reports to include with download. Data report is included by default. | [optional] 
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

# **Sars2ProteinDownloadPost**
> data.frame Sars2ProteinDownloadPost(v2_sars2_protein_dataset_request, filename = "ncbi_dataset.zip")

Download SARS-CoV-2 protein and CDS datasets by protein name by POST request

Download SARS-CoV-2 protein datasets POST request

### Example
```R
library(ncbiopenapi)

# Download SARS-CoV-2 protein and CDS datasets by protein name by POST request
#
# prepare function argument(s)
var_v2_sars2_protein_dataset_request <- v2Sars2ProteinDatasetRequest$new(c("proteins_example"), "refseq_only_example", "annotated_only_example", "released_since_example", "updated_since_example", "host_example", "pangolin_classification_example", "geo_location_example", "usa_state_example", "complete_only_example", c(v2VirusTableField$new()), c(v2ViralSequenceType$new()), c(v2VirusDatasetReportType$new()), v2TableFormat$new()) # V2Sars2ProteinDatasetRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Sars2ProteinDownloadPost(var_v2_sars2_protein_dataset_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$Sars2ProteinDownloadPost(var_v2_sars2_protein_dataset_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_sars2_protein_dataset_request** | [**V2Sars2ProteinDatasetRequest**](V2Sars2ProteinDatasetRequest.md)|  | 
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

# **Sars2ProteinSummary**
> V2DownloadSummary Sars2ProteinSummary(proteins, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, include_sequence = var.include_sequence, aux_report = var.aux_report)

Summary of SARS-CoV-2 protein and CDS datasets by protein name

Download a summary of available SARS-CoV-2 protein datasets

### Example
```R
library(ncbiopenapi)

# Summary of SARS-CoV-2 protein and CDS datasets by protein name
#
# prepare function argument(s)
var_proteins <- c("inner_example") # array[character] | Which proteins to retrieve in the data package
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | Specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | List additional reports to include with download. Data report is included by default. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Sars2ProteinSummary(var_proteins, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_reportdata_file = "result.txt")
result <- api_instance$Sars2ProteinSummary(var_proteins, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proteins** | list( **character** )| Which proteins to retrieve in the data package | 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| Specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| List additional reports to include with download. Data report is included by default. | [optional] 

### Return type

[**V2DownloadSummary**](v2DownloadSummary.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **Sars2ProteinSummaryByPost**
> V2DownloadSummary Sars2ProteinSummaryByPost(v2_sars2_protein_dataset_request)

Summary of SARS-CoV-2 protein and CDS datasets by protein name

Download a summary of available SARS-CoV-2 protein datasets

### Example
```R
library(ncbiopenapi)

# Summary of SARS-CoV-2 protein and CDS datasets by protein name
#
# prepare function argument(s)
var_v2_sars2_protein_dataset_request <- v2Sars2ProteinDatasetRequest$new(c("proteins_example"), "refseq_only_example", "annotated_only_example", "released_since_example", "updated_since_example", "host_example", "pangolin_classification_example", "geo_location_example", "usa_state_example", "complete_only_example", c(v2VirusTableField$new()), c(v2ViralSequenceType$new()), c(v2VirusDatasetReportType$new()), v2TableFormat$new()) # V2Sars2ProteinDatasetRequest | 

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Sars2ProteinSummaryByPost(var_v2_sars2_protein_dataset_requestdata_file = "result.txt")
result <- api_instance$Sars2ProteinSummaryByPost(var_v2_sars2_protein_dataset_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_sars2_protein_dataset_request** | [**V2Sars2ProteinDatasetRequest**](V2Sars2ProteinDatasetRequest.md)|  | 

### Return type

[**V2DownloadSummary**](v2DownloadSummary.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **Sars2ProteinTable**
> V2TabularOutput Sars2ProteinTable(proteins, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, table_fields = var.table_fields, include_sequence = var.include_sequence, aux_report = var.aux_report, format = var.format)

Get SARS-CoV-2 protein metadata in a tabular format.

Get protein metadata in tabular format for SARS-CoV-2 genomes.

### Example
```R
library(ncbiopenapi)

# Get SARS-CoV-2 protein metadata in a tabular format.
#
# prepare function argument(s)
var_proteins <- c("inner_example") # array[character] | Which proteins to retrieve in the data package
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_table_fields <- c(v2VirusTableField$new()) # array[V2VirusTableField] | Specify which fields to include in the tabular report (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | Specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | List additional reports to include with download. Data report is included by default. (Optional)
var_format <- v2TableFormat$new() # V2TableFormat | Choose download format (tsv, csv or jsonl) (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Sars2ProteinTable(var_proteins, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, table_fields = var_table_fields, include_sequence = var_include_sequence, aux_report = var_aux_report, format = var_formatdata_file = "result.txt")
result <- api_instance$Sars2ProteinTable(var_proteins, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, table_fields = var_table_fields, include_sequence = var_include_sequence, aux_report = var_aux_report, format = var_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proteins** | list( **character** )| Which proteins to retrieve in the data package | 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **table_fields** | list( [**V2VirusTableField**](v2VirusTableField.md) )| Specify which fields to include in the tabular report | [optional] 
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| Specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| List additional reports to include with download. Data report is included by default. | [optional] 
 **format** | [**V2TableFormat**](.md)| Choose download format (tsv, csv or jsonl) | [optional] 

### Return type

[**V2TabularOutput**](v2TabularOutput.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusAccessionAvailability**
> V2VirusAvailability VirusAccessionAvailability(accessions)

Check available viruses by accession

Check available viruses

### Example
```R
library(ncbiopenapi)

# Check available viruses by accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | virus accessions

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusAccessionAvailability(var_accessionsdata_file = "result.txt")
result <- api_instance$VirusAccessionAvailability(var_accessions)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| virus accessions | 

### Return type

[**V2VirusAvailability**](v2VirusAvailability.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusAccessionAvailabilityPost**
> V2VirusAvailability VirusAccessionAvailabilityPost(v2_virus_availability_request)

Check available viruses by accession

Check available viruses

### Example
```R
library(ncbiopenapi)

# Check available viruses by accession
#
# prepare function argument(s)
var_v2_virus_availability_request <- v2VirusAvailabilityRequest$new(c("accessions_example")) # V2VirusAvailabilityRequest | 

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusAccessionAvailabilityPost(var_v2_virus_availability_requestdata_file = "result.txt")
result <- api_instance$VirusAccessionAvailabilityPost(var_v2_virus_availability_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_virus_availability_request** | [**V2VirusAvailabilityRequest**](V2VirusAvailabilityRequest.md)|  | 

### Return type

[**V2VirusAvailability**](v2VirusAvailability.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusAnnotationReportsByAcessions**
> V2reportsVirusAnnotationReportPage VirusAnnotationReportsByAcessions(accessions, filter_refseq_only = FALSE, filter_annotated_only = FALSE, filter_released_since = var.filter_released_since, filter_updated_since = var.filter_updated_since, filter_host = var.filter_host, filter_pangolin_classification = var.filter_pangolin_classification, filter_geo_location = var.filter_geo_location, filter_usa_state = var.filter_usa_state, filter_complete_only = FALSE, table_fields = var.table_fields, page_size = 20, page_token = var.page_token)

Get virus annotation report by accession

Get virus annotation report by accesion. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get virus annotation report by accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | genome sequence accessions
var_filter_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_filter_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_filter_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_filter_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_filter_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_filter_pangolin_classification <- "filter_pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_filter_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_filter_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_filter_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_page_size <- 20 # integer | The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetVirusDataReports` call with more than `page_size` results. Use this token, along with the previous `VirusDataReportRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusAnnotationReportsByAcessions(var_accessions, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$VirusAnnotationReportsByAcessions(var_accessions, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| genome sequence accessions | 
 **filter_refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **filter_annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **filter_released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **filter_updated_since** | **character**|  | [optional] 
 **filter_host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **filter_pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **filter_geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **filter_usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **filter_complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **page_size** | **integer**| The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from a &#x60;GetVirusDataReports&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;VirusDataReportRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2reportsVirusAnnotationReportPage**](v2reportsVirusAnnotationReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusAnnotationReportsByPost**
> V2reportsVirusAnnotationReportPage VirusAnnotationReportsByPost(v2_virus_annotation_report_request)

Get virus annotation report by POST

Get virus annotation report. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get virus annotation report by POST
#
# prepare function argument(s)
var_v2_virus_annotation_report_request <- v2VirusAnnotationReportRequest$new(v2VirusAnnotationFilter$new(c("accessions_example"), "taxon_example", c("taxons_example"), "refseq_only_example", "annotated_only_example", "released_since_example", "updated_since_example", "host_example", "pangolin_classification_example", "geo_location_example", "usa_state_example", "complete_only_example"), c("table_fields_example"), "table_format_example", 123, "page_token_example") # V2VirusAnnotationReportRequest | 

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusAnnotationReportsByPost(var_v2_virus_annotation_report_requestdata_file = "result.txt")
result <- api_instance$VirusAnnotationReportsByPost(var_v2_virus_annotation_report_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_virus_annotation_report_request** | [**V2VirusAnnotationReportRequest**](V2VirusAnnotationReportRequest.md)|  | 

### Return type

[**V2reportsVirusAnnotationReportPage**](v2reportsVirusAnnotationReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusAnnotationReportsByTaxon**
> V2reportsVirusAnnotationReportPage VirusAnnotationReportsByTaxon(taxon, filter_refseq_only = FALSE, filter_annotated_only = FALSE, filter_released_since = var.filter_released_since, filter_updated_since = var.filter_updated_since, filter_host = var.filter_host, filter_pangolin_classification = var.filter_pangolin_classification, filter_geo_location = var.filter_geo_location, filter_usa_state = var.filter_usa_state, filter_complete_only = FALSE, table_fields = var.table_fields, page_size = 20, page_token = var.page_token)

Get virus annotation report by taxon

Get virus annotation report by taxon. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get virus annotation report by taxon
#
# prepare function argument(s)
var_taxon <- "1335626" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_filter_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_filter_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_filter_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_filter_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_filter_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_filter_pangolin_classification <- "filter_pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_filter_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_filter_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_filter_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_page_size <- 20 # integer | The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetVirusDataReports` call with more than `page_size` results. Use this token, along with the previous `VirusDataReportRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusAnnotationReportsByTaxon(var_taxon, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$VirusAnnotationReportsByTaxon(var_taxon, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **filter_refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **filter_annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **filter_released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **filter_updated_since** | **character**|  | [optional] 
 **filter_host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **filter_pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **filter_geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **filter_usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **filter_complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **page_size** | **integer**| The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from a &#x60;GetVirusDataReports&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;VirusDataReportRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2reportsVirusAnnotationReportPage**](v2reportsVirusAnnotationReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusGenomeDownload**
> data.frame VirusGenomeDownload(taxon, taxons = var.taxons, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, include_sequence = var.include_sequence, aux_report = var.aux_report, use_psg = var.use_psg, filename = "ncbi_dataset.zip")

Download a virus genome dataset by taxon

Download a virus genome dataset by taxon

### Example
```R
library(ncbiopenapi)

# Download a virus genome dataset by taxon
#
# prepare function argument(s)
var_taxon <- "1335626" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_taxons <- c("inner_example") # array[character] | NCBI Taxonomy IDs or names (common or scientific) at any taxonomic rank (Optional)
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | list additional reports to include with download. Data report is included by default. (Optional)
var_use_psg <- "use_psg_example" # character | Experimental approach to retrieving sequence data. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusGenomeDownload(var_taxon, taxons = var_taxons, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report, use_psg = var_use_psg, filename = var_filenamedata_file = "result.txt")
result <- api_instance$VirusGenomeDownload(var_taxon, taxons = var_taxons, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report, use_psg = var_use_psg, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **taxons** | list( **character** )| NCBI Taxonomy IDs or names (common or scientific) at any taxonomic rank | [optional] 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| list additional reports to include with download. Data report is included by default. | [optional] 
 **use_psg** | **character**| Experimental approach to retrieving sequence data. | [optional] 
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

# **VirusGenomeDownloadAccession**
> data.frame VirusGenomeDownloadAccession(accessions, taxons = var.taxons, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, include_sequence = var.include_sequence, aux_report = var.aux_report, use_psg = var.use_psg, filename = "ncbi_dataset.zip")

Download a virus genome dataset by accession

Download a virus genome dataset by accession

### Example
```R
library(ncbiopenapi)

# Download a virus genome dataset by accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | genome sequence accessions
var_taxons <- c("inner_example") # array[character] | NCBI Taxonomy IDs or names (common or scientific) at any taxonomic rank (Optional)
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | list additional reports to include with download. Data report is included by default. (Optional)
var_use_psg <- "use_psg_example" # character | Experimental approach to retrieving sequence data. (Optional)
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusGenomeDownloadAccession(var_accessions, taxons = var_taxons, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report, use_psg = var_use_psg, filename = var_filenamedata_file = "result.txt")
result <- api_instance$VirusGenomeDownloadAccession(var_accessions, taxons = var_taxons, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report, use_psg = var_use_psg, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| genome sequence accessions | 
 **taxons** | list( **character** )| NCBI Taxonomy IDs or names (common or scientific) at any taxonomic rank | [optional] 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| list additional reports to include with download. Data report is included by default. | [optional] 
 **use_psg** | **character**| Experimental approach to retrieving sequence data. | [optional] 
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

# **VirusGenomeDownloadPost**
> data.frame VirusGenomeDownloadPost(v2_virus_dataset_request, filename = "ncbi_dataset.zip")

Get a virus genome dataset by post

The 'GET' version of download is limited by the size of the GET URL (2KB, which works out to about 140 genomic accessions).  The POST operation is provided to allow users to supply a larger number of accessions in a single request.

### Example
```R
library(ncbiopenapi)

# Get a virus genome dataset by post
#
# prepare function argument(s)
var_v2_virus_dataset_request <- v2VirusDatasetRequest$new(c("accessions_example"), "taxon_example", c("taxons_example"), "refseq_only_example", "annotated_only_example", "released_since_example", "updated_since_example", "host_example", "pangolin_classification_example", "geo_location_example", "usa_state_example", "complete_only_example", c(v2VirusTableField$new()), c(v2ViralSequenceType$new()), c(v2VirusDatasetReportType$new()), v2TableFormat$new(), "use_psg_example") # V2VirusDatasetRequest | 
var_filename <- "ncbi_dataset.zip" # character | Output file name. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusGenomeDownloadPost(var_v2_virus_dataset_request, filename = var_filenamedata_file = "result.txt")
result <- api_instance$VirusGenomeDownloadPost(var_v2_virus_dataset_request, filename = var_filename)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_virus_dataset_request** | [**V2VirusDatasetRequest**](V2VirusDatasetRequest.md)|  | 
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

# **VirusGenomeSummary**
> V2DownloadSummary VirusGenomeSummary(taxon, accessions = var.accessions, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, include_sequence = var.include_sequence, aux_report = var.aux_report)

Get summary data for virus genomes by taxon

Get summary data and download by command line instructions for virus genomes by taxon.

### Example
```R
library(ncbiopenapi)

# Get summary data for virus genomes by taxon
#
# prepare function argument(s)
var_taxon <- "1335626" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_accessions <- c("inner_example") # array[character] | genome sequence accessions (Optional)
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | list additional reports to include with download. Data report is included by default. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusGenomeSummary(var_taxon, accessions = var_accessions, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_reportdata_file = "result.txt")
result <- api_instance$VirusGenomeSummary(var_taxon, accessions = var_accessions, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, include_sequence = var_include_sequence, aux_report = var_aux_report)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **accessions** | list( **character** )| genome sequence accessions | [optional] 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| list additional reports to include with download. Data report is included by default. | [optional] 

### Return type

[**V2DownloadSummary**](v2DownloadSummary.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusGenomeSummaryByPost**
> V2DownloadSummary VirusGenomeSummaryByPost(v2_virus_dataset_request)

Get summary data for virus genomes by post

Get summary data and download by command line instructions for virus genomes by taxon.

### Example
```R
library(ncbiopenapi)

# Get summary data for virus genomes by post
#
# prepare function argument(s)
var_v2_virus_dataset_request <- v2VirusDatasetRequest$new(c("accessions_example"), "taxon_example", c("taxons_example"), "refseq_only_example", "annotated_only_example", "released_since_example", "updated_since_example", "host_example", "pangolin_classification_example", "geo_location_example", "usa_state_example", "complete_only_example", c(v2VirusTableField$new()), c(v2ViralSequenceType$new()), c(v2VirusDatasetReportType$new()), v2TableFormat$new(), "use_psg_example") # V2VirusDatasetRequest | 

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusGenomeSummaryByPost(var_v2_virus_dataset_requestdata_file = "result.txt")
result <- api_instance$VirusGenomeSummaryByPost(var_v2_virus_dataset_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_virus_dataset_request** | [**V2VirusDatasetRequest**](V2VirusDatasetRequest.md)|  | 

### Return type

[**V2DownloadSummary**](v2DownloadSummary.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusGenomeTable**
> V2TabularOutput VirusGenomeTable(taxon, accessions = var.accessions, refseq_only = FALSE, annotated_only = FALSE, released_since = var.released_since, updated_since = var.updated_since, host = var.host, pangolin_classification = var.pangolin_classification, geo_location = var.geo_location, usa_state = var.usa_state, complete_only = FALSE, table_fields = var.table_fields, include_sequence = var.include_sequence, aux_report = var.aux_report, format = var.format)

Get virus genome metadata in a tabular format.

Get virus genome metadata in tabular format for virus genomes by taxon.

### Example
```R
library(ncbiopenapi)

# Get virus genome metadata in a tabular format.
#
# prepare function argument(s)
var_taxon <- "1335626" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_accessions <- c("inner_example") # array[character] | genome sequence accessions (Optional)
var_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_pangolin_classification <- "pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_table_fields <- c(v2VirusTableField$new()) # array[V2VirusTableField] | Specify which fields to include in the tabular report (Optional)
var_include_sequence <- c(v2ViralSequenceType$new()) # array[V2ViralSequenceType] | specify which sequence files to include in the download (Optional)
var_aux_report <- c(v2VirusDatasetReportType$new()) # array[V2VirusDatasetReportType] | list additional reports to include with download. Data report is included by default. (Optional)
var_format <- v2TableFormat$new() # V2TableFormat | Choose download format (tsv, csv or jsonl) (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusGenomeTable(var_taxon, accessions = var_accessions, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, table_fields = var_table_fields, include_sequence = var_include_sequence, aux_report = var_aux_report, format = var_formatdata_file = "result.txt")
result <- api_instance$VirusGenomeTable(var_taxon, accessions = var_accessions, refseq_only = var_refseq_only, annotated_only = var_annotated_only, released_since = var_released_since, updated_since = var_updated_since, host = var_host, pangolin_classification = var_pangolin_classification, geo_location = var_geo_location, usa_state = var_usa_state, complete_only = var_complete_only, table_fields = var_table_fields, include_sequence = var_include_sequence, aux_report = var_aux_report, format = var_format)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **accessions** | list( **character** )| genome sequence accessions | [optional] 
 **refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **updated_since** | **character**|  | [optional] 
 **host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **table_fields** | list( [**V2VirusTableField**](v2VirusTableField.md) )| Specify which fields to include in the tabular report | [optional] 
 **include_sequence** | list( [**V2ViralSequenceType**](v2ViralSequenceType.md) )| specify which sequence files to include in the download | [optional] 
 **aux_report** | list( [**V2VirusDatasetReportType**](v2VirusDatasetReportType.md) )| list additional reports to include with download. Data report is included by default. | [optional] 
 **format** | [**V2TableFormat**](.md)| Choose download format (tsv, csv or jsonl) | [optional] 

### Return type

[**V2TabularOutput**](v2TabularOutput.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusReportsByAcessions**
> V2reportsVirusDataReportPage VirusReportsByAcessions(accessions, filter_refseq_only = FALSE, filter_annotated_only = FALSE, filter_released_since = var.filter_released_since, filter_updated_since = var.filter_updated_since, filter_host = var.filter_host, filter_pangolin_classification = var.filter_pangolin_classification, filter_geo_location = var.filter_geo_location, filter_usa_state = var.filter_usa_state, filter_complete_only = FALSE, returned_content = var.returned_content, table_fields = var.table_fields, page_size = 20, page_token = var.page_token)

Get virus metadata by accession

Get virus metadata by accesion. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get virus metadata by accession
#
# prepare function argument(s)
var_accessions <- c("inner_example") # array[character] | genome sequence accessions
var_filter_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_filter_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_filter_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_filter_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_filter_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_filter_pangolin_classification <- "filter_pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_filter_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_filter_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_filter_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_returned_content <- v2VirusDataReportRequestContentType$new() # V2VirusDataReportRequestContentType | Return either virus genome accessions, or complete virus metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_page_size <- 20 # integer | The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetVirusDataReports` call with more than `page_size` results. Use this token, along with the previous `VirusDataReportRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusReportsByAcessions(var_accessions, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, returned_content = var_returned_content, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$VirusReportsByAcessions(var_accessions, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, returned_content = var_returned_content, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessions** | list( **character** )| genome sequence accessions | 
 **filter_refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **filter_annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **filter_released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **filter_updated_since** | **character**|  | [optional] 
 **filter_host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **filter_pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **filter_geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **filter_usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **filter_complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **returned_content** | [**V2VirusDataReportRequestContentType**](.md)| Return either virus genome accessions, or complete virus metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **page_size** | **integer**| The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from a &#x60;GetVirusDataReports&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;VirusDataReportRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2reportsVirusDataReportPage**](v2reportsVirusDataReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusReportsByPost**
> V2reportsVirusDataReportPage VirusReportsByPost(v2_virus_data_report_request)

Get virus metadata by POST

Get virus metadata. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get virus metadata by POST
#
# prepare function argument(s)
var_v2_virus_data_report_request <- v2VirusDataReportRequest$new(v2VirusDatasetFilter$new(c("accessions_example"), "taxon_example", c("taxons_example"), "refseq_only_example", "annotated_only_example", "released_since_example", "updated_since_example", "host_example", "pangolin_classification_example", "geo_location_example", "usa_state_example", "complete_only_example"), v2VirusDataReportRequestContentType$new(), c("table_fields_example"), "table_format_example", 123, "page_token_example") # V2VirusDataReportRequest | 

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusReportsByPost(var_v2_virus_data_report_requestdata_file = "result.txt")
result <- api_instance$VirusReportsByPost(var_v2_virus_data_report_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2_virus_data_report_request** | [**V2VirusDataReportRequest**](V2VirusDataReportRequest.md)|  | 

### Return type

[**V2reportsVirusDataReportPage**](v2reportsVirusDataReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

# **VirusReportsByTaxon**
> V2reportsVirusDataReportPage VirusReportsByTaxon(taxon, filter_refseq_only = FALSE, filter_annotated_only = FALSE, filter_released_since = var.filter_released_since, filter_updated_since = var.filter_updated_since, filter_host = var.filter_host, filter_pangolin_classification = var.filter_pangolin_classification, filter_geo_location = var.filter_geo_location, filter_usa_state = var.filter_usa_state, filter_complete_only = FALSE, returned_content = var.returned_content, table_fields = var.table_fields, page_size = 20, page_token = var.page_token)

Get virus metadata by taxon

Get virus metadata by taxon. By default, in paged JSON format, but also available as tabular (accept: text/tab-separated-values) or json-lines (accept: application/x-ndjson)

### Example
```R
library(ncbiopenapi)

# Get virus metadata by taxon
#
# prepare function argument(s)
var_taxon <- "1335626" # character | NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank
var_filter_refseq_only <- FALSE # character | If true, limit results to RefSeq genomes. (Optional)
var_filter_annotated_only <- FALSE # character | If true, limit results to annotated genomes. (Optional)
var_filter_released_since <- "2020-08-01T00:00:00Z" # character | If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as '2020-04-01T00:00:00.000Z' (Optional)
var_filter_updated_since <- "2021-07-18T00:00:00Z" # character |  (Optional)
var_filter_host <- "human" # character | If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default (Optional)
var_filter_pangolin_classification <- "filter_pangolin_classification_example" # character | If set, limit results to genomes classified to this lineage by the PangoLearn tool. (Optional)
var_filter_geo_location <- "USA" # character | Assemblies from this location (country or continent) (Optional)
var_filter_usa_state <- "CA" # character | Assemblies from this state (official two letter code only) (Optional)
var_filter_complete_only <- FALSE # character | only include complete genomes. (Optional)
var_returned_content <- v2VirusDataReportRequestContentType$new() # V2VirusDataReportRequestContentType | Return either virus genome accessions, or complete virus metadata (Optional)
var_table_fields <- c("inner_example") # array[character] | Specify which fields to include in the tabular report (Optional)
var_page_size <- 20 # integer | The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, `page_token` can be used to retrieve the remaining results. (Optional)
var_page_token <- "page_token_example" # character | A page token is returned from a `GetVirusDataReports` call with more than `page_size` results. Use this token, along with the previous `VirusDataReportRequest` parameters, to retrieve the next page of results. When `page_token` is empty, all results have been retrieved. (Optional)

api_instance <- VirusApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$VirusReportsByTaxon(var_taxon, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, returned_content = var_returned_content, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_tokendata_file = "result.txt")
result <- api_instance$VirusReportsByTaxon(var_taxon, filter_refseq_only = var_filter_refseq_only, filter_annotated_only = var_filter_annotated_only, filter_released_since = var_filter_released_since, filter_updated_since = var_filter_updated_since, filter_host = var_filter_host, filter_pangolin_classification = var_filter_pangolin_classification, filter_geo_location = var_filter_geo_location, filter_usa_state = var_filter_usa_state, filter_complete_only = var_filter_complete_only, returned_content = var_returned_content, table_fields = var_table_fields, page_size = var_page_size, page_token = var_page_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxon** | **character**| NCBI Taxonomy ID or name (common or scientific) at any taxonomic rank | 
 **filter_refseq_only** | **character**| If true, limit results to RefSeq genomes. | [optional] [default to FALSE]
 **filter_annotated_only** | **character**| If true, limit results to annotated genomes. | [optional] [default to FALSE]
 **filter_released_since** | **character**| If set, limit results to viral genomes that have been released after a specified date (and optionally, time). April 1, 2020 midnight UTC should be formatted as &#39;2020-04-01T00:00:00.000Z&#39; | [optional] 
 **filter_updated_since** | **character**|  | [optional] 
 **filter_host** | **character**| If set, limit results to genomes extracted from this host (Taxonomy ID or name) All hosts by default | [optional] 
 **filter_pangolin_classification** | **character**| If set, limit results to genomes classified to this lineage by the PangoLearn tool. | [optional] 
 **filter_geo_location** | **character**| Assemblies from this location (country or continent) | [optional] 
 **filter_usa_state** | **character**| Assemblies from this state (official two letter code only) | [optional] 
 **filter_complete_only** | **character**| only include complete genomes. | [optional] [default to FALSE]
 **returned_content** | [**V2VirusDataReportRequestContentType**](.md)| Return either virus genome accessions, or complete virus metadata | [optional] 
 **table_fields** | list( **character** )| Specify which fields to include in the tabular report | [optional] 
 **page_size** | **integer**| The maximum number of virus data reports to return. Default is 20 and maximum is 1000. If the number of results exceeds the page size, &#x60;page_token&#x60; can be used to retrieve the remaining results. | [optional] [default to 20]
 **page_token** | **character**| A page token is returned from a &#x60;GetVirusDataReports&#x60; call with more than &#x60;page_size&#x60; results. Use this token, along with the previous &#x60;VirusDataReportRequest&#x60; parameters, to retrieve the next page of results. When &#x60;page_token&#x60; is empty, all results have been retrieved. | [optional] 

### Return type

[**V2reportsVirusDataReportPage**](v2reportsVirusDataReportPage.md)

### Authorization

[ApiKeyAuthHeader](../README.md#ApiKeyAuthHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, application/x-ndjson, text/tab-separated-values

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A successful response |  -  |
| **0** | An unexpected error response. |  -  |

