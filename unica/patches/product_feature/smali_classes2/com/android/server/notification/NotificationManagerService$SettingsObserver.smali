.class public final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final ALERTONCALL_MODE_URI:Landroid/net/Uri;

.field public final BG_ACTIVITIES_URI:Landroid/net/Uri;

.field public final DISABLE_HUN_FOR_CALLUI_URI:Landroid/net/Uri;

.field public final FLOATING_NOTI_PACKAGE_LIST_URI:Landroid/net/Uri;

.field public final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Landroid/net/Uri;

.field public final LOCK_SCREEN_SHOW_NOTIFICATIONS:Landroid/net/Uri;

.field public final MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

.field public final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field public final NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

.field public final NOTIFICATION_EDGE_LIGHTING:Landroid/net/Uri;

.field public final NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

.field public final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field public final NOTIFICATION_SHOW_MEDIA_ON_QUICK_SETTINGS_URI:Landroid/net/Uri;

.field public final NOTIFICATION_VIBRATION_SEP_URI:Landroid/net/Uri;

.field public final OLD_NOTIFICATIONS_URI:Landroid/net/Uri;

.field public final PROMOTION_URI:Landroid/net/Uri;

.field public final REDACT_OTP_NOTIFICATIONS:Landroid/net/Uri;

.field public final SHOW_NOTIFICATION_SNOOZE:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "notification_badging"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const-string/jumbo p1, "notification_bubbles"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    const-string/jumbo p1, "max_notification_enqueue_rate"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    const-string/jumbo p1, "notification_history_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    const-string/jumbo p1, "qs_media_controls"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_SHOW_MEDIA_ON_QUICK_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "lock_screen_allow_private_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Landroid/net/Uri;

    const-string/jumbo p1, "lock_screen_show_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_SHOW_NOTIFICATIONS:Landroid/net/Uri;

    const-string/jumbo p1, "notification_vibration_sep_index"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATION_SEP_URI:Landroid/net/Uri;

    const-string/jumbo p1, "disable_hun_for_callui"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DISABLE_HUN_FOR_CALLUI_URI:Landroid/net/Uri;

    const-string/jumbo p1, "alertoncall_mode"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ALERTONCALL_MODE_URI:Landroid/net/Uri;

    const-string/jumbo p1, "floating_noti_package_list"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->FLOATING_NOTI_PACKAGE_LIST_URI:Landroid/net/Uri;

    const-string/jumbo p1, "show_notification_snooze"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SHOW_NOTIFICATION_SNOOZE:Landroid/net/Uri;

    const-string/jumbo p1, "redact_otp_notifications_from_untrusted_listeners"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->REDACT_OTP_NOTIFICATIONS:Landroid/net/Uri;

    const-string/jumbo p1, "noti_filter_promotion_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->PROMOTION_URI:Landroid/net/Uri;

    const-string/jumbo p1, "noti_filter_background_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    const-string/jumbo p1, "noti_filter_low_importance_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "noti_filter_old_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->OLD_NOTIFICATIONS_URI:Landroid/net/Uri;

    const-string/jumbo p1, "edge_lighting"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_EDGE_LIGHTING:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public final update(ILandroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_16

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_16

    :cond_15
    return-void

    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    const-string/jumbo p2, "notification_history_enabled"

    const/4 v1, 0x1

    invoke-static {v0, p2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$Archive;->updateHistoryEnabled(IZ)V

    return-void
.end method

.method public final update(Landroid/net/Uri;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_14
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v2, "max_notification_enqueue_rate"

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    :cond_21
    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_2b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    :cond_32
    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_3f

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_3f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    const-string/jumbo v4, "notification_bubbles"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v1, v4, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    goto :goto_59

    :cond_55
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v3, v4, Lcom/android/server/notification/NotificationManagerService;->mSmartPopupEnable:Z

    :cond_59
    :goto_59
    if-eqz p1, :cond_63

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_HISTORY_ENABLED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    :cond_63
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, p1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(ILandroid/net/Uri;)V

    goto :goto_6f

    :cond_81
    if-eqz p1, :cond_8b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_SHOW_MEDIA_ON_QUICK_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_92

    :cond_8b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    :cond_92
    if-eqz p1, :cond_9c

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    :cond_9c
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_ab

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    :cond_ab
    sget-boolean v5, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    if-eqz v5, :cond_d1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iget v7, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    if-eq v7, v5, :cond_cd

    move v7, v1

    goto :goto_ce

    :cond_cd
    move v7, v3

    :goto_ce
    iput v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    goto :goto_d2

    :cond_d1
    move v7, v3

    :goto_d2
    move v5, v3

    :goto_d3
    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_104

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    iget-object v9, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    iget-object v10, v4, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6, v1, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_f5

    move v10, v1

    goto :goto_f6

    :cond_f5
    move v10, v3

    :goto_f6
    iget-object v11, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v8, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v9, v10, :cond_ff

    move v8, v1

    goto :goto_100

    :cond_ff
    move v8, v3

    :goto_100
    or-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_d3

    :cond_104
    if-eqz v7, :cond_109

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_109
    if-eqz p1, :cond_113

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->LOCK_SCREEN_SHOW_NOTIFICATIONS:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15d

    :cond_113
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_122

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    :cond_122
    move v5, v3

    move v6, v5

    :goto_124
    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_158

    iget-object v7, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    iget-object v8, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    iget-object v9, v4, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "lock_screen_show_notifications"

    invoke-static {v9, v10, v1, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_149

    move v9, v1

    goto :goto_14a

    :cond_149
    move v9, v3

    :goto_14a
    iget-object v10, v4, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v8, v9, :cond_153

    move v7, v1

    goto :goto_154

    :cond_153
    move v7, v3

    :goto_154
    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_124

    :cond_158
    if-eqz v6, :cond_15d

    invoke-virtual {v4}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_15d
    sget-boolean v4, Lcom/android/server/notification/NmRune;->NM_POLICY_VIB_PICKER_CONCEPT:Z

    if-eqz v4, :cond_182

    if-eqz p1, :cond_16b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_VIBRATION_SEP_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_182

    :cond_16b
    :try_start_16b
    const-string/jumbo v4, "notification_vibration_sep_index"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    iput v4, v5, Lcom/android/server/notification/NotificationAttentionHelper;->mVibrationIndex:I
    :try_end_178
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_16b .. :try_end_178} :catch_179

    goto :goto_182

    :catch_179
    move-exception v4

    const-string/jumbo v5, "NotificationService"

    const-string v6, "Failed to find VibrationIndex Settings"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_182
    :goto_182
    if-eqz p1, :cond_18c

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->DISABLE_HUN_FOR_CALLUI_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19c

    :cond_18c
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "disable_hun_for_callui"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_199

    move v5, v1

    goto :goto_19a

    :cond_199
    move v5, v3

    :goto_19a
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mIsDisableHunByCall:Z

    :cond_19c
    if-eqz p1, :cond_1a6

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ALERTONCALL_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b8

    :cond_1a6
    const-string/jumbo v4, "alertoncall_mode"

    invoke-static {v0, v4, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_1b1

    move v4, v1

    goto :goto_1b2

    :cond_1b1
    move v4, v3

    :goto_1b2
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    iput-boolean v4, v5, Lcom/android/server/notification/NotificationAttentionHelper;->mIsEnableAlertByCall:Z

    :cond_1b8
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, v4, Lcom/android/server/notification/NotificationManagerService;->mMultiStarEnable:Z

    if-eqz v4, :cond_209

    if-eqz p1, :cond_1c8

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->FLOATING_NOTI_PACKAGE_LIST_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_209

    :cond_1c8
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "floating_noti_package_list"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1ff

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v7, v3

    :goto_1ed
    if-ge v7, v6, :cond_1ff

    aget-object v8, v4, v7

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1fc

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1fc
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ed

    :cond_1ff
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_209

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mFloatingPackageList:Ljava/util/ArrayList;

    :cond_209
    if-eqz p1, :cond_213

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->PROMOTION_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_235

    :cond_213
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "noti_filter_promotion_notification"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_220

    move v5, v1

    goto :goto_221

    :cond_220
    move v5, v3

    :goto_221
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mPromotionsEnabled:Z

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mPromotionsEnabled:Z

    if-nez v5, :cond_235

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;

    const/high16 v7, 0x80000

    invoke-direct {v6, v4, v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_235
    if-eqz p1, :cond_23f

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->BG_ACTIVITIES_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_261

    :cond_23f
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "noti_filter_background_notification"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_24c

    move v5, v1

    goto :goto_24d

    :cond_24c
    move v5, v3

    :goto_24d
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mBgActivitiesEnabled:Z

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mBgActivitiesEnabled:Z

    if-nez v5, :cond_261

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;

    const/high16 v7, 0x100000

    invoke-direct {v6, v4, v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_261
    if-eqz p1, :cond_26b

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->MINIMIZED_NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28d

    :cond_26b
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "noti_filter_low_importance_notification"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_278

    move v5, v1

    goto :goto_279

    :cond_278
    move v5, v3

    :goto_279
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mMinimizedNotiEnabled:Z

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mMinimizedNotiEnabled:Z

    if-nez v5, :cond_28d

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;

    const/high16 v7, 0x200000

    invoke-direct {v6, v4, v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_28d
    if-eqz p1, :cond_297

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->OLD_NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b9

    :cond_297
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "noti_filter_old_notification"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_2a4

    move v5, v1

    goto :goto_2a5

    :cond_2a4
    move v5, v3

    :goto_2a5
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mOldNotiEnabled:Z

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mOldNotiEnabled:Z

    if-nez v5, :cond_2b9

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;

    const/high16 v7, 0x400000

    invoke-direct {v6, v4, v7}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/notification/NotificationManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b9
    if-eqz p1, :cond_2c3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_EDGE_LIGHTING:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d3

    :cond_2c3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v5, "edge_lighting"

    invoke-static {v0, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_2d0

    move v5, v1

    goto :goto_2d1

    :cond_2d0
    move v5, v3

    :goto_2d1
    iput-boolean v5, v4, Lcom/android/server/notification/NotificationManagerService;->mEdgeLightingEnabled:Z

    :cond_2d3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->SHOW_NOTIFICATION_SNOOZE:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fd

    const-string/jumbo v4, "show_notification_snooze"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2e5

    goto :goto_2fd

    :cond_2e5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2ea
    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget-object v6, v2, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/notification/SnoozeHelper;->repostAll(Landroid/util/IntArray;)V

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    monitor-exit v4

    goto :goto_2fd

    :catchall_2fa
    move-exception p0

    monitor-exit v4
    :try_end_2fc
    .catchall {:try_start_2ea .. :try_end_2fc} :catchall_2fa

    throw p0

    :cond_2fd
    :goto_2fd
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->REDACT_OTP_NOTIFICATIONS:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_314

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo p1, "redact_otp_notifications_from_untrusted_listeners"

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_311

    goto :goto_312

    :cond_311
    move v1, v3

    :goto_312
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRedactOtpNotifications:Z

    :cond_314
    return-void
.end method
