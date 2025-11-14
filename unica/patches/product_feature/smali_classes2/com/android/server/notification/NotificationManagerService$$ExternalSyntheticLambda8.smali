.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/Notification;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;ZLandroid/app/Notification;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$1:Z

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/app/Notification;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$1:Z

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/app/Notification;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$3:I

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$4:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda8;->f$5:I

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->onForegroundServiceNotificationUpdate(ZLandroid/app/Notification;ILjava/lang/String;I)V

    return-void
.end method
