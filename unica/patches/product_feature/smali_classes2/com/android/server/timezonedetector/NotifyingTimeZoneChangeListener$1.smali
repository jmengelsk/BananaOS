.class public final Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Unknown intent action received: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TimeZoneChangeTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    const-string/jumbo p1, "user_id"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "change_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    sget v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_42
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v3, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    iget-boolean v2, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    if-eqz v2, :cond_4f

    move v2, v4

    goto :goto_50

    :cond_4f
    move v2, v1

    :goto_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_8d

    if-eqz v2, :cond_8c

    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_56
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget v2, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-ne p1, v2, :cond_5d

    move v1, v4

    :cond_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_89

    if-nez v1, :cond_61

    goto :goto_8c

    :cond_61
    iget-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter p1

    :try_start_64
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    if-eqz p0, :cond_85

    if-eqz p2, :cond_74

    monitor-exit p1

    return-void

    :catchall_72
    move-exception p0

    goto :goto_87

    :cond_74
    iget p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mStatus:I

    if-eqz p2, :cond_7a

    monitor-exit p1

    return-void

    :cond_7a
    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mStatus:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mSignalType:I

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mEvent:Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_85
    monitor-exit p1

    return-void

    :goto_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_64 .. :try_end_88} :catchall_72

    throw p0

    :catchall_89
    move-exception p0

    :try_start_8a
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw p0

    :cond_8c
    :goto_8c
    return-void

    :catchall_8d
    move-exception p0

    :try_start_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw p0
.end method
