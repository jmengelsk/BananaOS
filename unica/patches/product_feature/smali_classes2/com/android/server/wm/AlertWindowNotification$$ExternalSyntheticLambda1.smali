.class public final synthetic Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AlertWindowNotification;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AlertWindowNotification;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    iput-boolean p2, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    iget-boolean p0, p0, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-nez v1, :cond_9

    goto :goto_1a

    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    iget-object v2, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    if-eqz p0, :cond_1a

    iget-object p0, v0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method
