create schema if not exists estacionamiento;

set search_path to estacionamiento;

CREATE TABLE vehiculos (
  ID int8 NOT NULL,
  Placa varchar(20) NOT NULL,
  Propietario varchar(100) NOT NULL,
  TipoVehiculo varchar(50) NOT NULL,
  HoraEntrada date NOT NULL,
  HoraSalida date DEFAULT NULL,
  ValorPagado float DEFAULT NULL,
  Estado varchar(30) NOT NULL
);

/*Documentacion de las columnas*/
COMMENT ON COLUMN vehiculos.ID IS 'Id de registro de vehiculo';
COMMENT ON COLUMN vehiculos.Placa IS 'Placa de registro ingresado';
COMMENT ON COLUMN vehiculos.Propietario IS 'Nombre del propietario';
COMMENT ON COLUMN vehiculos.TipoVehiculo IS 'Tipo de auto registrado';
COMMENT ON COLUMN vehiculos.HoraEntrada IS 'Registro de hora de entrada';
COMMENT ON COLUMN vehiculos.HoraSalida IS 'Registro de hora de salida';
COMMENT ON COLUMN vehiculos.ValorPagado IS 'Pago por uso de estacionamiento';
COMMENT ON COLUMN vehiculos.Estado IS 'Vehiculo dentro o fuera del estacionamiento';