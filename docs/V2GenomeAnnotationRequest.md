# ncbiopenapi::V2GenomeAnnotationRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accession** | **character** |  | [optional] 
**annotation_ids** | **array[character]** |  | [optional] 
**symbols** | **array[character]** |  | [optional] 
**locations** | **array[character]** |  | [optional] 
**gene_types** | **array[character]** |  | [optional] 
**search_text** | **array[character]** |  | [optional] 
**sort** | [**array[V2SortField]**](v2SortField.md) |  | [optional] 
**include_annotation_type** | [**array[V2GenomeAnnotationRequestAnnotationType]**](v2GenomeAnnotationRequestAnnotationType.md) |  | [optional] 
**page_size** | **integer** |  | [optional] 
**table_fields** | **array[character]** |  | [optional] 
**table_format** | [**V2GenomeAnnotationRequestGenomeAnnotationTableFormat**](v2GenomeAnnotationRequestGenomeAnnotationTableFormat.md) |  | [optional] [Enum: ] 
**include_tabular_header** | [**V2IncludeTabularHeader**](v2IncludeTabularHeader.md) |  | [optional] [Enum: ] 
**page_token** | **character** |  | [optional] 


