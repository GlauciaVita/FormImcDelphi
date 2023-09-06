unit uDados;

interface

uses
  System.SysUtils;

  Type
    RDados_Pessoa = record
      Altura: Double;
      Peso: Double;
      Genero: String;
      IMC: String;
    end;

   function CalcularIMC(p_Peso, p_Altura: Double; p_Genero: String): String;

  var
    P_Dados_Pessoa :RDados_Pessoa;


implementation

function CalcularIMC(p_Peso, p_Altura: Double; p_Genero: String): String;

var
  l_IMC: Double;
  l_StrIMC: String;
begin
    if p_Genero = '' then
      raise Exception.Create('Obrigat�rio informar o genero');

  try

    l_IMC := P_Peso/(P_Altura*p_Altura);
    if p_Genero = 'F' then
      begin
        if (l_IMC < 19.1) then
          l_StrIMC := 'vai comer farofa pra engrossar as pernas menina!'
        else
          if (l_IMC > 19.1) and (l_IMC < 25.7) then
            l_StrIMC := 'ta bonita!'
          else
            if (l_IMC > 25.8) and (l_IMC < 27.2) then
              l_StrIMC := 'ja ta com bra�o de merendeira!'
            else
              if (l_IMC > 27.3) and (l_IMC < 32.2) then
                l_StrIMC := 'ta uma porpeta!'
               else
                if (l_IMC > 32.3) then
                  l_StrIMC := 'Melhor passar por cima do que dar a volta!';
      end
    else
      begin
        if p_Genero = 'M' then
        begin
          if (l_IMC < 20.7) then
             l_StrIMC := 'Parece que ta doente!'
          else
            if (l_IMC >= 20.7) and (l_IMC <= 26.4) then
               l_StrIMC := '�... ta bom!'
            else
              if (l_IMC > 26.4) and (l_IMC <= 27.8) then
                 l_StrIMC := 'Ja ta ficando com cara de bolacha!'
              else
                if (l_IMC > 27.8) and (l_IMC <= 31.1) then
                   l_StrIMC := 'Ta comendo muito paozinho depois da Daily!'
                else
                  if (l_IMC > 31.1) then
                     l_StrIMC := 'Melhor passar por cima do que dar a volta!';
        end;
      end;
        Result := l_StrIMC;
  except
        raise Exception.Create('Erro ao efetuar c�lculo do IMC.');
  end;
end;

end.


