# ncbiopenapi::V2reportsGeneDescriptor


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**gene_id** | **character** |  | [optional] 
**symbol** | **character** |  | [optional] 
**description** | **character** |  | [optional] 
**tax_id** | **character** |  | [optional] 
**taxname** | **character** |  | [optional] 
**common_name** | **character** |  | [optional] 
**type** | [**V2reportsGeneType**](v2reportsGeneType.md) |  | [optional] [Enum: ] 
**rna_type** | [**V2reportsRnaType**](v2reportsRnaType.md) |  | [optional] [Enum: ] 
**orientation** | [**V2reportsOrientation**](v2reportsOrientation.md) |  | [optional] [Enum: ] 
**reference_standards** | [**array[V2reportsGenomicRegion]**](v2reportsGenomicRegion.md) |  | [optional] 
**genomic_regions** | [**array[V2reportsGenomicRegion]**](v2reportsGenomicRegion.md) |  | [optional] 
**chromosomes** | **array[character]** |  | [optional] 
**nomenclature_authority** | [**V2reportsNomenclatureAuthority**](v2reportsNomenclatureAuthority.md) |  | [optional] 
**swiss_prot_accessions** | **array[character]** |  | [optional] 
**ensembl_gene_ids** | **array[character]** |  | [optional] 
**omim_ids** | **array[character]** |  | [optional] 
**synonyms** | **array[character]** |  | [optional] 
**replaced_gene_id** | **character** |  | [optional] 
**annotations** | [**array[V2reportsAnnotation]**](v2reportsAnnotation.md) |  | [optional] 
**transcript_count** | **integer** |  | [optional] 
**protein_count** | **integer** |  | [optional] 
**transcript_type_counts** | [**array[V2reportsTranscriptTypeCount]**](v2reportsTranscriptTypeCount.md) |  | [optional] 
**gene_groups** | [**array[V2reportsGeneGroup]**](v2reportsGeneGroup.md) |  | [optional] 
**summary** | [**array[V2reportsGeneSummary]**](v2reportsGeneSummary.md) |  | [optional] 
**gene_ontology** | [**V2reportsGeneOntology**](v2reportsGeneOntology.md) |  | [optional] 
**locus_tag** | **character** |  | [optional] 


