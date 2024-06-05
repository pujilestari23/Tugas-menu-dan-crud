unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;
implementation
   Uses Unit4;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add('insert into kategori values(null,"'+ Edit1.text+'")');
DataModule4.ZQuery1.ExecSQL ;

DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add('select * from kategori');
DataModule4.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;


procedure TForm3.Button2Click(Sender: TObject);
begin
with DataModule4.ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('Update Kategori set name="'+Edit1.Text+'" where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('Select * from kategori');
  Open;
end;
ShowMessage('Data Berhasil Diupdate!');
end;
procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule4.ZQuery1.Fields[1].AsString;
a:= DataModule4.ZQuery1.Fields[0].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
with DataModule4.ZQuery1 do
 begin
 SQL.Clear;
 SQL.Add('Delete from Kategori where id= "'+a+'"');
 ExecSQL ;

  SQL.Clear;
  SQL.Add('Select * from kategori');
  Open;
end;
ShowMessage('Data Berhasil DiDelete!');
end;

end.
