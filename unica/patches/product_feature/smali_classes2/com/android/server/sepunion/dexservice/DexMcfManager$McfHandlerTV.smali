.class public final Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;->this$0:Lcom/android/server/sepunion/dexservice/DexMcfManager;

    const/16 v1, 0xc9

    const/4 v2, 0x1

    const-string v3, "DexMcfManager"

    if-eq v0, v1, :cond_217

    const/16 v1, 0x191

    iget-object v4, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceManager:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    if-eq v0, v1, :cond_1f2

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v7, 0x12d

    if-eq v0, v7, :cond_166

    const/16 v8, 0x12e

    const-string v9, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    const-wide/16 v10, 0x0

    if-eq v0, v8, :cond_15d

    packed-switch v0, :pswitch_data_23a

    packed-switch v0, :pswitch_data_246

    goto/16 :goto_239

    :pswitch_29  #0x2bf
    const-string/jumbo p1, "handleNearbyScanningChanged"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/16 p1, 0x3ee

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->initialize(I)V

    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->unbindMcfAdapter()V

    iput-object v9, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void

    :pswitch_46  #0x2be
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "handleSemBleStateChanged STATE:"

    invoke-static {p1, v0, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    if-eq p1, v0, :cond_61

    const/16 v0, 0xc

    if-ne p1, v0, :cond_239

    :cond_61
    const/16 p1, 0x3ec

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->initialize(I)V

    return-void

    :pswitch_67  #0x2bd
    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_239

    :cond_78
    const/16 p1, 0x3eb

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->initialize(I)V

    return-void

    :pswitch_7e  #0x68
    const/16 p1, 0x3ed

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->initialize(I)V

    return-void

    :pswitch_84  #0x67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->bleMacAddressListExists()Z

    move-result v0

    if-eqz v0, :cond_239

    if-eqz p1, :cond_98

    invoke-virtual {p0, v10, v11}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void

    :cond_98
    iget-boolean p1, v4, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    if-nez p1, :cond_239

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_239

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz p1, :cond_ad

    invoke-interface {p1, v2}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result v2

    goto :goto_bb

    :cond_ad
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_ba

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result p1

    if-eqz p1, :cond_ba

    goto :goto_bb

    :cond_ba
    move v2, v1

    :goto_bb
    if-eqz v2, :cond_239

    invoke-virtual {v4}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->bindService()V

    const-wide/32 v0, 0xafc8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void

    :pswitch_c7  #0x66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_ed

    const-string/jumbo p1, "handleWirelessDexBleMacAddressChanged deleted."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mRegisterIntent:Z

    if-eqz p1, :cond_e6

    const-string/jumbo p1, "unregisterIntent"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mRegisterIntent:Z

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBroadcastReceiver:Lcom/android/server/sepunion/dexservice/DexMcfManager$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_e6
    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->unbindMcfAdapter()V

    invoke-virtual {p0, v10, v11}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void

    :cond_ed
    const-string/jumbo p1, "handleWirelessDexBleMacAddressChanged changed."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez p1, :cond_fd

    const/16 p1, 0x3ea

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->initialize(I)V

    return-void

    :cond_fd
    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz p1, :cond_10c

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$4;

    invoke-interface {p1, v0}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    iput-object v5, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const-string p1, "BLE_SCANNER_STATE_STOP_SCAN_REQUEST"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    :cond_10c
    const-string p1, "BLE_SCANNER_STATE_SCAN_FILTER_CHANGE"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v6, v7, v1, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {v6, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_11d  #0x65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo p1, "handleBleAdvertiserServiceUnbind timeout "

    const-string v2, ", mBleScannerState="

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    const-string p1, "BLE_SCANNER_STATE_SCAN_TIMEOUT"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    :cond_146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceTimeout:J

    invoke-virtual {v4}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->unbindService()V

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_239

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_239

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_15d
    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->unbindMcfAdapter()V

    iput-object v9, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void

    :cond_166
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mcf/McfAdapter;

    const-string/jumbo v4, "MSG_MCF_ADAPTER_SERVICE_CONNECTED retryCount="

    invoke-static {v0, v4, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_17a

    const-string v4, "BLE_SCANNER_STATE_MCF_ADAPTER_BIND"

    iput-object v4, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    :cond_17a
    :try_start_17a
    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz p1, :cond_1e4

    const-string/jumbo p1, "handleMcfAdapterServiceConnected mMcfAdapter"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-nez p1, :cond_19d

    const-string/jumbo p1, "handleMcfAdapterServiceConnected getBleAdapter"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    iget-object v4, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdapterCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$2;

    const/16 v8, 0x23

    invoke-virtual {p1, v8, v4}, Lcom/samsung/android/mcf/McfAdapter;->getBleAdapter(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    goto :goto_19d

    :catch_19b
    move-exception p0

    goto :goto_1eb

    :cond_19d
    :goto_19d
    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz p1, :cond_1dd

    invoke-interface {p1, v2}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1c3

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "ble_tv_mac_address_list"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b9

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1bf

    :cond_1b9
    const-string/jumbo p1, "There is no bleMacAddress"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1bf
    invoke-virtual {p0, v5}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleScannerStartScan([Ljava/lang/String;)V

    return-void

    :cond_1c3
    const/4 p1, 0x3

    if-ge v0, p1, :cond_1d8

    const-string p1, "BLE_SCANNER_STATE_BLE_NETWORK_NOT_READY_YET"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    add-int/2addr v0, v2

    invoke-virtual {v6, v7, v0, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {v6, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1d8
    const-string p1, "BLE_SCANNER_STATE_BLE_NETWORK_NOT_READY"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    return-void

    :cond_1dd
    const-string/jumbo p0, "handleMcfAdapterServiceConnected mMcfBleAdapter null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e4
    const-string/jumbo p0, "handleMcfAdapterServiceConnected mMcfAdapter null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_1ea} :catch_19b

    return-void

    :goto_1eb
    const-string/jumbo p1, "handleMcfAdapterServiceConnected Exception:"

    invoke-static {p0, p1, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_239

    :cond_1f2
    const-string p1, "BLE_SCANNER_STATE_SCAN_RESULT"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "handleMcfAdapterScannerScanResult: mBound"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v4, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    invoke-static {v3, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p1, v4, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->mBound:Z

    if-nez p1, :cond_210

    const-string/jumbo p1, "handleMcfAdapterScannerScanResult bindService"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;->bindService()V

    :cond_210
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->tryBleAdvertiserServiceUnbind(J)V

    return-void

    :cond_217
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz p0, :cond_239

    const/4 v0, 0x2

    if-ne v0, p1, :cond_239

    invoke-interface {p0, v2}, Lcom/samsung/android/mcf/McfBleAdapter;->isNetworkEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_233

    const-string/jumbo p0, "handleMcfServiceStateChanged - BLE NETWORK is enabled"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_233
    const-string/jumbo p0, "handleMcfServiceStateChanged - BLE NETWORK is not enabled. Need to check unbind"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_239
    :goto_239
    return-void

    :pswitch_data_23a
    .packed-switch 0x65
        :pswitch_11d  #00000065
        :pswitch_c7  #00000066
        :pswitch_84  #00000067
        :pswitch_7e  #00000068
    .end packed-switch

    :pswitch_data_246
    .packed-switch 0x2bd
        :pswitch_67  #000002bd
        :pswitch_46  #000002be
        :pswitch_29  #000002bf
    .end packed-switch
.end method
