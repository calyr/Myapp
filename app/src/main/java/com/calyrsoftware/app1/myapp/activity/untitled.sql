var entidadfinanciera = db.execute('SELECT id,nombre,latitud,longitud, direccion FROM entidad');
while (entidadfinanciera.isValidRow())
{
  var entidadId = entidadfinanciera.fieldByName('id');
  var entidadNombre = entidadfinanciera.fieldByName('nombre');
  var entidadLatitud = entidadfinanciera.fieldByName('latitude');
  var entidadLongitud = entidadfinanciera.fieldByName('longitude');
  Ti.API.info(entidadId + ' ' + entidadNombre + ' ' + entidadLatitud + ' ' + entidadLongitud );
 Ti.API.info('El nombre es'+entidadNombre);
  entidadfinanciera.next();
}
entidadfinanciera.close();