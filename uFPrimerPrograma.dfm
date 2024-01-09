object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Primer Programa'
  ClientHeight = 696
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LB_Saludar: TLabel
    Left = 216
    Top = 48
    Width = 361
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 368
    Top = 128
    Width = 89
    Height = 41
    Caption = 'Saludar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 248
    Top = 224
    Width = 353
    Height = 305
    Lines.Strings = (
      'https://graph.facebook.com/v18.0/209278055598644/messages')
    TabOrder = 1
  end
  object RESTClient1: TRESTClient
    Authenticator = OAuth2Authenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://graph.facebook.com/v18.0/209278055598644/messages'
    ContentType = 'application/json'
    Params = <>
    SynchronizedEvents = False
    Left = 824
    Top = 296
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'bodyEE7B1AA3D449432BB6BFED8F80F8EC54'
        Value = 
          '{   '#13#10'    "messaging_product": "whatsapp", '#13#10'    "recipient_type' +
          '": "individual", '#13#10'    "to": "573142986379", '#13#10'    "type": "text' +
          '", '#13#10'    "text": {'#13#10'        "preview_url": false,'#13#10'        "body' +
          '": "Hello World!"'#13#10'    } '#13#10'}'
        ContentTypeStr = 'application/json'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 832
    Top = 544
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 824
    Top = 456
  end
  object OAuth2Authenticator1: TOAuth2Authenticator
    AccessToken = 
      'EAADwdZA3UFfoBO92J7L1n1lGNyXV0mrgg5LfJH3zYWAKWdVCTYMNpkaX8dt7ZA3' +
      'EyW6fyNZAxILiibuRaWQiionkGGBT3ue4loesXHa6VqSXegTs58F8wuEvF2IkdsJ' +
      'L5REii6wFKeR8zRVb5AQDMIMsPbUsAxAmhnv4LNPUXgZBHAuxboXbGxDgZC010ZA' +
      'jk6elVODGWKRLBWb59JjZArQ9EZAHMOhSAk6fBAwZALckZD'
    Left = 824
    Top = 376
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = RESTClient1
      FieldName = 'BaseURL'
      Control = Memo1
      Track = False
    end
  end
end
