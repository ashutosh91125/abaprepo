@EndUserText.label: 'Projection view for header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity zchobani_head_p
  provider contract transactional_query
  as projection on zchobani_head{
  
  @UI.facet: [{
      id: 'OrderData',
      purpose: #STANDARD,
      label: 'Order Data',
      type : #IDENTIFICATION_REFERENCE,
      position : 10
      },{
      id: 'Upload',
      purpose: #STANDARD,
      label : 'Upload Attachments',
      type : #LINEITEM_REFERENCE,
      position : 20,
      targetElement : '_Attachments'
      }]
      @UI: {
          selectionField : [{position: 10}],
          lineItem: [{position: 10}],
          identification: [{position: 10}]
      }
    key Id,
    @UI: {
          lineItem: [{position: 20}],
          identification: [{position: 20}]
      }
    Scaccode,
    @UI: {
          lineItem: [{position: 30}],
          identification: [{position: 30}]
      }
    Carriername,
    @UI: {
          lineItem: [{position: 40}],
          identification: [{position: 40}]
      }
    Bol,
    @UI: {
          lineItem: [{position: 50}],
          identification: [{position: 50}]
      }
    Salesorder,
    @UI: {
          lineItem: [{position: 60}],
          identification: [{position: 60}]
      }
    Loadnumber,
    @UI: {
          lineItem: [{position: 70}],
          identification: [{position: 70}]
      }
    Invoicenumber,
    @UI: {
          lineItem: [{position: 80}],
          identification: [{position: 80}]
      }
    Amount,
    @UI: {
          lineItem: [{position: 90}],
          identification: [{position: 90}]
      }
    Billoption,
    @UI: {
          lineItem: [{position: 100}],
          identification: [{position: 100}]
      }
    Nspinvoice,
    @UI: {
          lineItem: [{position: 110}],
          identification: [{position: 110}]
      }
    Rowstatus,
    @UI: {
          lineItem: [{position: 120},
          { type: #FOR_ACTION, dataAction: 'setApproved', label: 'Set Approved' }
          ],
          identification: [{position: 120}, 
          { type: #FOR_ACTION, dataAction: 'setApproved', label: 'Set Approved' }]
      }
    Status,
    @UI: {
          lineItem: [{position: 130}],
          identification: [{position: 130}]
      }
    Error,
    LastChangedat,
    Locallastchangedat,
    /* Associations */
    _Attachments : redirected to composition child zchobani_attach_p
}
