.class public final Lcom/samsung/accessory/manager/SAccessoryManager$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticationReady()V
    .registers 10

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SAccessoryManager_SAccessoryManager"

    const-string/jumbo v1, "init dock state = "

    const-string/jumbo v2, "Service start and check pdids: "

    const/16 v3, 0x400

    const/4 v4, 0x0

    :try_start_11
    new-array v5, v3, [C

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec/ccic/usbpd_ids"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1a} :catch_78
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_76

    :try_start_1a
    invoke-virtual {v6, v5, v4, v3}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v4, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_7a

    :try_start_29
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v3, [C

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/sec/ccic/usbpd_type"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_46} :catch_78
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_46} :catch_76

    :try_start_46
    invoke-virtual {v5, v2, v4, v3}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_70

    :try_start_5b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_6e

    :try_start_6a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    goto :goto_85

    :catchall_6e
    move-exception v1

    goto :goto_72

    :catchall_70
    move-exception v1

    move v2, v4

    :goto_72
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_76} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_76} :catch_85

    :catch_76
    move v2, v4

    goto :goto_85

    :catch_78
    move v2, v4

    goto :goto_7f

    :catchall_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_7b .. :try_end_7f} :catch_78
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7f} :catch_76

    :catch_7f
    :goto_7f
    const-string/jumbo v1, "This kernel does not have ccic dock support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_85
    :goto_85
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    if-eqz v1, :cond_90

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_91

    :cond_90
    const/4 v1, 0x0

    :goto_91
    const-string/jumbo v3, "b001b7ff"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v1, :cond_e2

    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e2

    aget-object v6, v1, v4

    const-string v7, "04e8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e2

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_ce

    aget-byte v6, v1, v4

    aget-byte v4, v3, v4

    if-ne v6, v4, :cond_ce

    aget-byte v1, v1, v5

    aget-byte v4, v3, v5

    if-lt v1, v4, :cond_ce

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    if-gt v1, v3, :cond_ce

    invoke-virtual {p0, v2}, Lcom/samsung/accessory/manager/SAccessoryManager;->attachUsbTypeC(I)V

    goto :goto_e2

    :cond_ce
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "This device is not support usb authentication usb_pdids: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mUsbpdIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    :goto_e2
    iput-boolean v5, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->isUsbReady:Z

    return-void
.end method

.method public getSessionState(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)I
    .registers 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v0, v0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x7

    monitor-exit v0

    return p0

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 p1, -0x1

    goto :goto_19

    :cond_e
    const/16 p1, 0xd

    goto :goto_19

    :cond_11
    const/16 p1, 0xc

    goto :goto_19

    :cond_14
    const/16 p1, 0xb

    goto :goto_19

    :cond_17
    const/16 p1, 0xa

    :goto_19
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start(Landroid/os/Message;)V
    .registers 4

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    if-eqz v1, :cond_16

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stop(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 5

    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$1;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    const-string/jumbo v1, "SM-F900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v2, "SAccessoryManager_SAccessoryManager"

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    if-eqz v0, :cond_26

    iget v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    if-nez v0, :cond_26

    const-string v0, "F900, set auth state true"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    goto :goto_36

    :cond_26
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "F900, set aute state false"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
