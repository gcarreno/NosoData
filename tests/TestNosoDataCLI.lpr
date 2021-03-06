program TestNosoDataCLI;

{$mode objfpc}{$H+}

uses
  Classes
, consoletestrunner
, TestNosoDataBlocks
, TestNosoDataBlock
, TestNosoDataOperations
, TestNosoDataOperation
, TestNosoDataLegacyBlocks
, TestNosoDataLegacyBlock
, TestNosoDataLegacyTransactions
, TestNosoDataLegacyTransaction
, TestNosoDataLegacyWallet
, TestNosoDataLegacyAddresses
, TestNosoDataLegacyAddress
;

type

  { TMyTestRunner }

  TMyTestRunner = class(TTestRunner)
  protected
  // override the protected methods of TTestRunner to customize its behavior
  end;

var
  Application: TMyTestRunner;

begin
  Application := TMyTestRunner.Create(nil);
  Application.Initialize;
  Application.Title := 'FPCUnit Console test runner';
  Application.Run;
  Application.Free;
end.
