unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinLondonLiquidSky, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function getRegionStr: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  dxCalendarUtils;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption := format('%s',[getRegionStr]);
end;

function TForm1.getRegionStr: string;
var
  cxLocalCalendar : TcxCustomCalendarTable;
  ACalType: CALID;
begin
  cxLocalCalendar := cxGetLocalCalendar;
  try
    ACalType := cxGetLocalCalendar.CalendarID;
  finally
    cxLocalCalendar.Free;
  end;

  case ACalType of
      CAL_GREGORIAN               : result:= 'Gregorian (localized) calendar';
      CAL_GREGORIAN_US            : result:= 'Gregorian (U.S.) calendar';
      CAL_JAPAN                   : result:= 'Japanese Emperor Era calendar';
      CAL_TAIWAN                  : result:= 'Republic of China Era calendar ';
      CAL_KOREA                   : result:= 'Korean Tangun Era calendar';
      CAL_HIJRI                   : result:= 'Hijri (Arabic Lunar) calendar';
      CAL_THAI                    : result:= 'Thai calendar';
      CAL_HEBREW                  : result:= 'Hebrew calendar';
      CAL_GREGORIAN_ME_FRENCH     : result:= 'Gregorian Middle East French calendar';
      CAL_GREGORIAN_ARABIC        : result:= 'Gregorian Arabic calendar';
      CAL_GREGORIAN_XLIT_ENGLISH  : result:= 'Gregorian Transliterated English calendar';
      CAL_GREGORIAN_XLIT_FRENCH   : result:= 'Gregorian Transliterated French calendar';
      CAL_JULIAN                  : result:= 'Julian calendar';
      CAL_JAPANESELUNISOLAR       : result:= 'Japanes Lunar/Solar calendar';
      CAL_CHINESELUNISOLAR        : result:= 'Chinese Lunar/Solar calendar';
      CAL_SAKA                    : result:= 'reserved to match Office but not implemented in our code';
      CAL_LUNAR_ETO_CHN           : result:= 'reserved to match Office but not implemented in our code';
      CAL_LUNAR_ETO_KOR           : result:= 'reserved to match Office but not implemented in our code';
      CAL_LUNAR_ETO_ROKUYOU       : result:= 'reserved to match Office but not implemented in our code';
      CAL_KOREANLUNISOLAR         : result:= 'Korean Lunar/Solar calendar';
      CAL_TAIWANLUNISOLAR         : result:= 'Taiwan Lunar/Solar calendar';
      CAL_PERSIAN                 : result:= 'Persian calendar';
      CAL_UMALQURA                : result:= 'UmAlQura Hijri (Arabic Lunar) calendar }';
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.
