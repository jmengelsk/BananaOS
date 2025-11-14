.class public final synthetic Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$18;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$18;Ljava/lang/String;III)V
    .registers 6

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$18;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_34

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$18;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$3:I

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    const/16 v4, 0x40

    :try_start_14
    invoke-virtual {v0, v2, p0, v4, v1}, Lcom/android/server/notification/NotificationManagerService$18;->removeFlagFromNotificationLocked(IIILjava/lang/String;)V

    monitor-exit v3

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw p0

    :pswitch_1c  #0x0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/notification/NotificationManagerService$18;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$2:I

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$18$$ExternalSyntheticLambda0;->f$3:I

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    const v4, 0x8000

    :try_start_2c
    invoke-virtual {v0, v2, p0, v4, v1}, Lcom/android/server/notification/NotificationManagerService$18;->removeFlagFromNotificationLocked(IIILjava/lang/String;)V

    monitor-exit v3

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw p0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c  #00000000
    .end packed-switch
.end method
