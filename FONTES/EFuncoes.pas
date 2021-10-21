unit EFuncoes;

interface

Uses System.Classes, System.IOUtils, SysUtils;

  Function Arquivo_Ler(CaminhoDoArquivo : String) : String;
  Procedure Arquivo_Apagar(CaminhoDoArquivo : String);
  Procedure Arquivo_Escrever(CaminhoDoArquivo, conteudo : String);
  Function FormataDataSQL(Data: TDate) : String;
  Function StrZero2(Numero: Integer; Tamanho: Integer) : String;

implementation

  Function Arquivo_Ler(CaminhoDoArquivo : String) : String;
 var BlocoDeNotas : TStringList;
    begin
      BlocoDeNotas := TStringList.Create;
      BlocoDeNotas.LoadFromFile(CaminhoDoArquivo);
      result := BlocoDeNotas.Text;
    End;

  Procedure Arquivo_Escrever(CaminhoDoArquivo, conteudo : String);
 var BlocoDeNotas : TStringList;
    Begin
      BlocoDeNotas := TStringList.Create;
      BlocoDeNotas.Add(conteudo);
      BlocoDeNotas.SaveToFile(CaminhoDoArquivo);
    End;

  Procedure Arquivo_Apagar(CaminhoDoArquivo : String);
  begin
    TFile.Delete(CaminhoDoArquivo);
  end;

  Function FormataDataSQL(Data: TDate) : String;
Var D,M,A: Word;
    Meses: Array[1..12] of String;
  Begin
      Meses[01] := 'Jan';
      Meses[02] := 'Feb';
      Meses[03] := 'Mar';
      Meses[04] := 'Apr';
      Meses[05] := 'May';
      Meses[06] := 'Jun';
      Meses[07] := 'Jul';
      Meses[08] := 'Aug';
      Meses[09] := 'Sep';
      Meses[10] := 'Oct';
      Meses[11] := 'Nov';
      Meses[12] := 'Dec';
      DecodeDate(Data,A,M,D);
      Result := StrZero2(D,2) + '-' + Meses[M] + '-' + StrZero2(A,4);
  End;
 Function StrZero2(Numero: Integer; Tamanho: Integer) : String;
 Var X: Integer;
    cTexto: String;
  Begin
     cTexto := IntToStr(Numero);
     for X := 1 to Tamanho - Length(Trim(cTexto)) do
      cTexto := '0' + cTEXTO;
      Result := cTexto;
   End;



end.
