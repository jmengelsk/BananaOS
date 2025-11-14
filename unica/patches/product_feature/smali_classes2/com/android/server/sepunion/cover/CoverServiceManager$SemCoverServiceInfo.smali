.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$SemCoverServiceInfo;
.super Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;

    move-result-object p0

    return-object p0
.end method

.method public final onCoverAppStateChanged(Z)I
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverService;->onCoverAppCovered(Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final systemReady()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverService;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method
