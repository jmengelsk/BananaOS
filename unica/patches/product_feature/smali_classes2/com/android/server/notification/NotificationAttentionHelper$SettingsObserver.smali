.class public final Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "led_indicator_missed_event"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "notification_cooldown_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo v0, "notification_cooldown_all"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo v0, "notification_cooldown_vibrate_unlocked"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .registers 5

    sget-object p1, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object p1, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "led_indicator_missed_event"

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    iget-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-object p1, p1, Lcom/android/server/notification/NotificationAttentionHelper;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_21
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    if-eq p2, v1, :cond_2f

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mNotificationPulseEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_31

    :cond_2f
    :goto_2f
    monitor-exit p1

    goto :goto_33

    :goto_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_2d

    throw p0

    :cond_33
    :goto_33
    return-void
.end method
