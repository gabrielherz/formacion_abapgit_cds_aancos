@AbapCatalog.sqlViewName: 'ZV_MM3_00'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ejemplo Compras'
define view ZMM3_00 as select from ekko
left outer join ekpo
    on ekko.ebeln = ekpo.ebeln
{
    key ekko.ebeln as Ebeln,
    key ekpo.ebelp as Ebelp,
    ekko.bukrs as Bukrs,
    ekko.bstyp as Bstyp,
    ekko.bsart as Bsart,
    ekko.bsakz as Bsakz,
    ekko.loekz as Loekz,
    ekko.statu as Statu,
    ekko.aedat as Aedat,
    ekko.ernam as Ernam,
    ekpo.statu as Statu_po,
    ekpo.aedat as Aedat_po,
    ekpo.txz01 as Txz01,
    ekpo.matnr as Matnr,
    ekpo.ematn as Ematn
}
