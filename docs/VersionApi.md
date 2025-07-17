# VersionApi

All URIs are relative to *https://api.ncbi.nlm.nih.gov/datasets/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Version**](VersionApi.md#Version) | **GET** /version | Retrieve service version


# **Version**
> V2VersionReply Version()

Retrieve service version

Retrieve the latest version of the Datasets services.

### Example
```R
library(ncbiopenapi)

# Retrieve service version
#

api_instance <- VersionApi$new()
# Configure API key authorization: ApiKeyAuthHeader
api_instance$api_client$api_keys["api-key"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Version(data_file = "result.txt")
result <- api_instance$Version()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V2VersionReply**](v2VersionReply.md)

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

