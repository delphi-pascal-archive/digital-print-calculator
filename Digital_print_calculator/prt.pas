unit prt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit;

type
  Tprice = class(TForm)
    ValueListEditor1: TValueListEditor;
    offset: TValueListEditor;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  price: Tprice;

implementation

{$R *.dfm}

end.
