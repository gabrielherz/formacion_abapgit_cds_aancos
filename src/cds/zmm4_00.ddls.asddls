@AbapCatalog.sqlViewName: 'ZV_MM4_00'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ejemplo'
define view ZMM4_00 as select from ZMM_00
association [*] to ZMM2_00 as _posicion
    on $projection.Ebeln = _posicion.Ebeln
{
    key ZMM_00.Ebeln,
    ZMM_00.Bukrs,
    ZMM_00.Bstyp,
    ZMM_00.Bsart,
    ZMM_00.Bsakz,
    ZMM_00.Loekz,
    ZMM_00.Statu,
    ZMM_00.Aedat,
    ZMM_00.Ernam,
    _posicion.Statu as Statu_po,
    _posicion.Aedat as Aedat_po,
    _posicion.Txz01 as Txz01,
    _posicion.Matnr as Matnr,
    _posicion.Ematn as Ematn
    /* Associations */
    //_posicion // Make association public
}
