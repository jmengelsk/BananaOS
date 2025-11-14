.class public final Lcom/android/server/notification/NotificationRecordLoggerImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/NotificationRecordLogger;


# instance fields
.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .registers 37

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    iget-wide v2, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    iget v5, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    const/16 v6, 0xf4

    move-wide/from16 v27, v2

    iget v2, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    move/from16 v30, v4

    iget v4, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    move/from16 v31, v5

    iget v5, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    move v7, v6

    iget v6, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    move v8, v7

    iget v7, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    move v9, v8

    iget v8, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    move v10, v9

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    move v11, v10

    iget-object v10, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    move v12, v11

    iget v11, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    move v13, v12

    iget v12, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    move v14, v13

    iget v13, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    move v15, v14

    iget v14, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    move/from16 v16, v15

    iget v15, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    move/from16 v17, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    move/from16 v26, v1

    move/from16 v25, v2

    iget-wide v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    move-wide/from16 v32, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    iget v2, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    move/from16 v29, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_promoted_ongoing:Z

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->has_promotable_characteristics:Z

    move-wide/from16 v34, v32

    move/from16 v33, v0

    move/from16 v32, v1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v23

    move/from16 v22, v24

    move/from16 v23, v26

    move/from16 v26, v29

    move/from16 v29, v2

    move/from16 v2, v25

    move-wide/from16 v24, v34

    invoke-static/range {v0 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIIZLjava/lang/String;IIIIIIIIIIFZZJZJIZIZZ)V

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p2

    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method
