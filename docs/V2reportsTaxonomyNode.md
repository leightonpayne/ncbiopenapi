# ncbiopenapi::V2reportsTaxonomyNode


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tax_id** | **integer** |  | [optional] 
**rank** | [**V2reportsRankType**](v2reportsRankType.md) |  | [optional] [Enum: ] 
**current_scientific_name** | [**V2reportsNameAndAuthority**](v2reportsNameAndAuthority.md) |  | [optional] 
**basionym** | [**V2reportsNameAndAuthority**](v2reportsNameAndAuthority.md) |  | [optional] 
**curator_common_name** | **character** |  | [optional] 
**group_name** | **character** |  | [optional] 
**has_type_material** | **character** |  | [optional] 
**classification** | [**V2reportsClassification**](v2reportsClassification.md) |  | [optional] 
**parents** | **array[integer]** |  | [optional] 
**children** | **array[integer]** |  | [optional] 
**counts** | [**array[V2reportsTaxonomyNodeCountByType]**](v2reportsTaxonomyNodeCountByType.md) |  | [optional] 
**genomic_moltype** | **character** |  | [optional] 
**current_scientific_name_is_formal** | **character** |  | [optional] 
**secondary_tax_ids** | **array[integer]** |  | [optional] 


