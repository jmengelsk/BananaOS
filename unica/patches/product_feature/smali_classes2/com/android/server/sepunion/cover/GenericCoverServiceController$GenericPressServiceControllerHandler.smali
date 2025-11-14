.class public final Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/GenericCoverServiceController;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    if-eq v0, v1, :cond_a

    goto/16 :goto_90

    :cond_a
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_19
    :goto_19
    if-ge v2, v3, :cond_2e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    iget v5, v4, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_19

    invoke-virtual {v4, v6, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_19

    :catchall_2c
    move-exception p0

    goto :goto_4c

    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_2c

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_35
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception p0

    const-string p1, "CoverManager_GenericCoverServiceController"

    const-string/jumbo v2, "Shouldn\'t happen"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    :goto_48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_90

    :goto_4c
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_2c

    throw p0

    :cond_4e
    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->this$0:Lcom/android/server/sepunion/cover/GenericCoverServiceController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_57
    iget-object v3, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_5d
    :goto_5d
    if-ge v2, v4, :cond_73

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    iget v6, v5, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_5d

    invoke-virtual {v5, v1, p1}, Lcom/android/server/sepunion/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    goto :goto_5d

    :catchall_71
    move-exception p0

    goto :goto_91

    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_57 .. :try_end_74} :catchall_71

    iget-object p0, p0, Lcom/android/server/sepunion/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_7a
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_83
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_83} :catch_84

    goto :goto_8d

    :catch_84
    move-exception p0

    const-string p1, "CoverManager_GenericCoverServiceController"

    const-string/jumbo v2, "Shouldn\'t happen"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8d
    :goto_8d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_90
    return-void

    :goto_91
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_71

    throw p0
.end method
