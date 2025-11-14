.class public final Lcom/android/server/notification/NotificationReminder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final notificationIntent:Landroid/content/Intent;


# instance fields
.field public final mActiveNotiList:Ljava/util/ArrayList;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAppSettingList:Ljava/lang/String;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public mEnableReminder:Z

.field public mEnableVibrate:Z

.field public final mHandler:Lcom/android/server/notification/NotificationReminder$2;

.field public mInterval:I

.field public final mNeedMigration:Z

.field public final mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public mReminderIntent:Landroid/app/PendingIntent;

.field public final mReminderReceiver:Lcom/android/server/notification/NotificationReminder$1;

.field public mReminderType:I

.field public final mVibratorHelper:Lcom/android/server/notification/VibratorHelper;


# direct methods
.method public static -$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "NotificationReminder"

    const-string/jumbo v1, "cancelAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "cancelAlarm - cancel Alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public static -$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string/jumbo v1, "NotificationReminder"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "The active notification list is empty."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v6, 0x200

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v5

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "bubbleMetadata is null."

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v5, v2

    :goto_1
    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    if-nez v5, :cond_1

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget-object v8, v7, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v7, v6, v5}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-boolean v5, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v2

    :goto_2
    if-eqz v5, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Clearable checked item found: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :goto_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    return v2
.end method

.method public static -$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "NotificationReminder(com.android.settings)"

    iget-object v4, v0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    const-string/jumbo v5, "NotificationReminder"

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string/jumbo v0, "playVibration only"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v0, v5, v3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    sget-object v10, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-static {v10}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    iget-object v6, v0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v8, "playSound"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-interface/range {v6 .. v11}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;F)V

    sget-object v11, Lcom/android/server/notification/NotificationAttentionHelper;->mSemAudioGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    if-eqz v11, :cond_2

    const-string/jumbo v12, "playback"

    const-string/jumbo v13, "com.android.settings"

    invoke-static {v10}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v14

    const-string v15, ""

    const-string/jumbo v16, "repeat_notification_alerts"

    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    const-string/jumbo v6, "SemAudioGoodCatchManager has not created"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "playVibration"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    invoke-virtual {v4, v0, v10, v3}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_5
    return-void
.end method

.method public static -$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    const-string/jumbo v1, "NotificationReminder"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "Reminder alarm is exist before calling setReminder Alarm."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "setReminderAlarm"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    const/high16 v3, 0x12000000

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const/16 v2, 0xb4

    if-ge v0, v2, :cond_1

    iput v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const/4 v3, -0x2

    const-string/jumbo v4, "time_key"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "The interval is set to the wrong value, so it is reset to the default interval value.(180 sec)."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    int-to-long v6, v6

    mul-long/2addr v6, v1

    add-long/2addr v6, v4

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v6, v7, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    int-to-long v6, v6

    mul-long/2addr v6, v1

    add-long/2addr v6, v4

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v6, v7, p0}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.action.Notification_Reminder_Alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/PreferencesHelper;Landroid/app/AlarmManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    new-instance v1, Lcom/android/server/notification/NotificationReminder$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationReminder$1;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderReceiver:Lcom/android/server/notification/NotificationReminder$1;

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/NotificationReminder$2;

    invoke-direct {v2, p0, p2}, Lcom/android/server/notification/NotificationReminder$2;-><init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    iput-object p3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const-string/jumbo p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    new-instance p2, Lcom/android/server/notification/VibratorHelper;

    invoke-direct {p2, p1}, Lcom/android/server/notification/VibratorHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    iput-object p4, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p2, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    invoke-direct {p2, p0, v2}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationReminder$2;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v3, "notification_reminder_selectable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v3, "notification_reminder_type"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v3, "notification_reminder_app_list"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v3, "notification_reminder_vibrate"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string/jumbo v3, "time_key"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p4, v3, v4, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo p4, "com.samsung.action.Notification_Reminder_Alarm"

    invoke-direct {p2, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p4, 0x2

    invoke-virtual {p1, v1, p2, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget p2, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    const/4 p4, 0x1

    if-eq p2, p4, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "reminder_migration_finished"

    const/4 p3, -0x2

    invoke-static {p1, p2, v4, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    move v4, p4

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    if-eqz v4, :cond_2

    new-instance p1, Lcom/android/server/notification/NotificationReminder$5;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationReminder$5;-><init>(Lcom/android/server/notification/NotificationReminder;I)V

    const-wide/16 p2, 0x7530

    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    new-instance v0, Lcom/android/server/notification/NotificationReminder$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/notification/NotificationReminder$3;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;I)V

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "\n  NotificationReminder :"

    const-string v2, "      EnableReminder = "

    invoke-static {p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    const-string v3, "      Interval = "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const-string v3, "      EnableVibrate = "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    invoke-static {v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "      mActiveNotiList, size = "

    invoke-static {p1, v1, v0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "      key : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final sendMessage(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Lcom/android/server/notification/NotificationReminder$2;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
