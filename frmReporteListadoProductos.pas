// Written By Ismael Heredia in the year 2016

unit frmReporteListadoProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, Data.DB,
  Data.Win.ADODB, QRCtrls;

type
  TFormReporte = class(TForm)
    Datos: TDataSource;
    Conexion: TADOConnection;
    reporte: TQuickRep;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    Consulta: TADOQuery;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReporte: TFormReporte;

implementation

{$R *.dfm}

end.
