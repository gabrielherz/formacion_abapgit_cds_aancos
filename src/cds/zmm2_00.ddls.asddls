@AbapCatalog.sqlViewName: 'ZV_MM2_00'
define view ZMM2_00 as select from ekpo
{
    key ebeln as Ebeln,
    key ebelp as Ebelp,
    uniqueid as Uniqueid,
    loekz as Loekz,
    statu as Statu,
    aedat as Aedat,
    txz01 as Txz01,
    matnr as Matnr,
    ematn as Ematn,
    bukrs as Bukrs,
    werks as Werks,
    lgort as Lgort
}
