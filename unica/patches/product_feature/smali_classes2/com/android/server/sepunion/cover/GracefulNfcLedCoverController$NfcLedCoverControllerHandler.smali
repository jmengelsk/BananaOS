.class public final Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_c

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_0
    :goto_0
    if-ge v10, v3, :cond_1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v10, v9

    check-cast v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v5, v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v5, v8, :cond_0

    invoke-virtual {v4, v8, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    const-string v2, "CoverManager_GracefulNfcLedCoverController"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Firmware version already retrieved: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Led is on, try checking version later"

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_3
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startLedCover()[B

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v1, v1

    if-le v1, v9, :cond_4

    move v1, v9

    goto :goto_2

    :cond_4
    move v1, v10

    :goto_2
    iget-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    :cond_5
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_6
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    sget-object v11, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Verison check response: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    array-length v12, v1

    const/4 v13, 0x7

    if-lt v12, v13, :cond_7

    aget-byte v12, v1, v10

    aget-byte v14, v11, v5

    if-ne v12, v14, :cond_7

    aget-byte v12, v1, v9

    aget-byte v14, v11, v4

    if-ne v12, v14, :cond_7

    aget-byte v7, v1, v7

    aget-byte v12, v11, v13

    if-ne v7, v12, :cond_7

    aget-byte v5, v1, v5

    const/16 v7, 0xa

    aget-byte v7, v11, v7

    if-ne v5, v7, :cond_7

    aget-byte v4, v1, v4

    const/16 v5, 0xb

    aget-byte v5, v11, v5

    if-ne v4, v5, :cond_7

    move v10, v9

    :cond_7
    if-eqz v10, :cond_8

    aget-byte v4, v1, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aget-byte v1, v1, v8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%02X %02X"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    :cond_8
    if-eqz v10, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Firmware version retrieved: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "led_cover_firmware_version"

    iget-object v4, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_9
    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopLedCover()V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    :cond_a
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_3
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_b
    :goto_3
    if-ge v10, v3, :cond_c

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v10, v9

    check-cast v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v5, v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v5, v8, :cond_b

    invoke-virtual {v4, v6, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_c
    monitor-exit v2

    return-void

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_2
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_d
    :goto_5
    if-ge v10, v3, :cond_e

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/2addr v10, v9

    check-cast v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    iget v5, v4, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v5, v8, :cond_d

    invoke-virtual {v4, v7, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_e
    monitor-exit v2

    return-void

    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v9, :cond_f

    goto/16 :goto_c

    :cond_f
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CoverManager_GracefulNfcLedCoverController"

    const-string/jumbo v2, "handleCoverDetached()"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput-boolean v10, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_10
    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_11

    const-string v2, "CoverManager_BaseNfcLedCoverController"

    const-string v4, "Could not get NfcAdapter"

    invoke-static {v2, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v2, v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_12
    :goto_7
    iput-object v3, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    monitor-exit v1

    return-void

    :goto_8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_6
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleSendPowerKeyToCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;)V

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;II)V

    return-void

    :pswitch_8
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-boolean v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v0, :cond_13

    iget-object v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_13
    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v0, :cond_14

    iget v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    add-int/2addr v0, v9

    iput v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    :cond_14
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    const/16 v11, 0x11

    invoke-static {v11, v0}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v0

    const-string v12, "CoverManager_GracefulNfcLedCoverController"

    if-nez v0, :cond_15

    const-string v0, "Invalid data"

    invoke-static {v12, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    :try_start_4
    sget v13, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v13, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v15, v5

    move/from16 v16, v6

    :try_start_5
    iget-wide v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    sub-long v5, v13, v5

    const-wide/16 v17, 0x7530

    cmp-long v5, v5, v17

    if-lez v5, :cond_16

    iget-object v5, v2, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->setWirelessChargeEnabled(Z)V

    iput-wide v13, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    :cond_16
    iget-object v5, v2, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_17
    move v15, v5

    move/from16 v16, v6

    goto :goto_a

    :catch_1
    move-exception v0

    move v15, v5

    move/from16 v16, v6

    :goto_9
    const-string v5, "Error sending data to NFC"

    invoke-static {v12, v5, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    sget v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v0, :cond_1a

    iget v5, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->testCount:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_1a

    new-array v3, v4, [B

    aput-byte v4, v3, v10

    aput-byte v11, v3, v9

    aput-byte v10, v3, v7

    if-ne v0, v7, :cond_18

    aput-byte v9, v3, v16

    goto :goto_b

    :cond_18
    if-ne v0, v9, :cond_19

    aput-byte v7, v3, v16

    goto :goto_b

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unknown test value: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", reject by default"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v7, v3, v16

    :goto_b
    const/4 v0, -0x1

    aput-byte v0, v3, v8

    aput-byte v0, v3, v15

    :cond_1a
    iget-object v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    if-eqz v3, :cond_1c

    array-length v5, v3

    if-lt v5, v4, :cond_1c

    aget-byte v4, v3, v9

    if-ne v4, v11, :cond_1c

    aget-byte v4, v3, v16

    if-eq v4, v9, :cond_1b

    if-ne v4, v7, :cond_1c

    :cond_1b
    iget-object v4, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v4}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    move/from16 v5, v16

    iput v5, v4, Landroid/os/Message;->what:I

    iput v1, v4, Landroid/os/Message;->arg1:I

    aget-byte v1, v3, v5

    iput v1, v4, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v10, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v0, v2, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_c

    :cond_1c
    const-string/jumbo v2, "No touch event from LED cover, keep listening"

    invoke-static {v12, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v7, v2, Landroid/os/Message;->what:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    :pswitch_9
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    invoke-virtual {v2}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    :pswitch_a
    iget-object v2, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v2, v3, v1}, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;I[B)V

    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v1, v1, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;

    iget-object v0, v0, Lcom/android/server/sepunion/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_1d
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
