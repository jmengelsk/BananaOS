.class public final Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;


# virtual methods
.method public final byteArrayToString([B)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02x"

    const/4 v3, 0x1

    invoke-static {v2, v1, p0, v0, v3}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "null"

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final connect()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onConnectionStateChanged()V

    :cond_0
    return-void
.end method

.method public final disable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final disconnect()V
    .locals 0

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final enable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isEnabledInternally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final openNode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 7

    const/4 p1, 0x5

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    move-result v4

    const-string/jumbo v5, "open ccic_misc ret = "

    const-string/jumbo v6, "SAccessoryManager_UsbConnectivity"

    invoke-static {v4, v5, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-gez v4, :cond_0

    const-string/jumbo p0, "open fail"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-array v4, p1, [B

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v4

    if-eq v4, p1, :cond_1

    const-string/jumbo p0, "ReqS fail. invalid return value: "

    invoke-static {v4, p0, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "atqs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x10

    new-array p0, p0, [B

    array-length v1, p1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    aput-byte v3, p0, v3

    :goto_0
    if-ge v3, v2, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, p0, v1

    move v3, v1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    const/4 p1, -0x2

    aput-byte p1, p0, v3

    return-object p0

    :array_0
    .array-data 1
        0x0t
        0x5at
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final sendStopAuth()Z
    .locals 2

    const-string/jumbo v0, "SAccessoryManager_UsbConnectivity"

    const-string/jumbo v1, "close ccic_misc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    const/4 p0, 0x1

    return p0
.end method

.method public final sendStopUsbAuth()V
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    move-result v4

    const-string/jumbo v5, "open ccic_misc ret = "

    const-string/jumbo v6, "SAccessoryManager_UsbConnectivity"

    invoke-static {v4, v5, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-gez v4, :cond_0

    const-string/jumbo v3, "open fail for end comd"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-array v4, v0, [B

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v4

    if-eq v4, v0, :cond_1

    const-string v3, "End cmd fail: "

    invoke-static {v4, v3, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "close ccic_misc"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x0t
        -0x22t
        -0x53t
        0x0t
        0x0t
    .end array-data
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0xf

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    move-result v3

    new-array v4, v1, [B

    const/4 v5, -0x2

    aput-byte v5, v4, v0

    new-array v5, v1, [B

    const/4 v6, -0x1

    aput-byte v6, v5, v0

    array-length p1, p1

    const-string/jumbo v6, "SAccessoryManager_UsbConnectivity"

    if-eq v3, p1, :cond_0

    const-string/jumbo p0, "command write fail"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    iget p1, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    const/16 v3, 0xb

    if-ne p1, v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "api: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", receive: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length p0, p1

    add-int/lit8 p2, p0, 0x1

    new-array p2, p2, [B

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-byte v3, p1, v2

    aput-byte v3, p2, v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    aput-byte v0, p2, p0

    return-object p2
.end method

.method public final setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    return-void
.end method
