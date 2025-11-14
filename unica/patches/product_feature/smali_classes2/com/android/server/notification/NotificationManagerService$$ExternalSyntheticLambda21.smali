.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$17;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$2:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$2:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    :try_start_0
    invoke-interface {v0, p0}, Landroid/service/notification/INotificationListener;->onPanelRevealed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to notify assistant (panel revealed): "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$17;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$2:I

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "EDGELIGHTING:"

    invoke-static {v4, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$14;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$2:I

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, v2, Lcom/android/server/notification/NotificationManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, v8}, Lcom/android/server/pm/UserManagerInternal;->isUserInitialized(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v6, v0, v1, v8}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "No uid found for "

    const-string v0, ", "

    const-string v1, "!"

    invoke-static {v8, p0, v6, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "NotificationService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/android/server/notification/NotificationManagerService;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v0, p0}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result p0

    if-nez p0, :cond_2

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v4, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v9, 0x7

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IIILjava/lang/String;Ljava/lang/String;II)V

    :cond_2
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda21;->f$2:I

    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x19

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
