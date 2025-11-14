.class public final Lcom/android/server/notification/NotificationManagerService$25;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$includeCurrentProfiles:Z

.field public final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$mustNotHaveFlags:I

    iput-boolean p8, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    iput-wide p9, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$cancellationElapsedTimeMs:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    :goto_c
    move-object v13, v2

    goto :goto_15

    :cond_e
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :goto_15
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingUid:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingPid:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v5, 0x0

    move-object v4, v3

    move-object v10, v13

    move-object v3, v2

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xac0

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$mustNotHaveFlags:I

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2, v12}, Lcom/android/server/notification/NotificationManagerService$25$$ExternalSyntheticLambda0;-><init>(II)V

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    iget-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$cancellationElapsedTimeMs:J

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-wide v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    iget-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$cancellationElapsedTimeMs:J

    const/4 v11, 0x1

    const/4 v14, 0x0

    move-wide v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)V

    monitor-exit v1

    return-void

    :catchall_81
    move-exception v0

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_81

    throw v0
.end method
