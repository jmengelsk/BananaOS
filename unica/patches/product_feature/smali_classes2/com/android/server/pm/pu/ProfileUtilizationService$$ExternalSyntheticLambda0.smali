.class public final synthetic Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/pu/ProfileUtilizationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/ProfileUtilizationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/pu/ProfileUtilizationService;

    sget-object v0, Lcom/android/server/pm/pu/ProfileUtilizationService;->TAG_PU:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PU"

    const-string/jumbo v1, "Start utilizing profiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "PU_DexoptTrigger"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PU_Storage"

    if-nez v0, :cond_32

    const-string/jumbo v3, "Stored sessionId not found"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_32
    const-string/jumbo v3, "Load sessionId "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mSessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mPolicyPackages:Lcom/android/server/pm/pu/ScpmPolicyPackages;

    iget-object v0, v0, Lcom/android/server/pm/pu/ScpmPolicyPackages;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "packages-9a07"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PU_scpm"

    const/4 v2, 0x0

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_7c

    :cond_58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_5d
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v2

    :goto_63
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_84

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_70} :catch_73

    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    :catch_73
    move-exception v0

    const-string v3, "Failed to parse json string of SCPM packages"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_84

    :cond_7c
    :goto_7c
    const-string/jumbo v0, "There are no SCPM packages stored"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object v0, v0, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "apps_limit_id"

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "PU_Storage"

    if-ne v0, v4, :cond_9c

    const-string v0, "Apps limit number was not stored, fallback to default"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    :cond_9c
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Apps limit number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    const-string/jumbo v0, "PU"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Limit including scpm: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v4, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    invoke-virtual {v4}, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->loadAppsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_e0

    new-instance v3, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_13c

    :cond_e0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda2;

    invoke-direct {v8, v5}, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v4, v8}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v4

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_123

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pu/App;

    if-nez v9, :cond_11c

    new-instance v9, Lcom/android/server/pm/pu/App;

    invoke-direct {v9, v6, v7, v4}, Lcom/android/server/pm/pu/App;-><init>(JLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    :cond_11c
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ff

    :cond_123
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/pu/ProfileUtilizationService$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v8

    :goto_13c
    invoke-direct {v0, p0, v4, v1}, Lcom/android/server/pm/pu/HotAppsWrapper;-><init>(Lcom/android/server/pm/pu/ProfileUtilizationService;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    iput-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    const-string/jumbo v0, "PU_DexoptTrigger"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v4, v4, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " apps, start dexopting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_16e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d1

    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v3

    :catch_177
    :goto_177
    :try_start_177
    iget-object v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    sget v5, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I
    :try_end_181
    .catchall {:try_start_177 .. :try_end_181} :catchall_189

    if-ne v4, v5, :cond_18b

    :try_start_183
    iget-object v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_188
    .catch Ljava/lang/InterruptedException; {:try_start_183 .. :try_end_188} :catch_177
    .catchall {:try_start_183 .. :try_end_188} :catchall_189

    goto :goto_177

    :catchall_189
    move-exception p0

    goto :goto_1cf

    :cond_18b
    :try_start_18b
    monitor-exit v3
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_189

    iget-object v4, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    monitor-enter v4

    :try_start_18f
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pu/App;

    iget-object v5, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-virtual {v5}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    iget-object v5, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v5
    :try_end_1a0
    .catchall {:try_start_18f .. :try_end_1a0} :catchall_1c8

    :try_start_1a0
    iget-object v8, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v8, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    if-eqz v8, :cond_1c5

    iget-object v8, v3, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    sget-object v9, Lcom/android/server/pm/pu/App$State;->OPTIMIZING:Lcom/android/server/pm/pu/App$State;

    if-ne v8, v9, :cond_1b2

    goto :goto_1c5

    :cond_1b2
    new-instance v8, Landroid/os/CancellationSignal;

    invoke-direct {v8}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v8, v3, Lcom/android/server/pm/pu/App;->mCancellationSignal:Landroid/os/CancellationSignal;

    iput-object v9, v3, Lcom/android/server/pm/pu/App;->mState:Lcom/android/server/pm/pu/App$State;

    iget-object v8, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v3}, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/DexoptTrigger;Lcom/android/server/pm/pu/App;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1c5
    :goto_1c5
    monitor-exit v5
    :try_end_1c6
    .catchall {:try_start_1a0 .. :try_end_1c6} :catchall_1ca

    :try_start_1c6
    monitor-exit v4
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1c8

    goto :goto_16e

    :catchall_1c8
    move-exception p0

    goto :goto_1cd

    :catchall_1ca
    move-exception p0

    :try_start_1cb
    monitor-exit v5
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    :try_start_1cc
    throw p0

    :goto_1cd
    monitor-exit v4
    :try_end_1ce
    .catchall {:try_start_1cc .. :try_end_1ce} :catchall_1c8

    throw p0

    :goto_1cf
    :try_start_1cf
    monitor-exit v3
    :try_end_1d0
    .catchall {:try_start_1cf .. :try_end_1d0} :catchall_189

    throw p0

    :cond_1d1
    iget-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    monitor-enter v0

    :catch_1d4
    :goto_1d4
    :try_start_1d4
    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3
    :try_end_1dc
    .catchall {:try_start_1d4 .. :try_end_1dc} :catchall_1e4

    if-nez v3, :cond_1e7

    :try_start_1de
    iget-object v3, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1e3
    .catch Ljava/lang/InterruptedException; {:try_start_1de .. :try_end_1e3} :catch_1d4
    .catchall {:try_start_1de .. :try_end_1e3} :catchall_1e4

    goto :goto_1d4

    :catchall_1e4
    move-exception p0

    goto/16 :goto_386

    :cond_1e7
    :try_start_1e7
    iput-boolean v2, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    monitor-exit v0
    :try_end_1ea
    .catchall {:try_start_1e7 .. :try_end_1ea} :catchall_1e4

    iget-object v0, v1, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-string/jumbo v0, "PU"

    const-string v1, "Finish utilizing profiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishTimeMs:J

    const-string v0, "Finished"

    iput-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mFinishStatus:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mController:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object v2, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object v3, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v3, v3, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_215

    goto :goto_225

    :cond_215
    :try_start_215
    iget-object v2, v2, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalListener:Lcom/android/server/pm/pu/DeviceStatusWatcher$1;

    invoke-interface {v1, v2}, Landroid/os/IThermalService;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    :try_end_21a
    .catch Landroid/os/RemoteException; {:try_start_215 .. :try_end_21a} :catch_21b

    goto :goto_225

    :catch_21b
    move-exception v1

    const-string/jumbo v2, "PU_StatusWatcher"

    const-string/jumbo v3, "Thermal unregistration failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_225
    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    iget-object v2, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v2, "Service"

    invoke-virtual {p0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v2, "Watcher"

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-virtual {v0}, Lcom/android/server/pm/pu/DexoptTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Trigger"

    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lcom/android/server/pm/pu/SummaryLogger;

    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    const-string v2, "002"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pu/AbstractLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pu/ProfileUtilizationService;->collectAndSendPuData(Lcom/android/server/pm/pu/AbstractLogger;)V

    iget-object v0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    iget-object v0, v0, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_282
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_385

    new-instance v1, Lcom/android/server/pm/pu/PackageSummaryLogger;

    iget-object v2, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    const-string v3, "004"

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/pu/AbstractLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "pu_session_id"

    iget-object v3, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pu/App;

    iget-object v3, v2, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "pkg_name"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "pkg_dexopt_status"

    invoke-virtual {v2}, Lcom/android/server/pm/pu/App;->dexoptResultStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/server/pm/pu/App;->mResult:Lcom/android/server/art/model/DexoptResult;

    if-nez v3, :cond_2b7

    move-wide v4, v6

    goto :goto_2e7

    :cond_2b7
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    :cond_2c1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    invoke-virtual {v8}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2d5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    invoke-virtual {v9}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getSizeBytes()J

    move-result-wide v9

    add-long/2addr v4, v9

    goto :goto_2d5

    :cond_2e7
    :goto_2e7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "pkg_arts_size"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mCancelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_cancel"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/server/pm/pu/App;->getDex2oatWallTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v8, 0x408f400000000000L  # 1000.0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "pkg_dex2oat_took_sec"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, v2, Lcom/android/server/pm/pu/App;->mWastedTimeMs:J

    long-to-double v3, v3

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string/jumbo v4, "pkg_dex2oat_took_cancel_sec"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v3, v2, Lcom/android/server/pm/pu/App;->weight:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "pkg_gen_prior"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mResultingPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_gen_pos"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mInTotalTimeListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_tt_pos"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mInTotalLaunchListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_tl_pos"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mInSameDayTimeListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_sdtt_pos"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mInSameDayLaunchListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_sdtl_pos"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v2, Lcom/android/server/pm/pu/App;->mInSameTimeLaunchListPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "pkg_stl_pos"

    invoke-virtual {v1, v4, v3}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v2, Lcom/android/server/pm/pu/App;->mInRecentsPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "pkg_rec_pos"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/server/pm/pu/AbstractLogger;->sendEvent()V

    goto/16 :goto_282

    :cond_385
    return-void

    :goto_386
    :try_start_386
    monitor-exit v0
    :try_end_387
    .catchall {:try_start_386 .. :try_end_387} :catchall_1e4

    throw p0
.end method
