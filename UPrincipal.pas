unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, ACBrBase, ACBrECF, ACBrDevice, ACBrMail, INIFiles, DateUtils;

type
  TForm1 = class(TForm)
    PGCGeral: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    CBFabricanteModelo: TComboBox;
    Label2: TLabel;
    CBPorta: TComboBox;
    BtnAtivarImpressora: TBitBtn;
    Label3: TLabel;
    DTPDataInicial: TDateTimePicker;
    Label4: TLabel;
    DTPDataFinal: TDateTimePicker;
    PTitulo: TPanel;
    Timer: TTimer;
    BtnExportarNFG: TBitBtn;
    ACBrECF1: TACBrECF;
    EdtRazaoSocial: TEdit;
    EdtEndereco: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    cmbBaudRate: TComboBox;
    cmbDataBits: TComboBox;
    cmbParity: TComboBox;
    cmbStopBits: TComboBox;
    cmbHandShaking: TComboBox;
    cmbPortaSerial: TComboBox;
    chHardFlow: TCheckBox;
    chSoftFlow: TCheckBox;
    ACBrMail: TACBrMail;
    lbStatusECF: TLabel;
    shpStatusECF: TShape;
    lbRZPendente: TLabel;
    lbDataUltMovto_ECF: TLabel;
    lbDataHora_ECF: TLabel;
    lbCOO: TLabel;
    lbCCF: TLabel;
    lbCRZ: TLabel;
    lbModeloECF: TLabel;
    lbNumSerie: TLabel;
    lbPortaCOM: TLabel;
    BtnSair: TBitBtn;
    Label13: TLabel;
    cbData: TComboBox;
    edtSmtpHost: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtSmtpPort: TEdit;
    cbEmailSSL: TCheckBox;
    Label141: TLabel;
    Label140: TLabel;
    Label138: TLabel;
    edtEmailAssunto: TEdit;
    Label142: TLabel;
    Label143: TLabel;
    mmEmailMsg: TMemo;
    Label14: TLabel;
    Label15: TLabel;
    EdtNomeRemetente: TEdit;
    Label16: TLabel;
    EdtEmailDestinatario: TEdit;
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chSoftFlowClick(Sender: TObject);
    procedure chHardFlowClick(Sender: TObject);
    procedure cmbHandShakingChange(Sender: TObject);
    procedure cmbStopBitsChange(Sender: TObject);
    procedure cmbParityChange(Sender: TObject);
    procedure cmbDataBitsChange(Sender: TObject);
    procedure cmbBaudRateChange(Sender: TObject);
    procedure cmbPortaSerialChange(Sender: TObject);
    procedure BtnAtivarImpressoraClick(Sender: TObject);
    procedure CBFabricanteModeloChange(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBPortaChange(Sender: TObject);
    procedure BtnExportarNFGClick(Sender: TObject);
    procedure cbDataChange(Sender: TObject);
  private
    AnoCorrente: Integer;
    CaminhoSistema: String;
    procedure VerificaFlow;
    Procedure GravarINI ;
    Procedure LerINI ;
    procedure EnviarEmail(Arquivo: String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Device : TACBrDevice ;

implementation

{$R *.dfm}

procedure TForm1.BtnSairClick(Sender: TObject);
begin
  ACBrECF1.Desativar;
  Application.Terminate;
end;

procedure TForm1.BtnAtivarImpressoraClick(Sender: TObject);
begin
  ACBrECF1.Desativar;

  cbPorta.Text:= Device.Porta ;
  ACBrECF1.Device.ParamsString:= Device.ParamsString;

  try
     Self.Enabled := False ;
     ACBrECF1.Porta := cbPorta.Text ;

     if CBFabricanteModelo.ItemIndex = 0 then
        if not ACBrECF1.AcharECF(true,False) then
        begin
           MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
           exit ;
        end ;

     ACBrECF1.Ativar ;

     if (ACBrECF1.Ativo) and (CBFabricanteModelo.ItemIndex > 0) then
     Begin
       shpStatusECF.Brush.Color:= clGreen;
       lbCOO.Caption:= 'COO: ' + ACBrECF1.NumCOO;
       lbCCF.Caption := 'CCF: ' + ACBrECF1.NumCCF;
       lbCRZ.Caption := 'CRZ: ' + ACBrECF1.NumCRZ;
       lbDataHora_ECF.Caption := 'Data/Hora ECF: ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', ACBrECF1.DataHora);
       lbDataUltMovto_ECF.Caption := 'Data do Último Mov.: ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', ACBrECF1.DataMovimento);

       if (ACBrECF1.Estado = estRequerZ) then
         lbRZPendente.Caption := 'Redução Z pendente: SIM'
       else
         lbRZPendente.Caption := 'Redução Z pendente: NÃO';

       lbStatusECF.Caption := 'ECF Online';
       lbModeloECF.Caption := 'Modelo: ' + ACBrECF1.ModeloStr;
       lbNumSerie.Caption := 'Núm. Série: ' + ACBrECF1.NumSerie;
       lbPortaCOM.Caption:= 'Porta: ' + cbPorta.Text;

       GravarINI ;
       PGCGeral.ActivePageIndex := 0;
     End
     else
     begin
       Showmessage('ECF não está ativo. Verifique as configurações.');
       PGCGeral.ActivePageIndex := 1;
       ACBrECF1.Desativar;
     end;
  finally
     Self.Enabled := True ;
     CBFabricanteModelo.ItemIndex := Integer(ACBrECF1.Modelo) ;
     cbPorta.Text       := ACBrECF1.Porta ;
  end ;
