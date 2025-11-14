.class public final Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static -$$Nest$mhandleBatteryLevelChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ltz v0, :cond_7b

    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "type : "

    const-string v2, "BluetoothDeviceBatteryManager"

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v5

    if-eq v5, v4, :cond_47

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v4

    if-eq v4, v3, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v2

    if-eq v1, v2, :cond_60

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string/jumbo p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_60
    return-void

    :cond_61
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_6d

    if-eq v0, v3, :cond_6d

    invoke-static {v0, v1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6d
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void

    :cond_7b
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$mhandleDeviceNameChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "address : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / alias : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string/jumbo p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_45
    return-void
.end method

.method public static -$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "level : "

    const-string/jumbo v2, "type : "

    const/4 v3, 0x3

    const-string v4, "BluetoothDeviceBatteryManager"

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result v5

    if-eq v5, v3, :cond_39

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    const/4 v2, 0x0

    const/4 v5, 0x1

    if-ne p2, v3, :cond_4c

    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-ne p2, v5, :cond_44

    move v2, v5

    :cond_44
    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-ne p2, v5, :cond_5a

    move v2, v5

    goto :goto_5a

    :cond_4c
    if-ne p2, v5, :cond_53

    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    goto :goto_5a

    :cond_53
    const/4 v3, 0x2

    if-ne p2, v3, :cond_5a

    invoke-static {v0, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    :cond_5a
    :goto_5a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendBroadcast : "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result p2

    if-gez p2, :cond_8f

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    return-void

    :cond_8f
    if-eqz v2, :cond_e3

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string/jumbo p1, "com.samsung.battery.ACTION_BATTERY_INFO_CHANGED"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    return-void

    :cond_9a
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-eq p2, v3, :cond_a4

    invoke-static {p2, v2, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a4
    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    invoke-static {p2, p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v0

    if-gez v0, :cond_d4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ltz v0, :cond_d4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    :cond_d4
    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result p1

    if-ltz p1, :cond_e3

    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    :cond_e3
    return-void
.end method

.method public static -$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "# Alias("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") / Address("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDeviceBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "# BatteryLevel : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I
    .registers 2

    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x2

    return p0
.end method

.method public static createBatteryInfo(Landroid/bluetooth/BluetoothDevice;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .registers 3

    new-instance v0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-direct {v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    return-object v0
.end method

.method public static decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .registers 3

    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 p0, p0, 0xf

    const/4 v1, 0x1

    if-eq p0, v1, :cond_c

    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    return-object p0

    :cond_c
    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    goto :goto_1e

    :cond_12
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    const-string p0, "BluetoothDeviceBatteryManager"

    const-string v0, "CHARGE_STATE_WIRELESS_CHARGE"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    :cond_1e
    :goto_1e
    return-object p0
.end method

.method public static getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .registers 12

    const-string v0, "BluetoothDeviceBatteryManager"

    const-string/jumbo v1, "ManufacturerType : "

    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetManufacturerData()[B

    move-result-object p0

    new-instance v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;-><init>([B)V

    iget p0, v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mManufacturerType:I

    iget-object v3, v3, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$ManufacturerData;->mDeviceId:[B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deviceId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v4, v3

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_38
    if-ge v7, v4, :cond_55

    aget-byte v8, v3, v7

    and-int/lit16 v9, v8, 0xf0

    shr-int/lit8 v9, v9, 0x4

    const-string v10, "0123456789abcdef"

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v8, v8, 0xf

    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte p0, v3, v6

    if-ne p0, v2, :cond_76

    aget-byte v1, v3, v2

    if-ne v1, v2, :cond_76

    const-string/jumbo p0, "Type R170"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :catch_74
    move-exception p0

    goto :goto_84

    :cond_76
    const/4 v1, 0x3

    if-eq p0, v2, :cond_7d

    if-eq p0, v5, :cond_7d

    if-ne p0, v1, :cond_8a

    :cond_7d
    const-string/jumbo p0, "Type Buds"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_83} :catch_74

    return v1

    :goto_84
    const-string/jumbo v1, "getDeviceType exception: "

    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    return v2
.end method

.method public static parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    const-string p1, "BluetoothDeviceBatteryManager"

    if-eqz p0, :cond_25

    array-length v0, p0

    const/4 v1, 0x3

    if-le v0, v1, :cond_25

    aget-byte p0, p0, v1

    const-string/jumbo v0, "parsedData : "

    invoke-static {p0, v0, p1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_25
    const-string/jumbo p0, "parsedData error"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static setBudsBatteryLevel(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/16 v0, 0x208

    invoke-static {p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# Left Level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x209

    invoke-static {p1, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# Right Level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20a

    invoke-static {p1, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    const-string v3, "# Cradle Level: "

    invoke-static {p1, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_41

    move v2, v1

    move v1, v0

    move v0, v2

    goto :goto_5d

    :cond_41
    if-gez v1, :cond_46

    move v2, v1

    move v1, v0

    goto :goto_5d

    :cond_46
    sub-int v2, v0, v1

    if-lez v2, :cond_4c

    move v3, v1

    goto :goto_4d

    :cond_4c
    move v3, v0

    :goto_4d
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0xf

    if-gt v2, v4, :cond_5a

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    :goto_58
    move v0, v3

    goto :goto_5d

    :cond_5a
    move v2, v1

    move v1, v0

    goto :goto_58

    :goto_5d
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    move-result v3

    if-ne v3, v0, :cond_78

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelLeft()I

    move-result v3

    if-ne v3, v1, :cond_78

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelRight()I

    move-result v3

    if-ne v3, v2, :cond_78

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryLevelCradle()I

    move-result v3

    if-eq v3, p1, :cond_76

    goto :goto_78

    :cond_76
    const/4 p0, 0x0

    return p0

    :cond_78
    :goto_78
    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelLeft(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelRight(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryLevelCradle(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setBudsBatteryStatus(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    const/16 v0, 0x11a

    invoke-static {p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    const-string v1, "# Charge Feature :"

    const-string v2, "BluetoothDeviceBatteryManager"

    invoke-static {v0, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7b

    const/16 v0, 0x228

    invoke-static {p1, v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    if-ltz v0, :cond_33

    invoke-static {v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "# Left Charging: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result v0

    goto :goto_34

    :cond_33
    move v0, v3

    :goto_34
    const/16 v1, 0x229

    invoke-static {p1, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    if-ltz v1, :cond_56

    invoke-static {v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "# Right Charging : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result v1

    goto :goto_57

    :cond_56
    move v1, v3

    :goto_57
    const/16 v4, 0x22a

    invoke-static {p1, v4}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->parseMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    if-ltz p1, :cond_79

    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->decodeChargeState(I)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "# Cradle Charging : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->convertChargeStateToStatus(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;)I

    move-result p1

    goto :goto_7e

    :cond_79
    move p1, v3

    goto :goto_7e

    :cond_7b
    move p1, v3

    move v0, p1

    move v1, v0

    :goto_7e
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    move-result v2

    if-ne v2, v3, :cond_99

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusLeft()I

    move-result v2

    if-ne v2, v0, :cond_99

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusRight()I

    move-result v2

    if-ne v2, v1, :cond_99

    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getExtraBatteryStatusCradle()I

    move-result v2

    if-eq v2, p1, :cond_97

    goto :goto_99

    :cond_97
    const/4 p0, 0x0

    return p0

    :cond_99
    :goto_99
    invoke-virtual {p0, v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusLeft(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusRight(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setExtraBatteryStatusCradle(I)V

    return v3
.end method
