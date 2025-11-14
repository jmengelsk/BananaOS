.class public final Lcom/android/server/notification/NotificationManagerService$24;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$channelId:Ljava/lang/String;

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;IIILjava/lang/String;J)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingUid:I

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingPid:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$mustNotHaveFlags:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    iput-object p8, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$channelId:Ljava/lang/String;

    iput-wide p9, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$cancellationElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingUid:I

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingPid:I

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$mustNotHaveFlags:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v2

    move-object v6, v3

    move-object v3, v1

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xac0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_39
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$mustNotHaveFlags:I

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v8, v2, v3}, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;-><init>(II)V

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$channelId:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$cancellationElapsedTimeMs:J

    move-wide v15, v13

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$channelId:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$cancellationElapsedTimeMs:J

    move-wide v15, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_7c
    move-exception v0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_39 .. :try_end_7e} :catchall_7c

    throw v0
.end method
