.class public final Lcom/samsung/android/server/battery/WatchBatteryManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmRegistered:Z

.field public mAodShowState:I

.field public mConnected:Z

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mProviderUriMap:Ljava/util/HashMap;

.field public mRegistered:Z

.field public mScreenOn:Z

.field public mSyncState:I

.field public mWatchPackageMap:Ljava/util/HashMap;


# virtual methods
.method public final aodShowStateChanged(I)V
    .registers 14

    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    const/4 v0, 0x1

    if-nez p1, :cond_2a

    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    if-nez p1, :cond_2a

    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-ne p1, v0, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 p1, 0x3c

    int-to-long v3, p1

    const-wide/32 v5, 0xea60

    mul-long/2addr v3, v5

    add-long v7, v3, v1

    iget-object v5, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    iget-object v11, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    const-string/jumbo v9, "WatchBatteryManagerAlarm"

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    :cond_29
    return-void

    :cond_2a
    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    if-ne p1, v0, :cond_38

    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    :cond_38
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    return-void
.end method

.method public final checkSyncStart()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkSyncStart() / mSyncState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAodShowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    const-string/jumbo v2, "WatchBatteryManager"

    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_45

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    if-ne v0, v1, :cond_52

    :cond_45
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    if-eqz v0, :cond_52

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-nez v0, :cond_52

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    iput v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_52
    return-void
.end method

.method public final checkSyncStop()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkSyncStop() / mSyncState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / mAodShowState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / mConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    const-string/jumbo v2, "WatchBatteryManager"

    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->requestBatteryDataSync(I)V

    iput v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_43
    return-void
.end method

.method public final displayStateChanged(Z)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    iget-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    if-ne p1, v1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    return-void

    :cond_17
    iput-boolean v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAodShowState:I

    if-nez p1, :cond_3d

    iget p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    if-ne p1, v1, :cond_3d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 p1, 0x3c

    int-to-long v4, p1

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    add-long v8, v4, v2

    iget-object v6, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v11, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmListener:Lcom/samsung/android/server/battery/WatchBatteryManager$ScreenOffAlarmListener;

    iget-object v12, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    const-string/jumbo v10, "WatchBatteryManagerAlarm"

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mAlarmRegistered:Z

    :cond_3d
    return-void
.end method

.method public final notifyPackageRegistered(Z)V
    .registers 5

    const-string/jumbo v0, "isRegistered: "

    const-string v1, "/ mSyncState:"

    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ mScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mScreenOn:Z

    const-string/jumbo v2, "WatchBatteryManager"

    invoke-static {v2, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStart()V

    return-void

    :cond_24
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mRegistered:Z

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/WatchBatteryManager;->checkSyncStop()V

    return-void
.end method

.method public final removeWatchPackageInfo(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_38

    :cond_13
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_11

    iget-object v1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mProviderUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :catchall_25
    move-exception p0

    goto :goto_36

    :cond_27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_25

    iget-object p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mWatchPackageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_35

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mConnected:Z

    iput p1, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mSyncState:I

    :cond_35
    return-void

    :goto_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_25

    throw p0

    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_11

    throw p0
.end method

.method public final requestBatteryDataSync(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestBatteryDataSync syncData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WatchBatteryManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/server/battery/WatchBatteryManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager$1;-><init>(Lcom/samsung/android/server/battery/WatchBatteryManager;I)V

    iget-object p0, p0, Lcom/samsung/android/server/battery/WatchBatteryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
