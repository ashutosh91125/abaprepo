@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data definiton for Header'
define root view entity zchobani_head as select from zchobani_hdr
composition [1..*] of zchobani_attach as _Attachments
{   
    @EndUserText.label: 'ID'
    key zchobani_hdr.id as Id,
    @EndUserText.label: 'SCAC CODE'
  zchobani_hdr.scac_code as Scaccode,
    @EndUserText.label: 'Carrier Name'
  zchobani_hdr.carrier_name as Carriername,  
  @EndUserText.label: 'BOL'       
  zchobani_hdr.bol as Bol,
  @EndUserText.label: 'Sales Order'
  zchobani_hdr.sales_order as Salesorder,
  @EndUserText.label: 'Load Number'
  zchobani_hdr.load_number as Loadnumber,
  @EndUserText.label: 'Invoice Number'      
  zchobani_hdr.invoice_number as Invoicenumber,
  @EndUserText.label: 'Amount'  
  zchobani_hdr.amount as Amount,
  @EndUserText.label: 'Bill Option'          
  zchobani_hdr.bill_option as Billoption,
  @EndUserText.label: 'NSP Invoice'          
  zchobani_hdr.nsp_invoice as Nspinvoice,
  @EndUserText.label: 'Row Status'          
  zchobani_hdr.row_status as Rowstatus,
  @EndUserText.label: 'Status'          
  zchobani_hdr.status as Status,
  @EndUserText.label: 'Error'          
  zchobani_hdr.error as Error,             
  zchobani_hdr.lastchangedat as LastChangedat,
  zchobani_hdr.locallastchangedat as Locallastchangedat, 
    _Attachments // Make association public
}
