.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;II)V
    .registers 4

    iput p3, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager;

    iput p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_1cc

    iget-object v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager;

    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$1:I

    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    invoke-virtual {v2, p0}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object v4

    if-nez v4, :cond_1b

    monitor-exit v3

    goto/16 :goto_118

    :catchall_17
    move-exception v0

    move-object p0, v0

    goto/16 :goto_119

    :cond_1b
    invoke-virtual {v4}, Lcom/android/server/people/data/UserData;->loadUserData()V

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telecom/TelecomManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    if-eqz v5, :cond_36

    new-instance v6, Landroid/os/UserHandle;

    iget v7, v4, Lcom/android/server/people/data/UserData;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    :cond_36
    move-object v5, v1

    :goto_37
    iput-object v5, v4, Lcom/android/server/people/data/UserData;->mDefaultDialer:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget v6, v4, Lcom/android/server/people/data/UserData;->mUserId:I

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_4e

    :cond_4d
    move-object v5, v1

    :goto_4e
    iput-object v5, v4, Lcom/android/server/people/data/UserData;->mDefaultSmsApp:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    invoke-direct {v9, v2, p0}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;-><init>(Lcom/android/server/people/data/DataManager;I)V

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x78

    invoke-interface/range {v8 .. v14}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v11, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_94

    new-instance v9, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;

    invoke-direct {v9, v2, p0}, Lcom/android/server/people/data/DataManager$PerUserBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;I)V

    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v4, p0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_94
    new-instance v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v5, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v4, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-direct {v4, v2, p0}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;I)V

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_b7
    .catchall {:try_start_e .. :try_end_b7} :catchall_17

    :try_start_b7
    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/server/people/data/DataManager;

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5, v6, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c5} :catch_c5
    .catchall {:try_start_b7 .. :try_end_c5} :catchall_17

    :catch_c5
    :try_start_c5
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e0

    new-instance v4, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;

    invoke-direct {v4, v2}, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;-><init>(Lcom/android/server/people/data/DataManager;)V

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    iget-object v1, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e0
    if-nez p0, :cond_112

    new-instance v1, Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/android/server/people/data/DataManager$CallLogContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    iput-object v1, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    iget-object v1, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    invoke-virtual {v1, v4, v0, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    iput-object v0, v2, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    invoke-virtual {v0, v1, v7, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_112
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/people/data/DataMaintenanceService;->scheduleJob(Landroid/content/Context;I)V

    monitor-exit v3

    :goto_118
    return-void

    :goto_119
    monitor-exit v3
    :try_end_11a
    .catchall {:try_start_c5 .. :try_end_11a} :catchall_17

    throw p0

    :pswitch_11b  #0x0
    iget-object v2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager;

    iget p0, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;->f$1:I

    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_122
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/people/data/UserData;

    if-eqz v4, :cond_1c7

    iget-boolean v4, v4, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    if-eqz v4, :cond_132

    goto/16 :goto_1c7

    :cond_132
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_150

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mUsageStatsQueryFutures:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v5, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto :goto_150

    :catchall_14c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1c9

    :cond_150
    :goto_150
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_165

    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/people/data/DataManager;->mBroadcastReceivers:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_165
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_178

    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContactsContentObservers:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_178
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0
    :try_end_17e
    .catchall {:try_start_122 .. :try_end_17e} :catchall_14c

    if-ltz v0, :cond_18b

    :try_start_180
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_18b
    .catch Landroid/os/RemoteException; {:try_start_180 .. :try_end_18b} :catch_18b
    .catchall {:try_start_180 .. :try_end_18b} :catchall_14c

    :catch_18b
    :cond_18b
    :try_start_18b
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_19e

    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mPackageMonitors:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_19e
    if-nez p0, :cond_1b2

    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    if-eqz v0, :cond_1a9

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    :cond_1a9
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mMmsSmsContentObserver:Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;

    if-eqz v0, :cond_1b2

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, v2, Lcom/android/server/people/data/DataManager;->mCallLogContentObserver:Lcom/android/server/people/data/DataManager$CallLogContentObserver;

    :cond_1b2
    iget-object v0, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/people/data/DataMaintenanceService;->$r8$clinit:I

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const v1, 0xc315bd7

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    monitor-exit v3

    goto :goto_1c8

    :cond_1c7
    :goto_1c7
    monitor-exit v3

    :goto_1c8
    return-void

    :goto_1c9
    monitor-exit v3
    :try_end_1ca
    .catchall {:try_start_18b .. :try_end_1ca} :catchall_14c

    throw p0

    nop

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_11b  #00000000
    .end packed-switch
.end method
