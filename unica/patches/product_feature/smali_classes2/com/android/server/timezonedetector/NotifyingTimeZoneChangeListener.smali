.class public Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I

.field static final AUTO_REVERT_THRESHOLD:J


# instance fields
.field public mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public final mConfigurationLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsRegistered:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance p1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    check-cast p3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {p3, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLastTimeZoneChangeRecord()Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleConfigurationUpdate()V
    .locals 13

    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v4, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-boolean v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v3, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v4, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-nez v2, :cond_3

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    iget-object v11, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x4

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    :cond_3
    :goto_2
    if-eqz v0, :cond_7

    iget v2, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-eq v2, v3, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v7, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    if-eqz v7, :cond_5

    iget-boolean v4, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    :try_start_8
    iget v0, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v2, "TimeZoneDetector"

    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0

    :cond_7
    :goto_4
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p0

    :goto_5
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0
.end method
