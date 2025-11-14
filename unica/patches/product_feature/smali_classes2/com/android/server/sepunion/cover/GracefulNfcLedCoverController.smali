.class public final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static TEST:I

.field public static final VERSION_CHECK_COMMAND:[B


# instance fields
.field public final mCallTimerLock:Ljava/lang/Object;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field public mIsLedOn:Z

.field public mLastWcControlResetTime:J

.field public mLedCoverStartRetryCount:I

.field public mLedCoverTransceiveRetryCount:I

.field public final mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mListeners:Ljava/util/ArrayList;

.field public final mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPollingTouchEvents:Z

.field public final mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field public testCount:I


# direct methods
.method public static -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HandleEventResponse: type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const-string p2, "CoverManager_GracefulNfcLedCoverController"

    const-string v0, "Event touch: accept"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v4, :cond_0

    iget-object v3, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const-string v4, "CoverManager_GracefulNfcLedCoverController"

    if-nez v3, :cond_1

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v5, "Failed onCoverTouchAccept callback"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_4

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    const-string p2, "CoverManager_GracefulNfcLedCoverController"

    const-string v0, "Event touch: reject"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4
    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v4, :cond_4

    iget-object v3, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const-string v4, "CoverManager_GracefulNfcLedCoverController"

    if-nez v3, :cond_5

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-static {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    const-string v5, "Failed onCoverTouchReject callback"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_7
    const-string p1, "CoverManager_GracefulNfcLedCoverController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown event action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public static -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v0, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    iget-object v4, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string v1, "Invalid data"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    const/4 v7, 0x1

    const/16 v8, 0x12

    if-ne v2, v8, :cond_1

    iget-boolean v9, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v9, :cond_1

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo v1, "Led cover already off"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-void

    :cond_1
    const-string v9, "CoverManager_GracefulNfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v9, v10}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->tryStartLedCover(Landroid/content/Intent;)Z

    move-result v9

    const-string/jumbo v10, "command_data"

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v10, "start_success"

    invoke-virtual {v5, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v10, 0x0

    if-nez v9, :cond_3

    iget v6, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v8, 0xd

    if-ge v6, v8, :cond_2

    const-string v6, "CoverManager_GracefulNfcLedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v6, 0x4

    iput v6, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    goto :goto_0

    :cond_2
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string v2, "Could not start NFC LED Cover"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    :goto_0
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    monitor-exit v4

    return-void

    :cond_3
    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7530

    cmp-long v0, v13, v15

    if-lez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    iput-wide v11, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    :cond_4
    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v9, "CoverManager_GracefulNfcLedCoverController"

    const-string v11, "Error in trancieve command"

    invoke-static {v9, v11, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    const-string/jumbo v9, "transceive_result"

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    array-length v9, v0

    array-length v11, v6

    add-int/lit8 v11, v11, -0x5

    if-ge v9, v11, :cond_6

    goto :goto_3

    :cond_6
    move v9, v10

    :goto_2
    array-length v11, v6

    add-int/lit8 v11, v11, -0x5

    if-ge v9, v11, :cond_9

    aget-byte v11, v0, v9

    add-int/lit8 v12, v9, 0x5

    aget-byte v12, v6, v12

    if-eq v11, v12, :cond_8

    :goto_3
    const-string v9, "CoverManager_GracefulNfcLedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing response for command "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    const-string/jumbo v0, "transceive_success"

    invoke-virtual {v5, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v0, :cond_7

    monitor-exit v4

    goto/16 :goto_a

    :cond_7
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo v3, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "transceive_success"

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_4
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string v3, "Done, sucess"

    invoke-static {v0, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/4 v0, 0x6

    const/16 v3, 0x70

    const/4 v5, 0x2

    if-eq v2, v5, :cond_a

    if-eq v2, v0, :cond_a

    if-eq v2, v8, :cond_15

    if-eq v2, v3, :cond_a

    goto/16 :goto_8

    :cond_a
    sget v8, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v8, :cond_b

    iput v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    iput v5, v8, Landroid/os/Message;->what:I

    const/16 v9, 0x8

    if-eq v2, v5, :cond_d

    const/4 v11, 0x3

    if-eq v2, v0, :cond_e

    if-eq v2, v3, :cond_c

    goto :goto_5

    :cond_c
    array-length v0, v6

    if-le v0, v9, :cond_11

    aget-byte v0, v6, v9

    if-eq v0, v7, :cond_d

    if-eq v0, v11, :cond_d

    goto :goto_5

    :cond_d
    move v11, v10

    goto :goto_6

    :cond_e
    array-length v0, v6

    if-le v0, v9, :cond_11

    aget-byte v0, v6, v9

    if-eq v0, v7, :cond_10

    if-eq v0, v5, :cond_f

    if-eq v0, v11, :cond_12

    goto :goto_5

    :cond_f
    move v11, v5

    goto :goto_6

    :cond_10
    move v11, v7

    goto :goto_6

    :cond_11
    :goto_5
    const/4 v11, -0x1

    :cond_12
    :goto_6
    if-ltz v11, :cond_14

    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput v11, v8, Landroid/os/Message;->arg1:I

    iget-boolean v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v0, :cond_13

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string v2, "Already polling for touch events"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_7

    :cond_13
    iput-boolean v7, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    :goto_7
    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_14
    if-ne v2, v3, :cond_16

    array-length v0, v6

    if-le v0, v9, :cond_16

    aget-byte v0, v6, v9

    if-ne v0, v5, :cond_16

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string v2, "Factory Mode Full LED off was sent, so turn off LedCover"

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    :goto_8
    iput-boolean v10, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :goto_9
    monitor-exit v4

    goto :goto_a

    :cond_16
    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong listener type requested for command:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_a
    return-void

    :goto_b
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x7t
        0x7t
        0x71t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "send leddata"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "pollTouch ledcover"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "touchResponse ledcover"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "version check ledcover"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "nfc_led_cover_test"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    return-void
.end method

.method public static buildNfcCoverLedData(I[B)[B
    .locals 13

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [B

    aput-byte v2, p1, v2

    aput-byte v2, p1, v0

    :cond_0
    array-length v3, p1

    if-ge v3, v1, :cond_1

    new-array v3, v1, [B

    aput-byte v2, v3, v2

    aget-byte p1, p1, v2

    aput-byte p1, v3, v0

    move-object p1, v3

    :cond_1
    array-length v3, p1

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    array-length v5, p1

    const/4 v6, 0x4

    add-int/2addr v5, v6

    if-eqz v3, :cond_3

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    :cond_3
    const/4 v7, 0x5

    add-int v8, v7, v5

    new-array v9, v8, [B

    array-length v10, p1

    const/4 v11, 0x7

    if-eqz v3, :cond_4

    move v12, v7

    goto :goto_1

    :cond_4
    move v12, v11

    :goto_1
    add-int/2addr v10, v12

    if-ge v8, v10, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "buildNfcCoverLedData : Invalid genData length data.length="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " genData.length="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverManager_GracefulNfcLedCoverController"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_5
    aput-byte v2, v9, v2

    const/16 v8, -0x5e

    aput-byte v8, v9, v0

    aput-byte v2, v9, v1

    aput-byte v2, v9, v4

    int-to-byte v0, v5

    aput-byte v0, v9, v6

    if-eqz v3, :cond_6

    array-length p0, p1

    invoke-static {p1, v2, v9, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v9

    :cond_6
    aput-byte v0, v9, v7

    const/4 v0, 0x6

    int-to-byte p0, p0

    aput-byte p0, v9, v0

    array-length p0, p1

    invoke-static {p1, v2, v9, v11, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, v5, 0x4

    add-int/2addr v5, v4

    const/4 p1, -0x1

    aput-byte p1, v9, v5

    aput-byte p1, v9, p0

    return-object v9
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final clearRetryCountDelayedMsg()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "  Live callbacks ("

    const-string v1, " Current NfcLedCoverController state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mIsLEDCoverAttached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  TEST="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " Current NFC Callback state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleInvalidCommand(I[B[B)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const/16 v3, 0x12

    if-eq p1, v3, :cond_2

    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    aget-byte v3, p3, v2

    const/16 v5, -0x20

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    const/4 v5, 0x5

    if-eq v3, v5, :cond_0

    const/4 v5, 0x6

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Transceive error - unknown error value: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p2, p3, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :pswitch_0
    iget p3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v3, 0xd

    if-ge p3, v3, :cond_1

    const-string/jumbo p3, "Repeat command "

    const-string v3, " count: "

    invoke-static {p1, p3, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p3

    const/4 v1, 0x4

    iput v1, p3, Landroid/os/Message;->what:I

    iput p1, p3, Landroid/os/Message;->arg1:I

    iput-object p2, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    :cond_1
    iput v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const-string p1, "Could not transceive command to cover so turn off led cover"

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string/jumbo p1, "Sent done intent, fail transceive"

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x50
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 11

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    move v10, p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p2, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object v5, p0

    move v10, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    invoke-interface {v6, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_1
    const-string p0, "CoverManager_GracefulNfcLedCoverController"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Unsupported touch listener type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeLedNotification(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDataToNfcLedCover(I[B)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendPowerKeyToCover()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final sendSystemEvent(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "event_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string/jumbo v0, "lcd_touch_listener_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "lcd_touch_listener_respone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final stopLedCover()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const-wide/16 v0, 0x1f4

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final tryStartLedCover(Landroid/content/Intent;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Trying to start NFC LED Cover mIsLedOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startLedCover()[B

    move-result-object v0

    const-string/jumbo v4, "start_result"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz v0, :cond_1

    array-length p1, v0

    if-le p1, v2, :cond_1

    const-string/jumbo p1, "Started NFC LED Cover"

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    return v2

    :cond_1
    const-string p0, "Failed to start NFC LED Cover"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string/jumbo p0, "NFC LED Cover already started"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove listener: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateNfcLedCoverAttachStateLocked(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eqz p2, :cond_0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    iget-object v2, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    if-nez p1, :cond_1

    const-string p1, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo v3, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {p1, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput p2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "nfc_led_cover_test"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    return-void
.end method
