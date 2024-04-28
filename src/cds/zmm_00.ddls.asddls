@AbapCatalog.sqlViewName: 'ZV_MM_00'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Compras'
define view ZMM_00 as select from ekko
{
  key ebeln as Ebeln,
  bukrs as Bukrs,
  bstyp as Bstyp,
  bsart as Bsart,
  bsakz as Bsakz,
  loekz as Loekz,
  statu as Statu,
  aedat as Aedat,
  ernam as Ernam
}
