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
    .registers 2

    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V
    .registers 8

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
    .registers 2

    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final handleConfigurationUpdate()V
    .registers 14

    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_54

    :try_start_12
    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v4, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_20

    iget-boolean v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    if-eqz v3, :cond_20

    move v3, v6

    goto :goto_21

    :cond_20
    move v3, v5

    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_9f

    if-eqz v3, :cond_5b

    :try_start_24
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_54

    :try_start_27
    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v4, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    if-eqz v4, :cond_33

    iget-boolean v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    if-eqz v3, :cond_33

    move v3, v6

    goto :goto_34

    :cond_33
    move v3, v5

    :goto_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_57

    if-eqz v3, :cond_5b

    :try_start_37
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-nez v2, :cond_68

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
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_54

    goto :goto_68

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto :goto_a3

    :catchall_57
    move-exception v0

    move-object p0, v0

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_57

    :try_start_5a
    throw p0

    :cond_5b
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    :cond_68
    :goto_68
    if-eqz v0, :cond_9d

    iget v2, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-eq v2, v3, :cond_74

    move v2, v6

    goto :goto_75

    :cond_74
    move v2, v5

    :goto_75
    iget-object v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_54

    :try_start_78
    iget-object v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v7, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    if-eqz v7, :cond_83

    iget-boolean v4, v4, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsEnabledSetting:Z

    if-eqz v4, :cond_83

    move v5, v6

    :cond_83
    monitor-exit v3
    :try_end_84
    .catchall {:try_start_78 .. :try_end_84} :catchall_99

    if-eqz v5, :cond_88

    if-eqz v2, :cond_9d

    :cond_88
    :try_start_88
    iget v0, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v2, "TimeZoneDetector"

    const/16 v3, 0x3e9

    invoke-virtual {p0, v2, v3, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_54

    goto :goto_9d

    :catchall_99
    move-exception v0

    move-object p0, v0

    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_99

    :try_start_9c
    throw p0

    :cond_9d
    :goto_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_9c .. :try_end_9e} :catchall_54

    return-void

    :catchall_9f
    move-exception v0

    move-object p0, v0

    :try_start_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_9f

    :try_start_a2
    throw p0

    :goto_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_54

    throw p0
.end method
