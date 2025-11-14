.class public final Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;


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
    .registers 2

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string p0, " Current NfcConnectivity state:"

    const-string v0, "  mState = -1"

    const-string v1, "  mPrevState = -1"

    invoke-static {p1, p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .registers 4

    const-string/jumbo v0, "SAccessoryManager_NfcConnectivity"

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo v2, "SamsungNfcAdapter.getDefaultAdapter returns null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo p0, "retry, SamsungNfcAdapter.getDefaultAdapter returns null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception p0

    goto :goto_24

    :cond_23
    return-object v1

    :goto_24
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public final isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final openNode()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 3

    const/4 v0, 0x1

    :try_start_1
    iput v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startCoverAuth()[B

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final sendStopAuth()Z
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopCoverAuth()Z

    move-result p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final sendStopUsbAuth()V
    .registers 1

    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .registers 4

    const/4 v0, 0x2

    :try_start_1
    iput v0, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_24

    if-eqz p0, :cond_28

    :try_start_9
    sget-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast p0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->transceiveAuthData([B)[B

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_24

    return-object p0

    :catch_12
    move-exception p0

    :try_start_13
    const-string/jumbo p1, "SamsungNfcAdapter"

    const-string p2, "Failed to transmit authentication data"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_24

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method