end;

procedure TForm1.BtnExportarNFGClick(Sender: TObject);
Var
  arquivoTXT: String;
begin
  arquivoTXT:= CaminhoSistema + 'Saida\';
  if not (DirectoryExists(arquivoTXT)) then
    CreateDir(arquivoTXT);

  if (cbData.ItemIndex = 0) then
    arquivoTXT:= arquivoTXT + FormatDateTime('dd-mm-yyyy', DTPDataInicial.Date) + '_'
      + FormatDateTime('dd-mm-yyyy', DTPDataFinal.Date) + '.txt'
  else
    arquivoTXT:= arquivoTXT + UpperCase(cbData.Text) + '_' + IntToStr(AnoCorrente) + '.txt';

  ACBrECF1.PafMF_MFD_Cotepe1704(DTPDataInicial.Date, DTPDataFinal.Date, arquivoTXT);

  ShowMessage('Arquivo Gerado com Sucesso!!!');

  if (Application.MessageBox('Deseja enviar o arquivo gerado por email?', 'Enviar por E-mail', MB_ICONQUESTION + MB_YESNO) = 7) then
    Exit;

  EnviarEmail(arquivoTXT);
end;

procedure TForm1.CBFabricanteModeloChange(Sender: TObject);
begin
  try
     ACBrECF1.Modelo := TACBrECFModelo( CBFabricanteModelo.ItemIndex ) ;
  except
     CBFabricanteModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;
end;

procedure TForm1.CBPortaChange(Sender: TObject);
begin
  try
    ACBrECF1.Porta := cbPorta.Text ;
  finally
     cbPorta.Text := ACBrECF1.Porta ;
  end ;
end;

procedure TForm1.chHardFlowClick(Sender: TObject);
begin
  Device.HardFlow := chHardFlow.Checked ;
  VerificaFlow ;
end;

procedure TForm1.chSoftFlowClick(Sender: TObject);
begin
  Device.SoftFlow := chSoftFlow.Checked ;
  VerificaFlow ;
end;

procedure TForm1.cmbBaudRateChange(Sender: TObject);
begin
  Device.Baud := StrToInt(cmbBaudRate.Text) ;
end;

procedure TForm1.cmbDataBitsChange(Sender: TObject);
begin
  Device.Data := StrToInt(cmbDataBits.Text) ;
end;

procedure TForm1.cmbHandShakingChange(Sender: TObject);
begin
  Device.HandShake := TACBrHandShake( cmbHandShaking.ItemIndex ) ;
  VerificaFlow ;
end;

procedure TForm1.cmbParityChange(Sender: TObject);
begin
  Device.Parity := TACBrSerialParity( cmbParity.ItemIndex ) ;
end;

procedure TForm1.cmbPortaSerialChange(Sender: TObject);
begin
  Device.Porta := cmbPortaSerial.Text ;
end;

procedure TForm1.cmbStopBitsChange(Sender: TObject);
begin
  Device.Stop := TACBrSerialStop( cmbStopBits.ItemIndex ) ;
end;

procedure TForm1.EnviarEmail(Arquivo: String);
begin
  Try
    With ACBrMail do
    Begin
      Clear;
      Host:= edtSmtpHost.Text;
      Port:= edtSmtpPort.Text;
      Username:= edtSmtpUser.Text;
      Password:= edtSmtpPass.Text;
      SetSSL:= cbEmailSSL.Checked;
      SetTLS:= cbEmailSSL.Checked;
      IsHTML:= False;
      UseThread:=True;
      From:= edtSmtpUser.Text;
      Subject:= edtEmailAssunto.Text;
      Body.Add(Trim(mmEmailMsg.Text));
      FromName:= edtSmtpUser.Text;

      Send(False);

    End;
  Finally
    ACBrMail.Clear;
  End;

end;

procedure TForm1.cbDataChange(Sender: TObject);
begin
  DTPDataInicial.Enabled:=False;
  DTPDataFinal.Enabled:=False;

  case (cbData.ItemIndex) of
    0 : Begin
          DTPDataInicial.Enabled:=True;
          DTPDataFinal.Enabled:=True;
        End;
    Else
    Begin
      DTPDataInicial.Date:= StartOfAMonth(AnoCorrente, cbData.ItemIndex);
      DTPDataFinal.Date:= EndOfAMonth(AnoCorrente, cbData.ItemIndex);
    End;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Device:= nil;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AnoCorrente:= StrToInt(FormatDateTime('yyyy', now));
  CBPorta.Items.Clear;
  CBPorta.Items.Add('Procurar');
  ACBrECF1.Device.AcharPortasSeriais( CBPorta.Items );
  Device := TACBrDevice.Create(self);
  shpStatusECF.Brush.Color:= clRed;
  lbStatusECF.Caption:= 'ECF Offline';
  CaminhoSistema:= ExtractFilePath(Application.ExeName);
  cbDataChange(nil);
  LerINI;
  BtnAtivarImpressoraClick(nil);
