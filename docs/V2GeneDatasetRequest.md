# ncbiopenapi::V2GeneDatasetRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gene_ids** | **array[integer]** |  | [optional] 
**include_annotation_type** | [**array[V2Fasta]**](v2Fasta.md) |  | [optional] 
**returned_content** | [**V2GeneDatasetRequestContentType**](v2GeneDatasetRequestContentType.md) |  | [optional] [Enum: ] 
**fasta_filter** | **array[character]** |  | [optional] 
**accession_filter** | **array[character]** |  | [optional] 
**aux_report** | [**array[V2GeneDatasetRequestGeneDatasetReportType]**](v2GeneDatasetRequestGeneDatasetReportType.md) |  | [optional] 
**tabular_reports** | [**array[V2GeneDatasetRequestGeneDatasetReportType]**](v2GeneDatasetRequestGeneDatasetReportType.md) |  | [optional] 
**table_fields** | **array[character]** |  | [optional] 
**table_report_type** | [**V2GeneDatasetRequestGeneDatasetReportType**](v2GeneDatasetRequestGeneDatasetReportType.md) |  | [optional] [Enum: ] 


