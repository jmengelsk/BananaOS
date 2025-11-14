.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController;
.super Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final mResponsePattern:[B


# instance fields
.field public mCallDurationTimer:Ljava/util/Timer;

.field public mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

.field public mCallInProgressDisplay:Z

.field public mCallStartTime:J

.field public final mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mCoverEventsDisabledForSamsungPay:Z

.field public mFactoryTransceiveResponseIntentSent:Z

.field public final mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field public mIsLedOn:Z

.field public mLedCoverRetryPostTime:J

.field public mLedCoverStartRetryCount:I

.field public mLedCoverTransceiveRetryCount:I

.field public final mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mListeners:Ljava/util/ArrayList;

.field public mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

.field public final mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mPollingTouchEvents:Z

.field public mPrevCommand:I

.field public final mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mTestCount:I

.field public mTestMode:I

.field public final mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mgetCallDuration(Lcom/android/server/sepunion/cover/NfcLedCoverController;)[B
    .registers 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    iget-wide v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1b

    return-object v0

    :cond_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long v9, v5, v7

    const-wide/16 v11, 0x64

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v9, 0x0

    const-string v10, "%02d"

    invoke-static {v9, v10, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    rem-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v6, p0, v1

    aput-byte v6, v0, v1

    aget-byte p0, p0, v2

    aput-byte p0, v0, v2

    aget-byte p0, v5, v1

    aput-byte p0, v0, v3

    aget-byte p0, v5, v2

    aput-byte p0, v0, v4

    return-object v0
.end method

.method public static -$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CoverManager_NfcLedCoverController"

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

    if-ne p2, v0, :cond_64

    const-string p2, "CoverManager_NfcLedCoverController"

    const-string v0, "Event touch: accept"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2c
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_32
    :goto_32
    if-ge v1, v2, :cond_60

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v4, :cond_32

    iget-object v3, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const-string v4, "CoverManager_NfcLedCoverController"

    if-nez v3, :cond_4d

    const-string/jumbo v3, "null listener received TouchAccept!"

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_5e

    goto :goto_32

    :cond_4d
    :try_start_4d
    invoke-static {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-interface {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchAccept()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_56} :catch_57
    .catchall {:try_start_4d .. :try_end_56} :catchall_5e

    goto :goto_32

    :catch_57
    move-exception v3

    :try_start_58
    const-string v5, "Failed onCoverTouchAccept callback"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    :catchall_5e
    move-exception p0

    goto :goto_62

    :cond_60
    monitor-exit v0

    goto :goto_bd

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_5e

    throw p0

    :cond_64
    const/4 v0, 0x2

    if-ne p2, v0, :cond_a9

    const-string p2, "CoverManager_NfcLedCoverController"

    const-string v0, "Event touch: reject"

    invoke-static {p2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_71
    iget-object p2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_77
    :goto_77
    if-ge v1, v2, :cond_a5

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v4, :cond_77

    iget-object v3, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const-string v4, "CoverManager_NfcLedCoverController"

    if-nez v3, :cond_92

    const-string/jumbo v3, "null listener received TouchReject!"

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_71 .. :try_end_91} :catchall_a3

    goto :goto_77

    :cond_92
    :try_start_92
    invoke-static {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v3

    if-eqz v3, :cond_77

    invoke-interface {v3}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onCoverTouchReject()V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9b} :catch_9c
    .catchall {:try_start_92 .. :try_end_9b} :catchall_a3

    goto :goto_77

    :catch_9c
    move-exception v3

    :try_start_9d
    const-string v5, "Failed onCoverTouchReject callback"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    :catchall_a3
    move-exception p0

    goto :goto_a7

    :cond_a5
    monitor-exit v0

    goto :goto_bd

    :goto_a7
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_9d .. :try_end_a8} :catchall_a3

    throw p0

    :cond_a9
    const-string p1, "CoverManager_NfcLedCoverController"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown event action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bd
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public static -$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v3, "Wrong listener type requested for command:"

    const-string v4, "Error parsing response for command "

    const-string/jumbo v0, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    iget-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "CoverManager_NfcLedCoverController"

    const/16 v8, 0x12

    const/4 v9, 0x4

    iget-object v10, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v11, 0x1

    move/from16 v12, p1

    if-ne v12, v9, :cond_5d

    :try_start_1f
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iget-object v13, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Ljava/util/Timer;->cancel()V

    iput-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_32

    :cond_2d
    const-string v13, "Call duration should not be null in stop or was already stopped"

    invoke-static {v7, v13}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    if-eqz v2, :cond_5d

    array-length v13, v2

    if-lez v13, :cond_5d

    aget-byte v13, v2, v6

    if-nez v13, :cond_5d

    iget v12, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v12, v9, :cond_57

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_57

    const-string v0, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_1f .. :try_end_4e} :catchall_54

    :goto_4e
    iget-object v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_54
    move-exception v0

    goto/16 :goto_23a

    :cond_57
    :try_start_57
    const-string v12, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {v7, v12}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v8

    :cond_5d
    const v13, 0xfffe

    const/16 v14, 0xd

    const/4 v15, 0x3

    if-ne v12, v13, :cond_6b

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    move v12, v15

    goto/16 :goto_150

    :cond_6b
    if-ne v12, v8, :cond_82

    iget-boolean v13, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v13, :cond_82

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    const-string/jumbo v0, "Led cover already off"

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_4e

    :cond_82
    const-string v13, "Ensuring NFC LED Cover started"

    invoke-static {v7, v13}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v13
    :try_end_8b
    .catchall {:try_start_57 .. :try_end_8b} :catchall_54

    const-string/jumbo v5, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    if-nez v13, :cond_e8

    :try_start_90
    iget v3, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    if-ge v3, v14, :cond_c8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v9, v0, Landroid/os/Message;->what:I

    iput v12, v0, Landroid/os/Message;->arg1:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iget-object v0, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    goto :goto_4e

    :cond_c8
    const-string v0, "Could not start NFC LED Cover"

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "Sent done intent, fail start"

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V

    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    goto/16 :goto_4e

    :cond_e8
    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-static {v12, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData$1(I[B)[B

    move-result-object v0
    :try_end_ee
    .catchall {:try_start_90 .. :try_end_ee} :catchall_54

    :try_start_ee
    iget-object v9, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    move-result-object v0
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f7} :catch_f8
    .catchall {:try_start_ee .. :try_end_f7} :catchall_54

    goto :goto_ff

    :catch_f8
    move-exception v0

    :try_start_f9
    const-string v9, "Error in trancieve command"

    invoke-static {v7, v9, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_ff
    invoke-static {v12, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v9

    if-nez v9, :cond_137

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v12, v2, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->handleInvalidCommand$1(I[B[B)V

    invoke-virtual {v1, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I
    :try_end_128
    .catchall {:try_start_f9 .. :try_end_128} :catchall_54

    if-nez v0, :cond_131

    :goto_12a
    iget-object v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_239

    :cond_131
    :try_start_131
    const-string/jumbo v0, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_137
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "Sent done intent, sucess"

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v1, v12, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    :goto_150
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    iput v12, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/4 v4, 0x2

    if-eq v12, v4, :cond_16f

    if-eq v12, v15, :cond_16f

    if-eq v12, v14, :cond_164

    const/16 v5, 0xe

    if-eq v12, v5, :cond_16f

    const/16 v5, 0x14

    if-eq v12, v5, :cond_16f

    goto :goto_17f

    :cond_164
    if-eqz v2, :cond_17f

    array-length v5, v2

    if-lez v5, :cond_17f

    aget-byte v5, v2, v6

    if-eq v5, v11, :cond_16f

    if-ne v5, v15, :cond_17f

    :cond_16f
    iget-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-nez v5, :cond_17b

    new-instance v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-direct {v5, v1, v12, v2}, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iput-object v5, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    goto :goto_17f

    :cond_17b
    iput v12, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    iput-object v2, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    :cond_17f
    :goto_17f
    const/16 v5, 0xe0

    const/4 v9, 0x6

    if-eq v12, v4, :cond_1ce

    if-eq v12, v9, :cond_1d0

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1c0

    if-eq v12, v8, :cond_18f

    if-eq v12, v5, :cond_1d0

    goto :goto_1c2

    :cond_18f
    invoke-virtual {v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "led_off_command"

    invoke-static {v0, v2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_19f
    .catchall {:try_start_131 .. :try_end_19f} :catchall_54

    :try_start_19f
    iget-object v3, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    move v8, v7

    :cond_1a7
    :goto_1a7
    if-ge v8, v5, :cond_1bc

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v11, v9, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1a7

    invoke-virtual {v9, v7, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_1a7

    :catchall_1ba
    move-exception v0

    goto :goto_1be

    :cond_1bc
    monitor-exit v2

    goto :goto_1c0

    :goto_1be
    monitor-exit v2
    :try_end_1bf
    .catchall {:try_start_19f .. :try_end_1bf} :catchall_1ba

    :try_start_1bf
    throw v0

    :cond_1c0
    :goto_1c0
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :goto_1c2
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    invoke-virtual {v10, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_12a

    :cond_1ce
    iput-boolean v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :cond_1d0
    iget v0, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-lez v0, :cond_1d6

    iput v6, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    :cond_1d6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    if-eq v12, v4, :cond_204

    if-eq v12, v9, :cond_1ef

    if-eq v12, v5, :cond_1e3

    goto :goto_203

    :cond_1e3
    if-eqz v2, :cond_203

    array-length v5, v2

    if-lez v5, :cond_203

    aget-byte v2, v2, v6

    if-eq v2, v11, :cond_204

    if-eq v2, v15, :cond_204

    goto :goto_203

    :cond_1ef
    if-eqz v2, :cond_203

    array-length v5, v2

    if-lez v5, :cond_203

    aget-byte v2, v2, v6

    if-eq v2, v11, :cond_201

    if-eq v2, v4, :cond_1ff

    if-eq v2, v15, :cond_1fd

    goto :goto_203

    :cond_1fd
    move v6, v15

    goto :goto_204

    :cond_1ff
    move v6, v4

    goto :goto_204

    :cond_201
    move v6, v11

    goto :goto_204

    :cond_203
    :goto_203
    const/4 v6, -0x1

    :cond_204
    :goto_204
    if-gez v6, :cond_21c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; return"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12a

    :cond_21c
    iget-object v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput v6, v0, Landroid/os/Message;->arg1:I

    iget-boolean v2, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v2, :cond_230

    const-string v2, "Already polling for touch events"

    invoke-static {v7, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_232

    :cond_230
    iput-boolean v11, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    :goto_232
    const-wide/16 v2, 0x64

    invoke-virtual {v10, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_237
    .catchall {:try_start_1bf .. :try_end_237} :catchall_54

    goto/16 :goto_12a

    :goto_239
    return-void

    :goto_23a
    iget-object v1, v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "onoff ledcover"

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "nfc_led_cover_test"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    return-void
.end method

.method public static buildNfcCoverLedData$1(I[B)[B
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_8

    new-array p1, v0, [B

    aput-byte v1, p1, v1

    :cond_8
    array-length v2, p1

    add-int/lit8 v3, v2, 0x5

    add-int/lit8 v4, v2, 0xa

    new-array v4, v4, [B

    aput-byte v1, v4, v1

    const/16 v5, -0x5e

    aput-byte v5, v4, v0

    const/4 v0, 0x2

    aput-byte v1, v4, v0

    const/4 v0, 0x3

    aput-byte v1, v4, v0

    int-to-byte v0, v3

    const/4 v3, 0x4

    aput-byte v0, v4, v3

    const/16 v3, 0x10

    const/4 v5, 0x5

    aput-byte v3, v4, v5

    const/4 v3, 0x6

    aput-byte v0, v4, v3

    const/4 v0, 0x7

    int-to-byte p0, p0

    aput-byte p0, v4, v0

    array-length p0, p1

    const/16 v0, 0x8

    invoke-static {p1, v1, v4, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, v2, 0x9

    add-int/2addr v2, v0

    const/4 p1, -0x1

    aput-byte p1, v4, v2

    aput-byte p1, v4, p0

    return-object v4
.end method

.method public static isValidResponse(I[B)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_29

    :cond_4
    array-length v1, p1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_9

    goto :goto_29

    :cond_9
    sget-object v1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mResponsePattern:[B

    const/4 v3, 0x3

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    array-length p0, p1

    move v3, v0

    move v4, v3

    :goto_12
    if-ge v3, p0, :cond_29

    aget-byte v5, p1, v3

    aget-byte v6, v1, v4

    const/4 v7, 0x1

    if-eq v5, v6, :cond_21

    if-ne v4, v7, :cond_1e

    goto :goto_21

    :cond_1e
    if-nez v4, :cond_29

    goto :goto_26

    :cond_21
    :goto_21
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_26

    return v7

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_29
    :goto_29
    return v0
.end method


# virtual methods
.method public final addLedNotification(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "CoverManager_NfcLedCoverController"

    const-string/jumbo v1, "addLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final clearRetryCountDelayedMsg$1()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "  Live callbacks ("

    const-string v1, " Current NfcLedCoverController state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mIsLEDCoverAttached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " Current NFC Callback state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_3f
    :goto_3f
    if-ge v2, v0, :cond_87

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v3, :cond_3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f

    :catchall_85
    move-exception p0

    goto :goto_8e

    :cond_87
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_85

    throw p0
.end method

.method public final handleInvalidCommand$1(I[B[B)V
    .registers 13

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0x12

    const-string v2, "CoverManager_NfcLedCoverController"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p3, :cond_a3

    if-eq p1, v1, :cond_a3

    array-length v5, p3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_a3

    aget-byte v5, p3, v4

    const/16 v7, -0x20

    if-eq v5, v7, :cond_3c

    if-eq v5, v6, :cond_3c

    const/4 v7, 0x3

    if-eq v5, v7, :cond_3c

    const/4 v7, 0x5

    if-eq v5, v7, :cond_3c

    const/4 v7, 0x6

    if-eq v5, v7, :cond_3c

    packed-switch v5, :pswitch_data_d2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Transceive error - unknown error value: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v7, p3, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    goto :goto_3d

    :cond_3c
    :pswitch_3c  #0xffffffb0, 0xffffffb1, 0xffffffb2
    move v5, v6

    :goto_3d
    if-nez v5, :cond_57

    array-length v7, p3

    if-le v7, v3, :cond_57

    aget-byte v7, p3, v3

    const/16 v8, -0x30

    if-ne v7, v8, :cond_57

    array-length v5, p3

    new-array v5, v5, [B

    array-length v7, p3

    invoke-static {p3, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p3, -0x2f

    aput-byte p3, v5, v3

    invoke-static {p1, v5}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v5

    :cond_57
    if-eqz v5, :cond_9a

    iget p3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v5, 0xd

    if-ge p3, v5, :cond_9a

    const-string/jumbo p3, "Repeat command "

    const-string v1, " count: "

    invoke-static {p1, p3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    return-void

    :cond_9a
    iput v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const-string p2, "Could not transceive command to cover so turn off led cover"

    invoke-static {v2, p2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    :cond_a3
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo p3, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p3, p2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo p2, "Sent done intent, fail transceive"

    invoke-static {v2, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v3, :cond_bd

    if-eq p1, v1, :cond_bd

    goto :goto_c3

    :cond_bd
    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz p1, :cond_c3

    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :cond_c3
    :goto_c3
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V

    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    nop

    :pswitch_data_d2
    .packed-switch -0x50
        :pswitch_3c  #ffffffb0
        :pswitch_3c  #ffffffb1
        :pswitch_3c  #ffffffb2
    .end packed-switch
.end method

.method public final registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 15

    if-ltz p1, :cond_5

    const/4 v0, 0x5

    if-le p1, v0, :cond_7

    :cond_5
    move v10, p1

    goto :goto_50

    :cond_7
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_12
    if-ge v4, v2, :cond_33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v5, :cond_12

    iget-object v5, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p2, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string p0, "CoverManager_NfcLedCoverController"

    const-string/jumbo p1, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    :cond_33
    new-instance v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object v5, p0

    move v10, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    invoke-interface {v6, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p0, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :goto_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_a .. :try_end_4f} :catchall_30

    throw p0

    :goto_50
    const-string p0, "CoverManager_NfcLedCoverController"

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
    .registers 4

    const-string v0, "CoverManager_NfcLedCoverController"

    const-string/jumbo v1, "removeLedNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleLedOffTimeout(I[B)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scheduleLedOffTimerout, command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_NfcLedCoverController"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    if-eq p1, v0, :cond_aa

    const/4 v3, 0x2

    if-eq p1, v3, :cond_aa

    const/16 v4, 0x12

    if-eq p1, v4, :cond_aa

    const/16 v4, 0x14

    if-eq p1, v4, :cond_aa

    const/16 v4, 0xe0

    if-eq p1, v4, :cond_aa

    iget-boolean v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_4c

    const/16 v4, 0xf

    if-eq p1, v4, :cond_33

    if-ne p1, v5, :cond_4c

    :cond_33
    iget v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v6, p1, :cond_4c

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    if-ne p1, v4, :cond_46

    const-string/jumbo p0, "Time update"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    const-string p0, "Call InProgress duration time update"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_5a

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    iput v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq p1, v1, :cond_a3

    const/16 v1, 0x9

    const-wide/16 v6, 0xe74

    if-eq p1, v1, :cond_7f

    packed-switch p1, :pswitch_data_ba

    invoke-virtual {v2, p0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_73  #0xd, 0xe
    const-wide/16 p1, 0x2328

    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_79  #0xc
    const-wide/16 p1, 0x11f8

    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7f
    if-eqz p2, :cond_9d

    array-length p1, p2

    const/4 v1, 0x5

    if-ge p1, v1, :cond_86

    goto :goto_9d

    :cond_86
    aget-byte p1, p2, v0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_90

    aget-byte p1, p2, v3

    if-eq p1, v0, :cond_99

    :cond_90
    aget-byte p1, p2, v5

    if-ne p1, v0, :cond_9d

    const/4 p1, 0x4

    aget-byte p1, p2, p1

    if-ne p1, v0, :cond_9d

    :cond_99
    invoke-virtual {v2, p0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_9d
    :goto_9d
    const-wide/16 p1, 0x13ec

    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_a3
    const-wide/32 p1, 0xea60

    invoke-virtual {v2, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_aa
    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b3

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    nop

    :pswitch_data_ba
    .packed-switch 0xc
        :pswitch_79  #0000000c
        :pswitch_73  #0000000d
        :pswitch_73  #0000000e
    .end packed-switch
.end method

.method public final sendDataToNfcLedCover(I[B)V
    .registers 11

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    const-string v1, "CoverManager_NfcLedCoverController"

    if-nez v0, :cond_17

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_17

    const-string/jumbo p0, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object v0

    if-nez v0, :cond_28

    const-string/jumbo p0, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    const v0, 0xffff

    const/16 v2, 0xf

    if-ne p1, v0, :cond_40

    iget p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne p1, v2, :cond_39

    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz p1, :cond_39

    move p1, v2

    goto :goto_40

    :cond_39
    const-string/jumbo p0, "Time tick: clock not displayed, ignore"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_40
    :goto_40
    const/4 v0, 0x0

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-ne p1, v2, :cond_93

    iget-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {p2, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz p2, :cond_79

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%02d%02d"

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8f

    :cond_79
    rem-int/2addr v5, v3

    if-nez v5, :cond_7d

    move v5, v3

    :cond_7d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%2d%02d"

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_8f
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :cond_93
    if-ne p1, v3, :cond_9f

    iget v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, v4, :cond_9f

    const-string p0, "Ignore battery chargin, battery low already shown"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9f
    iget-object v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v3, 0xfff0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    if-ne p1, v3, :cond_c6

    if-eqz p2, :cond_c5

    array-length p0, p2

    if-lez p0, :cond_c5

    const/4 p0, 0x5

    iput p0, v2, Landroid/os/Message;->what:I

    aget-byte p0, p2, v4

    iput p0, v2, Landroid/os/Message;->arg1:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c5
    return-void

    :cond_c6
    const/16 p2, 0x13

    const/4 v0, 0x4

    if-ne p1, p2, :cond_d6

    iput v0, v2, Landroid/os/Message;->what:I

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p0, 0x96

    invoke-virtual {v5, v2, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_d6
    iput v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_105

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x1f4

    sub-long/2addr v3, p1

    cmp-long p1, v3, v6

    if-gez p1, :cond_f2

    goto :goto_f3

    :cond_f2
    move-wide v6, v3

    :goto_f3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_105
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final sendNfcFailIntentForFactoryMode([B)V
    .registers 6

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_13

    goto :goto_41

    :cond_13
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    if-eqz v0, :cond_18

    goto :goto_41

    :cond_18
    if-eqz p1, :cond_41

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_41

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_41

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    const/16 v3, -0x7b

    if-ne v2, v3, :cond_41

    aget-byte p1, p1, v1

    if-nez p1, :cond_41

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public final sendPowerKeyToCover()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_d

    const-string p0, "CoverManager_NfcLedCoverController"

    const-string/jumbo v0, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final sendSystemEvent(Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "event_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    return-void

    :cond_f
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1b
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

.method public final startCallInProgressDisplayTimer([B)V
    .registers 11

    const-string v1, "CallStartTime incorrect"

    const-string v2, "CoverManager_NfcLedCoverController"

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_16
    .catch Ljava/nio/BufferUnderflowException; {:try_start_a .. :try_end_16} :catch_62
    .catch Ljava/nio/BufferOverflowException; {:try_start_a .. :try_end_16} :catch_5f

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CallStartTime: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :cond_35
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    new-instance v4, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;)V

    iput-object v4, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    :try_start_46
    iget-object v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_4f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_46 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception v0

    move-object p1, v0

    const-string v0, "Error while scheduling TimerTask"

    invoke-static {v2, v0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    return-void

    :catch_5f
    move-exception v0

    move-object p0, v0

    goto :goto_65

    :catch_62
    move-exception v0

    move-object p0, v0

    goto :goto_69

    :goto_65
    invoke-static {v2, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_69
    invoke-static {v2, v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final stopLedCover$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    return-void
.end method

.method public final tryStartLedCover()Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Trying to start NFC LED Cover mIsLedOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverManager_NfcLedCoverController"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/4 v3, 0x0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    :cond_2c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startLedCover()[B

    move-result-object v0

    if-eqz v0, :cond_45

    array-length v4, v0

    if-le v4, v2, :cond_45

    const-string/jumbo v0, "Started NFC LED Cover"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    return v2

    :cond_45
    const-string v2, "Failed to start NFC LED Cover"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    return v3

    :cond_4e
    const-string/jumbo p0, "NFC LED Cover already started"

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_b
    if-ge v4, v2, :cond_45

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    if-eqz v5, :cond_b

    iget-object v6, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {p1, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v1, "CoverManager_NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove listener: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v5, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_43
    move-exception p0

    goto :goto_4f

    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_43

    const-string p0, "CoverManager_NfcLedCoverController"

    const-string/jumbo p1, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_4f
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_43

    throw p0
.end method

.method public final updateNfcLedCoverAttachStateLocked(IZ)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eqz p2, :cond_c

    if-eq p1, v1, :cond_a

    const/16 v2, 0xe

    if-ne p1, v2, :cond_c

    :cond_a
    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    move p1, v0

    :goto_d
    iget-boolean v2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, p1, :cond_28

    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez p1, :cond_28

    const-string p1, "CoverManager_NfcLedCoverController"

    const-string/jumbo v2, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {p1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_28
    iget-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "nfc_led_cover_test"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    return-void
.end method