end;

procedure TForm1.GravarINI;
Var
  ArqINI : String ;
  INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;

  INI := TIniFile.Create(ArqINI);
  try
     INI.WriteInteger('ECF','Modelo',CBFabricanteModelo.ItemIndex);
     INI.WriteString('ECF','Porta',cbPorta.Text);
     INI.WriteString('ECF','RazaoSocial',EdtRazaoSocial.Text);
     INI.WriteString('ECF','Endereco',EdtEndereco.Text);
     INI.WriteString('ECF','SerialParams',ACBrECF1.Device.ParamsString);
     INI.WriteString('ECF','Operador',ACBrECF1.Operador);

     INI.WriteString('EMAIL','SMTP',edtSmtpHost.Text);
     INI.WriteString('EMAIL','Porta',edtSmtpPort.Text);
     INI.WriteString('EMAIL','Usuario',edtSmtpUser.Text);
     INI.WriteString('EMAIL','Senha',edtSmtpPass.Text);
     INI.WriteBool('EMAIL','ConexaoSegura',cbEmailSSL.Checked);
     INI.WriteString('EMAIL','NomeRemetente',EdtNomeRemetente.Text);
     INI.WriteString('EMAIL','EmailDestinatario',EdtEmailDestinatario.Text);
     INI.WriteString('EMAIL','Assunto',edtEmailAssunto.Text);
     INI.WriteString('EMAIL','Mensagem',mmEmailMsg.Text);

  finally
     INI.Free ;
  end ;

end;

procedure TForm1.LerINI;
Var
  ArqINI : String ;
  INI : TIniFile ;
begin
  ArqINI := ChangeFileExt( Application.ExeName,'.ini' ) ;
  mmEmailMsg.Lines.Clear;

  INI := TIniFile.Create(ArqINI);
  try
     CBFabricanteModelo.ItemIndex := INI.ReadInteger('ECF','Modelo',CBFabricanteModelo.ItemIndex);
     CBFabricanteModeloChange(nil);
     cbPorta.Text := INI.ReadString('ECF','Porta',cbPorta.Text);
     EdtRazaoSocial.Text:= INI.ReadString('ECF','RazaoSocial',EdtRazaoSocial.Text);
     EdtEndereco.Text:= INI.ReadString('ECF','Endereco',EdtEndereco.Text);
     ACBrECF1.Device.ParamsString := INI.ReadString('ECF','SerialParams','');
     Device.ParamsString := INI.ReadString('ECF','SerialParams','');

     edtSmtpHost.Text:= INI.ReadString('EMAIL','SMTP',edtSmtpHost.Text);
     edtSmtpPort.Text:= INI.ReadString('EMAIL','Porta',edtSmtpPort.Text);
     edtSmtpUser.Text:= INI.ReadString('EMAIL','Usuario',edtSmtpUser.Text);
     edtSmtpPass.Text:= INI.ReadString('EMAIL','Senha',edtSmtpPass.Text);
     cbEmailSSL.Checked:= INI.ReadBool('EMAIL','ConexaoSegura',cbEmailSSL.Checked);
     EdtNomeRemetente.Text:= INI.ReadString('EMAIL','NomeRemetente',EdtNomeRemetente.Text);
     EdtEmailDestinatario.Text:= INI.ReadString('EMAIL','EmailDestinatario',EdtEmailDestinatario.Text);
     edtEmailAssunto.Text:= INI.ReadString('EMAIL','Assunto',edtEmailAssunto.Text);
     mmEmailMsg.Lines.Add(Trim(INI.ReadString('EMAIL','Mensagem',mmEmailMsg.Text)));

     cmbBaudRate.ItemIndex    := cmbBaudRate.Items.IndexOf(IntToStr( Device.Baud )) ;
     cmbDataBits.ItemIndex    := cmbDataBits.Items.IndexOf(IntToStr( Device.Data )) ;
     cmbParity.ItemIndex      := Integer( Device.Parity ) ;
     cmbStopBits.ItemIndex    := Integer( Device.Stop ) ;
     chHardFlow.Checked       := Device.HardFlow ;
     chSoftFlow.Checked       := Device.SoftFlow ;
     cmbHandShaking.ItemIndex := Integer( Device.HandShake ) ;
  finally
     INI.Free ;
  end ;

end;

procedure TForm1.TimerTimer(Sender: TObject);
begin
  {if (ImgDownload.Picture = nil) then
    ImgDownload.Picture.LoadFromFile('Teste.jpg')
  else
    ImgDownload.Picture:= nil;  }
end;

procedure TForm1.VerificaFlow;
begin
  cmbHandShaking.ItemIndex := Integer( Device.HandShake ) ;
  chHardFlow.Checked := Device.HardFlow ;
  chSoftFlow.Checked := Device.SoftFlow ;
end;

end.
