.class public final Lcom/android/server/notification/NotificationShellCmd$ShellNls;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public isConnected:Z


# virtual methods
.method public final onListenerConnected()V
    .locals 1

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    return-void
.end method
