.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/app/NotificationChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$3:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda9;->f$3:Landroid/app/NotificationChannel;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v2, p0, v0}, Lcom/android/server/notification/GroupHelper;->onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
