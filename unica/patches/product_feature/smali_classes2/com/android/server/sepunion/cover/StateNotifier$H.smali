.class public final Lcom/android/server/sepunion/cover/StateNotifier$H;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6d

    if-eq v0, v2, :cond_a

    goto/16 :goto_b7

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_11

    goto :goto_12

    :cond_11
    move v2, v1

    :goto_12
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_15
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_1c
    if-ge v4, v3, :cond_2c

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    invoke-virtual {v5, v2}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_1c

    :catchall_2a
    move-exception p0

    goto :goto_6b

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2a

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_30
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_36
    if-ge v1, v3, :cond_46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    invoke-virtual {v4, v2}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_36

    :catchall_44
    move-exception p0

    goto :goto_69

    :cond_46
    monitor-exit p1
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_44

    const-string p1, "CoverManager_"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "send cover attach : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_b7

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :goto_69
    :try_start_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_44

    throw p0

    :goto_6b
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_2a

    throw p0

    :cond_6d
    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$H;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_78

    goto :goto_79

    :cond_78
    move v2, v1

    :goto_79
    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_7c
    iget-object v3, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_82
    if-ge v1, v4, :cond_95

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;

    invoke-virtual {v5, v0}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    invoke-virtual {v5, v2}, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_82

    :catchall_93
    move-exception p0

    goto :goto_b8

    :cond_95
    monitor-exit p1
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_93

    const-string p1, "CoverManager_"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "send cover switch : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_b7

    iget-object p0, p0, Lcom/android/server/sepunion/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_b7
    :goto_b7
    return-void

    :goto_b8
    :try_start_b8
    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_93

    throw p0
.end method
