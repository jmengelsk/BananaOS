.class public final Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

.field public final mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

.field public msgState:I

.field public final readTriggerIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    new-instance p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    invoke-direct {p1, p0}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;-><init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    new-instance p1, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    return-void
.end method

.method public static convertSessionState(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_22

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0x7
    const-string/jumbo p0, "SESSION_NONE"

    return-object p0

    :pswitch_9  #0x6
    const-string/jumbo p0, "SESSION_STATE_ERROR"

    return-object p0

    :pswitch_d  #0x5
    const-string/jumbo p0, "SESSION_STATE_STOPPED"

    return-object p0

    :pswitch_11  #0x4
    const-string/jumbo p0, "SESSION_STATE_STOPPING"

    return-object p0

    :pswitch_15  #0x3
    const-string/jumbo p0, "SESSION_STATE_STARTED"

    return-object p0

    :pswitch_19  #0x2
    const-string/jumbo p0, "SESSION_STATE_STARTING"

    return-object p0

    :pswitch_1d  #0x1
    const-string/jumbo p0, "SESSION_STATE_READY"

    return-object p0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_d  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final close()V
    .registers 1

    return-void
.end method

.method public final connect()V
    .registers 1

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onConnectionStateChanged()V

    :cond_7
    return-void
.end method

.method public final disable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final disconnect()V
    .registers 1

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public final enable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final isEnabledInternally()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final openNode()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->wirelesscharger_open()I

    move-result v0

    const-string/jumbo v1, "SAccessoryManager_WirelessChargerConnectivity"

    const-string/jumbo v2, "register receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->readTriggerIntentFilter:Landroid/content/IntentFilter;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "open batt_misc ret = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v0, :cond_34

    const-string/jumbo p0, "open fail"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_34
    const/4 p0, 0x1

    return p0
.end method

.method public final sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendStopAuth()Z
    .registers 3

    const-string/jumbo v0, "SAccessoryManager_WirelessChargerConnectivity"

    const-string/jumbo v1, "close batt_misc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    const-string/jumbo v1, "unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mReadTriggerReceiver:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final sendStopUsbAuth()V
    .registers 1

    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0xf

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data write msgState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    const-string/jumbo v4, "SAccessoryManager_WirelessChargerConnectivity"

    invoke-static {v2, v3, v4}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite_batt([B)I

    move-result v3

    new-array v5, v1, [B

    const/4 v6, -0x2

    aput-byte v6, v5, v0

    new-array v6, v1, [B

    const/4 v7, -0x1

    aput-byte v7, v6, v0

    array-length p1, p1

    if-eq v3, p1, :cond_31

    const-string/jumbo p0, "command write fail"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSessionState: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    invoke-static {v6}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    const-wide/16 v6, 0x64

    :try_start_4b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4e

    :catch_4e
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    const/4 v8, 0x3

    if-eq p1, v1, :cond_57

    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    if-eq p1, v8, :cond_49

    :cond_57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    invoke-static {v9}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    const/4 v9, 0x5

    if-ne p1, v9, :cond_72

    goto :goto_a8

    :cond_72
    const-wide/16 v10, 0x32

    :try_start_74
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_77

    :catch_77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "bit clear, msgState: "

    invoke-direct {p1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    invoke-static {p1, v10, v4}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_84
    :try_start_84
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_87

    :catch_87
    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    if-ne p1, v1, :cond_8f

    iget p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    if-eq p1, v8, :cond_84

    :cond_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    invoke-static {v3}, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->convertSessionState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mSessionState:I

    if-ne p0, v9, :cond_a9

    :goto_a8
    return-object v5

    :cond_a9
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead_batt()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "api: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", receive: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_e0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    :goto_c7
    array-length v3, p0

    if-ge v2, v3, :cond_db

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02x"

    invoke-static {v5, v3, p2, v2, v1}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v2

    goto :goto_c7

    :cond_db
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_e3

    :cond_e0
    const-string/jumbo p2, "null"

    :goto_e3
    invoke-static {p1, p2, v4}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    array-length p1, p0

    add-int/lit8 p2, p1, 0x1

    new-array p2, p2, [B

    move v2, v0

    :goto_ec
    array-length v3, p0

    if-ge v2, v3, :cond_f5

    aget-byte v3, p0, v2

    aput-byte v3, p2, v2

    add-int/2addr v2, v1

    goto :goto_ec

    :cond_f5
    aput-byte v0, p2, p1

    return-object p2
.end method

.method public final setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    return-void
.end method
