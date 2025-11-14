.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x12

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "lcd_off_disabled_by_cover"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    :goto_0
    if-ge v9, v1, :cond_2

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v9, v8

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v3, v7, :cond_1

    invoke-virtual {v2, v7, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3
    :goto_2
    if-ge v9, v1, :cond_4

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v9, v8

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v3, v7, :cond_3

    invoke-virtual {v2, v5, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5
    :goto_4
    if-ge v9, v1, :cond_6

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v9, v8

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v4, v7, :cond_5

    invoke-virtual {v3, v2, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_6
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v8, :cond_7

    goto/16 :goto_12

    :cond_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "CoverManager_NfcLedCoverController"

    const-string/jumbo v0, "handleCoverDetached()"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_3
    iput-boolean v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_6

    :cond_8
    const-string p1, "CoverManager_NfcLedCoverController"

    const-string v0, "Call duration should not be null in stop or was already stopped"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallStartTime:J

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    iput-boolean v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iput v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    goto :goto_8

    :cond_9
    :goto_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_4
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v9

    :cond_a
    :goto_9
    if-ge v3, v2, :cond_b

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/2addr v3, v8

    check-cast v10, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v11, v10, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v11, v7, :cond_a

    invoke-virtual {v10, v8, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_9

    :catchall_4
    move-exception p0

    goto :goto_d

    :cond_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-array p1, v8, [B

    aput-byte v9, p1, v9

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {p0, v4, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz p1, :cond_10

    iget v0, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, v5, :cond_f

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    if-nez p1, :cond_d

    goto :goto_a

    :cond_d
    iput-boolean v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_b

    :catchall_5
    move-exception p1

    goto :goto_c

    :cond_e
    :goto_a
    const-string p1, "CoverManager_NfcLedCoverController"

    const-string/jumbo v0, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-virtual {p0, v1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_b

    :cond_f
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_b

    :cond_10
    invoke-virtual {p0, v1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :goto_b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :goto_d
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0xfffe

    if-ne p1, v1, :cond_11

    goto :goto_e

    :cond_11
    move v5, p1

    :goto_e
    if-eqz v5, :cond_12

    iget-object p1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz p1, :cond_13

    iget p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne p1, v5, :cond_13

    :cond_12
    iput-object v6, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    :cond_13
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "CoverManager_NfcLedCoverController"

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v1, :cond_14

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_14
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-lez v1, :cond_15

    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    :cond_15
    new-array v1, v8, [B

    aput-byte v9, v1, v9

    const/16 v4, 0x11

    invoke-static {v4, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData$1(I[B)[B

    move-result-object v1

    :try_start_7
    iget v10, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_f

    :catch_0
    move-exception v1

    const-string v10, "Error sending data to NFC"

    invoke-static {v0, v10, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_f
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/16 v10, -0x2f

    if-lez v1, :cond_19

    iget v11, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    const/16 v12, 0x13

    if-le v11, v12, :cond_19

    new-array v6, v3, [B

    aput-byte v9, v6, v8

    aput-byte v9, v6, v9

    aput-byte v10, v6, v2

    aput-byte v4, v6, v5

    if-ne v1, v2, :cond_17

    aput-byte v8, v6, v7

    goto :goto_10

    :cond_17
    if-ne v1, v8, :cond_18

    aput-byte v2, v6, v7

    goto :goto_10

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Unknown test value: "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", reject by default"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v2, v6, v7

    :cond_19
    :goto_10
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    if-eqz v6, :cond_1b

    array-length v11, v6

    if-lt v11, v3, :cond_1b

    aget-byte v3, v6, v2

    if-ne v3, v10, :cond_1b

    aget-byte v3, v6, v5

    if-ne v3, v4, :cond_1b

    aget-byte v3, v6, v7

    if-eq v3, v8, :cond_1a

    if-ne v3, v2, :cond_1b

    :cond_1a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    aget-byte p1, v6, v7

    iput p1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_12

    :cond_1b
    const-string/jumbo p0, "No touch event from LED cover, keep listening"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    iput v2, p0, Landroid/os/Message;->what:I

    iput p1, p0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v0, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1c

    invoke-virtual {p1, v1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_11

    :cond_1c
    invoke-static {p1, v4, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    :goto_11
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_1d
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
