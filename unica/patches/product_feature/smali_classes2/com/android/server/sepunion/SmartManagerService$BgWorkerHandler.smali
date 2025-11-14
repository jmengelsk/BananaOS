.class public Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 15

    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "msg : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v2, "SmartManagerService"

    invoke-static {v0, v1, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    if-eq v0, v1, :cond_18f

    const/16 v1, 0x14

    const-string/jumbo v3, "startCheck"

    const-string/jumbo v4, "pkg_name"

    const-string/jumbo v5, "SmartManager app doesn\'t support payment policy, please check"

    const/4 v6, 0x0

    if-eq v0, v1, :cond_136

    const/16 v1, 0x28

    if-eq v0, v1, :cond_d4

    const/16 v1, 0x32

    if-eq v0, v1, :cond_b5

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_96

    const/16 v1, 0x46

    if-eq v0, v1, :cond_60

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3e

    goto/16 :goto_18e

    :cond_3e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_45
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->SM_PROVIDER_URI:Landroid/net/Uri;

    const-string/jumbo v1, "updatePrivacyLockingState"

    invoke-virtual {p0, v0, v1, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_55} :catch_57

    goto/16 :goto_18e

    :catch_57
    move-exception p0

    const-string/jumbo p1, "notify to smart manager has exception "

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18e

    :cond_60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_63
    new-instance p1, Lcom/android/server/sepunion/SmartManagerService$ProtectedAppChangedObserver;

    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mHandler:Lcom/android/server/sepunion/SmartManagerService$BgWorkerHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/sepunion/SmartManagerService$ProtectedAppChangedObserver;-><init>(Lcom/android/server/sepunion/SmartManagerService;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_SWITCH_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_83} :catch_84

    goto :goto_8b

    :catch_84
    move-exception p1

    const-string/jumbo v0, "registerObserver cause exception"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadProtectedAppSet()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadImportantAppComponentList()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->registerWatcherForImportantComponentList()V

    goto/16 :goto_18e

    :cond_96
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_9d
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onUserAction"

    invoke-virtual {p0, v0, v1, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_ad} :catch_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_ad} :catch_af

    goto/16 :goto_18e

    :catch_af
    move-exception p0

    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18e

    :cond_b5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_bc
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    const-string/jumbo v1, "onPkgChanged"

    invoke-virtual {p0, v0, v1, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_cc} :catch_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bc .. :try_end_cc} :catch_ce

    goto/16 :goto_18e

    :catch_ce
    move-exception p0

    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18e

    :cond_d4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_db
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v11, 0xbb8

    cmp-long v4, v7, v11

    if-gez v4, :cond_111

    const-string/jumbo p0, "avoid repeat check in 3 seconds"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18e

    :catch_10f
    move-exception p0

    goto :goto_132

    :cond_111
    iget-object v4, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppLastCheckTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/server/sepunion/SmartManagerService;->getPkgUid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SmartManagerService;->isProtectedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v3, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_131
    .catch Ljava/lang/IllegalArgumentException; {:try_start_db .. :try_end_131} :catch_10f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_db .. :try_end_131} :catch_10f

    goto :goto_18e

    :goto_132
    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18e

    :cond_136
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_140

    goto :goto_18e

    :cond_140
    const-string/jumbo v0, "pid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v7, "uid"

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/sepunion/SmartManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    if-nez v7, :cond_15d

    goto :goto_18e

    :cond_15d
    invoke-virtual {v7, v0}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/server/sepunion/SmartManagerService;->getPkgUid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SmartManagerService;->isProtectedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_170

    goto :goto_18e

    :cond_170
    iget-object v1, p0, Lcom/android/server/sepunion/SmartManagerService;->mImportantAppSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_179

    goto :goto_18e

    :cond_179
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_17c
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->createContextAsUser()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/server/sepunion/SmartManagerService;->PAYMENT_APP_CHECK_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v3, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_189
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17c .. :try_end_189} :catch_18a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17c .. :try_end_189} :catch_18a

    goto :goto_18e

    :catch_18a
    move-exception p0

    invoke-static {v2, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18e
    :goto_18e
    return-void

    :cond_18f
    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadProtectedAppSet()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->loadImportantAppComponentList()V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SmartManagerService;->registerWatcherForImportantComponentList()V

    return-void
.end method
