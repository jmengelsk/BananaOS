.class public final Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
.super Landroid/service/notification/IStatusBarNotificationHolder$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mValue:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/IStatusBarNotificationHolder$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public final get()Landroid/service/notification/StatusBarNotification;
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;->mValue:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method
