## NTP

[Windowsは好きですが何か](http://kfujieda.hatenablog.com/)
> 管理者として起動したコマンドプロンプトで以下のように入力すると、IPアドレスが付与されている間はNTPクライアントが動き続ける。
> `sc triggerinfo w32time start/networkon stop/networkoff`
> 
> `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Parameters` のNtpServerに ntp.nict.jp,0x8 と書き込む。すでにntp.nict.jpに設定している皆さんも最後が9なので8に直す。
> `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time\Config` のUpdateIntervalを100 (0x64)にPhaseCorrectRateを7に設定する。

## conda
```
conda init powershell
conda config --set auto_activate_base False
```
