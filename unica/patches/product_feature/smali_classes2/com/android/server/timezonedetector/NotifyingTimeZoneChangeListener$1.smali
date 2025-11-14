.class public final Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

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

    :cond_0
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

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-boolean v3, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationsSupported:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mNotificationTrackingSupported:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget v2, v2, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-ne p1, v2, :cond_2

    move v1, v4

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_4

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mStatus:I

    if-eqz p2, :cond_5

    monitor-exit p1

    return-void

    :cond_5
    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mStatus:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mSignalType:I

    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->mEvent:Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    :goto_2
    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
