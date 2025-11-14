.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$3;->this$1:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mIsUpdateReady:Z

    return-void
.end method
