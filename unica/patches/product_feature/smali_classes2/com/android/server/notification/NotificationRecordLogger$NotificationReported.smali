.class public final Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final age_in_minutes:I

.field public final alerting:I

.field public final assistant_hash:I

.field public final assistant_ranking_score:F

.field public final category:Ljava/lang/String;

.field public final channel_id_hash:I

.field public final event_id:I

.field public final fsi_state:I

.field public final group_id_hash:I

.field public final group_instance_id:I

.field public final has_promotable_characteristics:Z

.field public final importance:I

.field public final importance_asst:I

.field public final importance_initial:I

.field public final importance_initial_source:I

.field public final importance_source:I

.field public final instance_id:I

.field public final is_foreground_service:Z

.field public final is_group_summary:Z

.field public final is_locked:Z

.field public final is_non_dismissible:Z

.field public final is_ongoing:Z

.field public final is_promoted_ongoing:Z

.field public final notification_id_hash:I

.field public final num_people:I

.field public final package_name:Ljava/lang/String;

.field public final position:I

.field public post_duration_millis:J

.field public final style:I

.field public final timeout_millis:J

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    move v1, v2

    goto :goto_36

    :cond_2c
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    :goto_36
    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    xor-int/2addr v1, v3

    const/16 v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    if-nez p5, :cond_79

    move p5, v2

    goto :goto_7d

    :cond_79
    invoke-virtual {p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p5

    :goto_7d
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    iget-object p5, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p5

    iget-object p5, p5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p5, :cond_a7

    const-string/jumbo v1, "android.template"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_a7

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a7

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p5

    goto :goto_a8

    :cond_a7
    move p5, v2

    :goto_a8
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p5

    iget-object p5, p5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p5, :cond_ca

    const-string/jumbo v1, "android.people.list"

    const-class v4, Landroid/app/Person;

    invoke-virtual {p5, v1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p5

    if-eqz p5, :cond_ca

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ca

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    goto :goto_cb

    :cond_ca
    move p5, v2

    :goto_cb
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    iget-object p5, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    if-nez p5, :cond_d6

    goto :goto_da

    :cond_d6
    invoke-static {p5, p3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result p3

    :goto_da
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    iput p4, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget p3, p3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    if-nez p3, :cond_f6

    move p3, v2

    goto :goto_fa

    :cond_f6
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    :goto_fa
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    iget p3, p1, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    const/4 p4, 0x1

    if-nez p3, :cond_113

    :cond_111
    move p3, v2

    goto :goto_120

    :cond_113
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_111

    move p3, p4

    :goto_120
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    if-nez p3, :cond_132

    :cond_130
    move p3, v2

    goto :goto_13e

    :cond_132
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/2addr p3, v3

    if-eqz p3, :cond_130

    move p3, p4

    :goto_13e
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    iget-object p3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_146

    move p3, p4

    goto :goto_147

    :cond_146
    move p3, v2

    :goto_147
    iget p5, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 p5, p5, 0x4000

    if-eqz p5, :cond_14f

    move p5, p4

    goto :goto_150

    :cond_14f
    move p5, v2

    :goto_150
    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    if-ne p2, v1, :cond_156

    :cond_154
    move p2, v2

    goto :goto_15d

    :cond_156
    if-eqz p3, :cond_15a

    move p2, p4

    goto :goto_15d

    :cond_15a
    if-eqz p5, :cond_154

    const/4 p2, 0x2

    :goto_15d
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez p2, :cond_16f

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/KeyguardManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_16f
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-nez p2, :cond_17f

    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_180

    :cond_17f
    move v2, p4

    :cond_180
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p1

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p3

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMinutes()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    invoke-virtual {v0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_promoted_ongoing:Z

    invoke-virtual {v0}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->has_promotable_characteristics:Z

    return-void
.end method
