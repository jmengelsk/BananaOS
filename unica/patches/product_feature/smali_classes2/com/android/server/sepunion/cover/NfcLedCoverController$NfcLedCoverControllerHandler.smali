.class public final Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 15

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

    packed-switch v0, :pswitch_data_2cc

    goto/16 :goto_2cb

    :pswitch_12  #0xa
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "lcd_off_disabled_by_cover"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v1, v0, :cond_31

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_31

    invoke-virtual {p0, v4, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :cond_31
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_34
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3a
    :goto_3a
    if-ge v9, v1, :cond_4d

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v9, v8

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v3, v7, :cond_3a

    invoke-virtual {v2, v7, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_3a

    :catchall_4b
    move-exception p0

    goto :goto_4f

    :cond_4d
    monitor-exit v0

    return-void

    :goto_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_4b

    throw p0

    :pswitch_51  #0x9
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_60
    :goto_60
    if-ge v9, v1, :cond_73

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v9, v8

    check-cast v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v3, v2, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v3, v7, :cond_60

    invoke-virtual {v2, v5, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_60

    :catchall_71
    move-exception p0

    goto :goto_75

    :cond_73
    monitor-exit v0

    return-void

    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_5a .. :try_end_76} :catchall_71

    throw p0

    :pswitch_77  #0x8
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_80
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_86
    :goto_86
    if-ge v9, v1, :cond_99

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/2addr v9, v8

    check-cast v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v4, v3, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v4, v7, :cond_86

    invoke-virtual {v3, v2, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_86

    :catchall_97
    move-exception p0

    goto :goto_9b

    :cond_99
    monitor-exit v0

    return-void

    :goto_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_97

    throw p0

    :pswitch_9d  #0x7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v8, :cond_a3

    goto/16 :goto_2cb

    :cond_a3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "CoverManager_NfcLedCoverController"

    const-string/jumbo v0, "handleCoverDetached()"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_b5
    iput-boolean v9, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz p1, :cond_c3

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_ca

    :cond_c3
    const-string p1, "CoverManager_NfcLedCoverController"

    const-string v0, "Call duration should not be null in stop or was already stopped"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ca
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

    if-eqz p1, :cond_fc

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->stopLedCover$1()V
    :try_end_f9
    .catchall {:try_start_b5 .. :try_end_f9} :catchall_fa

    goto :goto_fc

    :catchall_fa
    move-exception p1

    goto :goto_102

    :cond_fc
    :goto_fc
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_102
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :pswitch_108  #0x6
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_10d
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v9

    :cond_114
    :goto_114
    if-ge v3, v2, :cond_127

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/2addr v3, v8

    check-cast v10, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    iget v11, v10, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne v11, v7, :cond_114

    invoke-virtual {v10, v8, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_114

    :catchall_125
    move-exception p0

    goto :goto_177

    :cond_127
    monitor-exit v0
    :try_end_128
    .catchall {:try_start_10d .. :try_end_128} :catchall_125

    new-array p1, v8, [B

    aput-byte v9, p1, v9

    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v0, :cond_139

    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    invoke-virtual {p0, v4, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void

    :cond_139
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_13e
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz p1, :cond_168

    iget v0, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, v5, :cond_162

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz p1, :cond_154

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/sepunion/cover/NfcLedCoverController$CallDurationTask;

    if-nez p1, :cond_14f

    goto :goto_154

    :cond_14f
    iput-boolean v8, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_16b

    :catchall_152
    move-exception p1

    goto :goto_171

    :cond_154
    :goto_154
    const-string p1, "CoverManager_NfcLedCoverController"

    const-string/jumbo v0, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    invoke-virtual {p0, v1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_16b

    :cond_162
    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_16b

    :cond_168
    invoke-virtual {p0, v1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V
    :try_end_16b
    .catchall {:try_start_13e .. :try_end_16b} :catchall_152

    :goto_16b
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_171
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :goto_177
    :try_start_177
    monitor-exit v0
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_125

    throw p0

    :pswitch_179  #0x5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0xfffe

    if-ne p1, v1, :cond_186

    goto :goto_187

    :cond_186
    move v5, p1

    :goto_187
    if-eqz v5, :cond_191

    iget-object p1, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    if-eqz p1, :cond_193

    iget p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;->code:I

    if-ne p1, v5, :cond_193

    :cond_191
    iput-object v6, v0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/sepunion/cover/NfcLedCoverController$Command;

    :cond_193
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2cb

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2cb

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2cb

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_1b9  #0x3
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleEventResponse(Lcom/android/server/sepunion/cover/NfcLedCoverController;II)V

    return-void

    :pswitch_1c3  #0x2
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "CoverManager_NfcLedCoverController"

    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v1, :cond_1d3

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :cond_1d3
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-lez v1, :cond_1dc

    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    add-int/2addr v1, v8

    iput v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    :cond_1dc
    new-array v1, v8, [B

    aput-byte v9, v1, v9

    const/16 v4, 0x11

    invoke-static {v4, v1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->buildNfcCoverLedData$1(I[B)[B

    move-result-object v1

    :try_start_1e6
    iget v10, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    if-nez v10, :cond_1fa

    iget-object v10, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->transceiveDataWithLedCover([B)[B

    move-result-object v6
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1f3} :catch_1f4

    goto :goto_1fa

    :catch_1f4
    move-exception v1

    const-string v10, "Error sending data to NFC"

    invoke-static {v0, v10, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1fa
    :goto_1fa
    iget v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestMode:I

    const/16 v10, -0x2f

    if-lez v1, :cond_235

    iget v11, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mTestCount:I

    const/16 v12, 0x13

    if-le v11, v12, :cond_235

    new-array v6, v3, [B

    aput-byte v9, v6, v8

    aput-byte v9, v6, v9

    aput-byte v10, v6, v2

    aput-byte v4, v6, v5

    if-ne v1, v2, :cond_215

    aput-byte v8, v6, v7

    goto :goto_235

    :cond_215
    if-ne v1, v8, :cond_21a

    aput-byte v2, v6, v7

    goto :goto_235

    :cond_21a
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

    :cond_235
    :goto_235
    iget-object v1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    if-eqz v6, :cond_266

    array-length v11, v6

    if-lt v11, v3, :cond_266

    aget-byte v3, v6, v2

    if-ne v3, v10, :cond_266

    aget-byte v3, v6, v5

    if-ne v3, v4, :cond_266

    aget-byte v3, v6, v7

    if-eq v3, v8, :cond_24a

    if-ne v3, v2, :cond_266

    :cond_24a
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

    goto :goto_2cb

    :cond_266
    const-string/jumbo p0, "No touch event from LED cover, keep listening"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    iput v2, p0, Landroid/os/Message;->what:I

    iput p1, p0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2cb

    :pswitch_27a  #0x1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v0, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_28b

    invoke-virtual {p1, v1, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_28e

    :cond_28b
    invoke-static {p1, v4, v6}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    :goto_28e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    return-void

    :pswitch_296  #0x0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->clearRetryCountDelayedMsg$1()V

    :pswitch_29b  #0x4
    iget-object v0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lcom/android/server/sepunion/cover/NfcLedCoverController;->-$$Nest$mhandleSendDataToNfcLedCover(Lcom/android/server/sepunion/cover/NfcLedCoverController;I[B)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2cb

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2cb

    iget-object p1, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p1, p1, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mHandler:Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2cb

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/sepunion/cover/NfcLedCoverController;

    iget-object p0, p0, Lcom/android/server/sepunion/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    :cond_2cb
    :goto_2cb
    return-void

    :pswitch_data_2cc
    .packed-switch 0x0
        :pswitch_296  #00000000
        :pswitch_27a  #00000001
        :pswitch_1c3  #00000002
        :pswitch_1b9  #00000003
        :pswitch_29b  #00000004
        :pswitch_179  #00000005
        :pswitch_108  #00000006
        :pswitch_9d  #00000007
        :pswitch_77  #00000008
        :pswitch_51  #00000009
        :pswitch_12  #0000000a
    .end packed-switch
.end method
