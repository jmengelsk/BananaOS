.class public final Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

.field public final REMINDER_TYPE:Landroid/net/Uri;

.field public final TIME_KEY:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$2;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "notification_reminder_selectable"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_type"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_app_list"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_vibrate"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    const-string/jumbo p1, "time_key"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public final update(Landroid/net/Uri;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "update uri: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotificationReminder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz p1, :cond_2a

    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    :cond_2a
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v6, "notification_reminder_selectable"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_37

    move v6, v2

    goto :goto_38

    :cond_37
    move v6, v3

    :goto_38
    iput-boolean v6, v5, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update mEnableReminder: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-boolean v6, v6, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    invoke-static {v1, v5, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-boolean v6, v5, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-eqz v6, :cond_5d

    iget-object v6, v5, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_60

    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    goto :goto_60

    :cond_5d
    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    :cond_60
    :goto_60
    if-eqz p1, :cond_6a

    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    :cond_6a
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v6, "notification_reminder_vibrate"

    invoke-static {v0, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_76

    goto :goto_77

    :cond_76
    move v2, v3

    :goto_77
    iput-boolean v2, v5, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update mEnableVibrate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-boolean v3, v3, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    invoke-static {v1, v2, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_88
    if-eqz p1, :cond_92

    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    :cond_92
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v3, "time_key"

    const/16 v5, 0xb4

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, v2, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update mInterval: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget v3, v3, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz p1, :cond_bd

    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object v2, v2, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    new-instance v3, Lcom/android/server/notification/NotificationReminder$1$1;

    const/4 v5, 0x1

    invoke-direct {v3, v5, p0}, Lcom/android/server/notification/NotificationReminder$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_bd
    if-eqz p1, :cond_c7

    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    :cond_c7
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v3, "notification_reminder_type"

    const/4 v5, -0x1

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, v2, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update mReminderType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget v3, v3, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_e2
    if-eqz p1, :cond_ee

    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ed

    goto :goto_ee

    :cond_ed
    return-void

    :cond_ee
    :goto_ee
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v2, "notification_reminder_app_list"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "update mAppSettingList: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
