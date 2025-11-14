.class public Lcom/android/server/sepunion/dexservice/DexMcfManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final mScanFilterData:[B

.field public static final mScanFilterDataMask:[B


# instance fields
.field public final mBleAdapterCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$2;

.field public final mBleAdvertiserServiceManager:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

.field public mBleAdvertiserServiceTimeout:J

.field public final mBleScanCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$4;

.field public mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

.field public mBleScannerState:Ljava/lang/String;

.field public final mBroadcastReceiver:Lcom/android/server/sepunion/dexservice/DexMcfManager$1;

.field public final mContext:Landroid/content/Context;

.field public mIsRequestingBindMcfAdapter:Z

.field public mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

.field public final mMcfAdapterListener:Lcom/android/server/sepunion/dexservice/DexMcfManager$3;

.field public mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

.field public final mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

.field public mRegisterIntent:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x9

    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mScanFilterData:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mScanFilterDataMask:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x42t
        0x4t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    nop

    :array_1c
    .array-data 1
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BLE_SCANNER_STATE_MCF_ADAPTER_UNBIND"

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceTimeout:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mIsRequestingBindMcfAdapter:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mRegisterIntent:Z

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager$1;-><init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBroadcastReceiver:Lcom/android/server/sepunion/dexservice/DexMcfManager$1;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexMcfManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager$2;-><init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdapterCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$2;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexMcfManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager$3;-><init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapterListener:Lcom/android/server/sepunion/dexservice/DexMcfManager$3;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager$4;-><init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$4;

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;-><init>(Lcom/android/server/sepunion/dexservice/DexMcfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    iput-object p3, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceManager:Lcom/android/server/sepunion/dexservice/DexBleAdvertiserServiceManager;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "DesktopMode:McfManager"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string p1, "DexMcfManager"

    const-string p2, "DexMcfManager() "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->initialize(I)V

    return-void
.end method

.method public static isNearbyScanningOn(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_28

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "nearby_scanning_enabled"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_e} :catch_13

    if-ne p0, v0, :cond_11

    goto :goto_28

    :cond_11
    const/4 p0, 0x0

    return p0

    :catch_13
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SettingNotFoundException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DexMcfManager"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return v0
.end method


# virtual methods
.method public final bleMacAddressListExists()Z
    .registers 3

    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "ble_tv_mac_address_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "bleMacAddressListExists bleMacAddress="

    const-string v1, "DexMcfManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final initialize(I)V
    .registers 8

    const-string/jumbo v0, "MCF initialized reason : "

    const-string v1, "  mac adress list: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->bleMacAddressListExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " registerIntent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mRegisterIntent:Z

    const-string v2, "DexMcfManager"

    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mRegisterIntent:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4e

    const-string/jumbo v0, "registerIntent"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mRegisterIntent:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.nearbyscanning"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.desktopmode.manager.connectivity.action.BLE_ADDRESS_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBroadcastReceiver:Lcom/android/server/sepunion/dexservice/DexMcfManager$1;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->bleMacAddressListExists()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mIsRequestingBindMcfAdapter:Z

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/dexservice/DexMcfManager;->isNearbyScanningOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b3

    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bindMcfAdapter reason="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_b4

    const-string/jumbo v3, "Unknown="

    invoke-static {p1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9e

    :pswitch_8d  #0x3ee
    const-string p1, "BLE_START_SCAN_REASON_NEARBY_SCANNING_CHANGED"

    goto :goto_9e

    :pswitch_90  #0x3ed
    const-string p1, "BLE_START_SCAN_REASON_PACKAGE_STATE_CHANGED"

    goto :goto_9e

    :pswitch_93  #0x3ec
    const-string p1, "BLE_START_SCAN_REASON_BLUETOOTH_STATUS_CHANGED"

    goto :goto_9e

    :pswitch_96  #0x3eb
    const-string p1, "BLE_START_SCAN_REASON_AIRPLANE_MODE_CHANGED"

    goto :goto_9e

    :pswitch_99  #0x3ea
    const-string p1, "BLE_START_SCAN_REASON_DEX_BLE_ADDRESS_CHANGED"

    goto :goto_9e

    :pswitch_9c  #0x3e9
    const-string p1, "BLE_START_SCAN_REASON_BOOT_COMPLETE"

    :goto_9e
    invoke-static {v0, p1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapterListener:Lcom/android/server/sepunion/dexservice/DexMcfManager$3;

    invoke-static {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->bindService(Landroid/content/Context;Lcom/samsung/android/mcf/McfAdapter$McfAdapterListener;)Z

    move-result p1

    if-eqz p1, :cond_b3

    iput-boolean v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mIsRequestingBindMcfAdapter:Z

    :cond_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x3e9
        :pswitch_9c  #000003e9
        :pswitch_99  #000003ea
        :pswitch_96  #000003eb
        :pswitch_93  #000003ec
        :pswitch_90  #000003ed
        :pswitch_8d  #000003ee
    .end packed-switch
.end method

.method public final tryBleAdvertiserServiceUnbind(J)V
    .registers 6

    iget-wide v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceTimeout:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_10

    const-string/jumbo v0, "tryBleAdvertiserServiceUnbind timeout changed "

    const-string v1, "DexMcfManager"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleAdvertiserServiceTimeout:J

    :cond_10
    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1f
    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_31

    const-wide/16 v0, 0x2710

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_31
    iget-object p0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfHandler:Lcom/android/server/sepunion/dexservice/DexMcfManager$McfHandlerTV;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final tryBleScannerStartScan([Ljava/lang/String;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_8c

    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->getBleScanner()Lcom/samsung/android/mcf/ble/BleScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    if-eqz v0, :cond_8c

    new-instance v0, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->setTimeout(I)Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleScanSettings$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanSettings;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "DexMcfManager"

    if-eqz p1, :cond_69

    array-length v5, p1

    :goto_28
    if-ge v1, v5, :cond_69

    aget-object v6, p1, v1

    invoke-static {v6}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tryBleScannerStartScan valid splitBleMac="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-direct {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;-><init>()V

    sget-object v8, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mScanFilterData:[B

    sget-object v9, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mScanFilterDataMask:[B

    const/16 v10, 0x75

    invoke-virtual {v7, v10, v8, v9}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-virtual {v7, v6}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;

    invoke-virtual {v7}, Lcom/samsung/android/mcf/ble/BleScanFilter$Builder;->build()Lcom/samsung/android/mcf/ble/BleScanFilter;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_60
    const-string/jumbo v7, "tryBleScannerStartScan invalid splitBleMac="

    invoke-static {v7, v6, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_69
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_82

    iget-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    iget-object v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$4;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/samsung/android/mcf/ble/BleScanner;->startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    move-result p1

    const-string/jumbo v0, "tryBleScannerStartScan BLE_SCANNER_STATE_START_SCAN_REQUEST "

    invoke-static {v0, v4, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "BLE_SCANNER_STATE_START_SCAN_REQUEST"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    return-void

    :cond_82
    const-string/jumbo p1, "tryBleScannerStartScan BLE_SCANNER_STATE_NO_SCAN_TARGET"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "BLE_SCANNER_STATE_NO_SCAN_TARGET"

    iput-object p1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    :cond_8c
    return-void
.end method

.method public final unbindMcfAdapter()V
    .registers 4

    const-string v0, "DexMcfManager"

    const-string/jumbo v1, "unbindMcfAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanCallback:Lcom/android/server/sepunion/dexservice/DexMcfManager$4;

    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/ble/BleScanner;->stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z

    iput-object v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScanner:Lcom/samsung/android/mcf/ble/BleScanner;

    const-string v0, "BLE_SCANNER_STATE_STOP_SCAN_REQUEST"

    iput-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mBleScannerState:Ljava/lang/String;

    :cond_18
    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/samsung/android/mcf/McfBleAdapter;->close()V

    iput-object v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfBleAdapter:Lcom/samsung/android/mcf/McfBleAdapter;

    :cond_21
    iget-object v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/samsung/android/mcf/McfAdapter;->unbindService()Z

    iput-object v1, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mMcfAdapter:Lcom/samsung/android/mcf/McfAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/dexservice/DexMcfManager;->mIsRequestingBindMcfAdapter:Z

    :cond_2d
    return-void
.end method
