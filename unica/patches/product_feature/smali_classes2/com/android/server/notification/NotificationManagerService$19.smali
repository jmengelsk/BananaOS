.class public final Lcom/android/server/notification/NotificationManagerService$19;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$extra:Landroid/os/Bundle;

.field public final synthetic val$id:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;II)V
    .locals 0

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$19;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$id:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$extra:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$19;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$id:I

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$extra:Landroid/os/Bundle;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v1, 0x1

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v1, p0, :cond_1

    :cond_0
    :goto_1
    move v1, v10

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    monitor-exit v8

    return-void

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$pkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$id:I

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$extra:Landroid/os/Bundle;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$19;->val$userId:I

    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v10, v1, 0x1

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->EDGE_NOTIFICATION_COMPONENT:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v1, p0, :cond_4

    :cond_3
    :goto_4
    move v1, v10

    goto :goto_3

    :cond_4
    iget-object v1, v2, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;I)V

    invoke-virtual {v11, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_5
    monitor-exit v8

    return-void

    :goto_5
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
