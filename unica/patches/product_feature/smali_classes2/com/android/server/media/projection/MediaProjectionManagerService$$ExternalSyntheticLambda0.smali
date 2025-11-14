.class public final synthetic Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v0, "Stopping MediaProjection due to reason: "

    const-string/jumbo v1, "Scheduling event: "

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/server/media/projection/MediaProjectionStopController;->isExempt(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaProjectionStopController:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    new-instance v0, Landroid/media/projection/MediaProjectionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v5, v6, v7}, Landroid/media/projection/MediaProjectionEvent;-><init>(IJ)V

    const-string/jumbo v5, "MediaProjectionManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionEvent;->getEventType()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for reason: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p1, v3, :cond_2

    if-eq p1, v4, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "STOP_REASON_CALL_END"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "STOP_REASON_KEYGUARD"

    :goto_0
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/MediaProjectionEvent;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "MediaProjectionManagerService"

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    const-string p1, ""

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "STOP_REASON_CALL_END"

    goto :goto_1

    :cond_5
    const-string/jumbo p1, "STOP_REASON_KEYGUARD"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop(I)V

    :goto_2
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
