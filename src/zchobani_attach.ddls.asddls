@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definiton for Attachments'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity zchobani_attach as select from zchobani_att
association to parent zchobani_head as _Order
    on $projection.Id = _Order.Id
{
  key zchobani_att.attach_id as AttachId,
  key zchobani_att.id as Id, 
  @EndUserText.label: 'Comments'           
  zchobani_att.comments as Comments,
  
  @EndUserText.label: 'Attachments'
  @Semantics.largeObject:{
    mimeType: 'Mimetype',
    fileName : 'Filename',
    contentDispositionPreference: #INLINE
  }        
  zchobani_att.attachment as attachment,
  @EndUserText.label: 'File Type' 
  zchobani_att.mimetype as Mimetype,
  @EndUserText.label: 'File Name'
  zchobani_att.filename as Filename,
  _Order.LastChangedat as LastChangedat,
  _Order
}
