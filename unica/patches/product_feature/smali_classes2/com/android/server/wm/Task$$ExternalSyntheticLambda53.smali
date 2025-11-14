.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda53;->f$0:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    const-string/jumbo v0, "sendApplicationFocusGain sent APP_STATE_FOCUS_GAIN for "

    const-string/jumbo v1, "sendApplicationFocusGain sent APP_STATE_FOCUS_LOSS for "

    const-string/jumbo v2, "sendApplicationFocusGain sent APP_STATE_START for "

    const-string/jumbo v3, "sendApplicationFocusGain("

    const-class v4, Lcom/android/server/am/AppStateBroadcaster;

    monitor-enter v4

    :try_start_13
    sget-boolean v5, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    if-eqz v5, :cond_2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto/16 :goto_ca

    :cond_2f
    :goto_2f
    const-string/jumbo v3, "com.android.systemui"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_2c

    if-eqz v3, :cond_3a

    monitor-exit v4

    return-void

    :cond_3a
    :try_start_3a
    sget-boolean v3, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    if-eqz v3, :cond_c8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c8

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ApplicationState;

    if-nez v3, :cond_6a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v5, :cond_61

    const-string v3, "AppStateBroadcaster"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    const-string/jumbo v2, "START"

    invoke-static {p0, v6, v7, v2}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;JLjava/lang/String;)V

    const/16 v2, 0x32

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v2, v2

    add-long/2addr v6, v2

    sget-object v8, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    if-eqz v8, :cond_7b

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c8

    :cond_7b
    sget-object v8, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9f

    sget-object v8, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    const-string v9, "FOCUS_LOSS"

    invoke-static {v8, v6, v7, v9}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;JLjava/lang/String;)V

    if-eqz v5, :cond_9f

    const-string v6, "AppStateBroadcaster"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    const-string v1, "FOCUS_GAIN"

    invoke-static {p0, v6, v7, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;JLjava/lang/String;)V

    if-eqz v5, :cond_c6

    const-string v1, "AppStateBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", old focus package was "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;
    :try_end_c8
    .catchall {:try_start_3a .. :try_end_c8} :catchall_2c

    :cond_c8
    monitor-exit v4

    return-void

    :goto_ca
    :try_start_ca
    monitor-exit v4
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_2c

    throw p0
.end method
