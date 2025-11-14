.class public final Lcom/android/server/remoteappmode/ProximityManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mPackageName:Ljava/lang/String;

.field public proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

.field public sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static -$$Nest$msendIntent(Lcom/android/server/remoteappmode/ProximityManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized disableSendingUserPresentIntent()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ProximityManager"

    const-string/jumbo v1, "unregisterProximityReceiver()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ltw_proximity_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    iget-object v1, v1, Lcom/android/server/remoteappmode/ProximityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "ProximityManager"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final enableSendingUserPresentIntent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "ProximityManager"

    const-string/jumbo v1, "registerProximityReceiver()"

    invoke-static {v0, v1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "target_package_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "ltw_proximity_enabled"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->registerBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method public final ensureInitSharedPreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "remote_app_mode_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public final getExpiredTime()J
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "ltw_proximity_expired_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final isValid()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->ensureInitSharedPreference()V

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ltw_proximity_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    const/4 v1, 0x1

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->getExpiredTime()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public final declared-synchronized registerBroadcastReceiver()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;-><init>(Lcom/android/server/remoteappmode/ProximityManager;)V

    iput-object v2, p0, Lcom/android/server/remoteappmode/ProximityManager;->proximityReceiver:Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/remoteappmode/ProximityManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/remoteappmode/ProximityManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
