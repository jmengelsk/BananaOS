.class public interface abstract Lcom/android/server/notification/NotificationManagerInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public abstract applyRestore([BILandroid/app/backup/BackupRestoreEventLogger;)V
.end method

.method public abstract areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
.end method

.method public abstract cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
.end method

.method public abstract cleanupHistoryFiles()V
.end method

.method public abstract enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
.end method

.method public abstract enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V
.end method

.method public abstract getBackupPayload(ILandroid/app/backup/BackupRestoreEventLogger;)[B
.end method

.method public abstract getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
.end method

.method public abstract getNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
.end method

.method public abstract getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
.end method

.method public abstract isNotificationShown(Ljava/lang/String;Ljava/lang/String;II)Z
.end method

.method public abstract onConversationRemoved(Ljava/lang/String;ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDisplayRemoveSystemDecorations(I)V
.end method

.method public abstract removeBitmaps()V
.end method

.method public abstract removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
.end method

.method public abstract removeUserInitiatedJobFlagFromNotification(Ljava/lang/String;II)V
.end method

.method public abstract sendReviewPermissionsNotification()V
.end method

.method public abstract setDeviceEffectsApplier(Landroid/service/notification/DeviceEffectsApplier;)V
.end method
