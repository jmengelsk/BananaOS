.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string/jumbo v0, "ProfcollectForwardingService"

    iget v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getLaunchObserverRegistry()Lcom/android/server/wm/LaunchObserverRegistryImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mAppLaunchObserver:Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/LaunchObserverRegistryImpl;->registerLaunchObserver(Lcom/android/server/wm/ActivityMetricsLaunchObserver;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    new-instance v2, Lcom/android/server/profcollect/ProfcollectForwardingService$4;

    invoke-direct {v2, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$4;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    const-class v1, Lcom/android/server/art/ArtManagerLocal;

    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/art/ArtManagerLocal;

    if-nez v1, :cond_0

    const-string p0, "Couldn\'t get ArtManagerLocal"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/art/ArtManagerLocal;->setBatchDexoptStartCallback(Ljava/util/concurrent/Executor;Lcom/android/server/art/ArtManagerLocal$BatchDexoptStartCallback;)V

    :goto_0
    new-instance p0, Landroid/os/UpdateEngine;

    invoke-direct {p0}, Landroid/os/UpdateEngine;-><init>()V

    new-instance v0, Lcom/android/server/profcollect/ProfcollectForwardingService$3;

    invoke-direct {v0}, Landroid/os/UpdateEngineCallback;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;)Z

    return-void

    :pswitch_0
    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    iget v3, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUsageSetting:I

    check-cast v2, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    invoke-virtual {v2, v3}, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->report(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mUploadEnabled:Z

    if-nez v2, :cond_2

    const-string/jumbo p0, "Upload is not enabled."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-boolean v2, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-nez v2, :cond_3

    const-string/jumbo p0, "Verity is not enforced."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.shell"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "com.android.shell.action.PROFCOLLECT_UPLOAD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create report: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    const-string/jumbo v2, "com.android.server.profcollect.IProfCollectd"

    const/4 v3, 0x0

    if-nez v1, :cond_4

    :goto_2
    move v1, v3

    goto :goto_4

    :cond_4
    :try_start_1
    check-cast v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    iget-object v4, v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x5

    invoke-interface {v1, v6, v4, v5, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get supported provider: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :goto_4
    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIProfcollect:Lcom/android/server/profcollect/IProfCollectd;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    :try_start_4
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->mProviderStatusCallback:Lcom/android/server/profcollect/ProfcollectForwardingService$1;

    check-cast v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;

    iget-object v4, v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, v1, Lcom/android/server/profcollect/IProfCollectd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    invoke-interface {p0, v1, v4, v5, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register provider status callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
