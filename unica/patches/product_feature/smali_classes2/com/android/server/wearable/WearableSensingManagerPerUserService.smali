.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mComponentName:Landroid/content/ComponentName;

.field public final mMaxNumberOfConcurrentConnections:I

.field public final mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

.field public mSecureChannel:Lcom/android/server/wearable/WearableSensingSecureChannel;

.field public final mSecureChannelLock:Ljava/lang/Object;

.field public final mSecureChannelMap:Ljava/util/Map;

.field public mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method public static -$$Nest$mstopActiveHotwordAudio(Lcom/android/server/wearable/WearableSensingManagerPerUserService;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string/jumbo v1, "Wearable sensing service is not available at this moment."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_29

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_14

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wearable/WearableSensingManagerService;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelLock:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mNextConnectionId:Ljava/util/concurrent/atomic/AtomicInteger;

    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00f9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mMaxNumberOfConcurrentConnections:I

    return-void
.end method

.method public static isReadOnly(Landroid/os/ParcelFileDescriptor;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    sget v1, Landroid/system/OsConstants;->F_GETFL:I

    invoke-static {p0, v1, v0}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    and-int/2addr p0, v1

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_10} :catch_15

    if-ne p0, v1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0

    :catch_15
    move-exception p0

    const-string/jumbo v1, "WearableSensingManagerPerUserService"

    const-string v2, "Error encountered when trying to determine if the parcelFileDescriptor is read-only. Treating it as not read-only"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static notifyStatusCallback(ILandroid/os/RemoteCallback;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_18

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-eqz p0, :cond_17

    const-string v0, ""

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public final ensureRemoteServiceInitiated$2()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    if-nez v0, :cond_15

    new-instance v0, Lcom/android/server/wearable/RemoteWearableSensingService;

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wearable/RemoteWearableSensingService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    :cond_15
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 7

    const-string v0, " requires android.permission.BIND_WEARABLE_SENSING_SERVICE permission. Found "

    const-string/jumbo v1, "Service "

    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v3, 0x0

    invoke-interface {v2, p1, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_42

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v3, "android.permission.BIND_WEARABLE_SENSING_SERVICE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_42

    :cond_1f
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_42} :catch_43

    :cond_42
    :goto_42
    return-object p0

    :catch_43
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v0, "Could not get service for "

    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onProvideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .registers 7

    const-string/jumbo v0, "WearableSensingManagerPerUserService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProvideDataStream in per user service. Is data stream read-only? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    goto :goto_52

    :cond_32
    const-string/jumbo v1, "WearableSensingManagerPerUserService"

    const-string/jumbo v2, "calling over to remote servvice."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {p2, p1, p0, p3, v2}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;-><init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;I)V

    invoke-virtual {v1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_1c .. :try_end_53} :catchall_30

    throw p0
.end method

.method public final onProvidedData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->setUpServiceIfNeeded()Z

    move-result v1

    if-nez v1, :cond_19

    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string p1, "Detection service is not available at this moment."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    invoke-static {p0, p3}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->notifyStatusCallback(ILandroid/os/RemoteCallback;)V

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    goto :goto_32

    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->ensureRemoteServiceInitiated$2()V

    if-eqz p2, :cond_23

    sget v1, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p2, v1}, Landroid/os/SharedMemory;->setProtect(I)Z

    :cond_23
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mRemoteService:Lcom/android/server/wearable/RemoteWearableSensingService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;-><init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_17

    throw p0
.end method

.method public final removeConnection(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mSecureChannelMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wearable/WearableSensingSecureChannel;

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1b

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->close()V

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setUpServiceIfNeeded()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    :cond_a
    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_23

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1

    :catch_23
    const-string/jumbo p0, "WearableSensingManagerPerUserService"

    const-string/jumbo v0, "RemoteException while setting up service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final wrapWearableSensingCallback(Landroid/app/wearable/IWearableSensingCallback;)Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    const-string/jumbo v2, "WearableSensingManagerPerUserService"

    if-nez v1, :cond_11

    const-string p0, "Cannot create WearableSensingCallback because mComponentName is null."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v3, v5, v6, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-eq v1, p0, :cond_2d

    const-string p0, "Caller does not belong to the package that provides the WearableSensingService implementation. Do not forward WearableSensingCallback to WearableSensingService."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2d
    new-instance p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    invoke-direct {p0, p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;-><init>(Landroid/app/wearable/IWearableSensingCallback;)V

    return-object p0
.end method
