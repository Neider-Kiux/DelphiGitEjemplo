unit uFPrimerPrograma;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types,
  REST.Authenticator.OAuth.WebForm.Win, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  Data.Bind.Components, REST.Client, REST.Authenticator.OAuth,
  Data.Bind.ObjectScope, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors;

type
  TForm1 = class(TForm)
    LB_Saludar: TLabel;
    Button1: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    OAuth2Authenticator1: TOAuth2Authenticator;
    Memo1: TMemo;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  LB_Saludar.Caption	 := 'Hola Mundo';
end;

end.
