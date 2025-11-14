.class public final Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

.field public mDisplayId:I


# virtual methods
.method public final onRotationChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->listener:Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/server/remoteappmode/RemoteAppRotationWatcher;->mDisplayId:I

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/remoteappmode/IRotationChangeListener;->onRotationChanged(II)V

    :cond_9
    return-void
.end method
