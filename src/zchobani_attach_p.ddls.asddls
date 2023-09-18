@EndUserText.label: 'zchobani attachment projection view'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity zchobani_attach_p as projection on zchobani_attach
{
    @UI.facet: [{
        id: 'StudentData',
        purpose: #STANDARD,
        label: 'Attachment Information',
        type : #IDENTIFICATION_REFERENCE,
        position : 10
        }]
        
      @UI: {
            lineItem: [{position: 10}],
            identification: [{position: 10}]
        }
     key AttachId,
      @UI: {
            lineItem: [{position: 20}],
            identification: [{position: 20}]
        }
     key Id,
      @UI: {
            lineItem: [{position: 30}],
            identification: [{position: 30}]
        }
      Comments,
      @UI: {
            lineItem: [{position: 40}],
            identification: [{position: 40}]
        }
      attachment,
      Mimetype,
      Filename,
      /* Associations */
      _Order: redirected to parent zchobani_head_p
}
