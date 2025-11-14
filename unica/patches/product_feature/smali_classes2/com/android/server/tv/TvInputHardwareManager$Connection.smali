.class public final Lcom/android/server/tv/TvInputHardwareManager$Connection;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallback:Landroid/media/tv/ITvInputHardwareCallback;

.field public mCallingUid:Ljava/lang/Integer;

.field public mConfigs:[Landroid/media/tv/TvStreamConfig;

.field public mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

.field public mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

.field public mInfo:Landroid/media/tv/TvInputInfo;

.field public mIsCableConnectionStatusUpdated:Z

.field public mOnFirstFrameCaptured:Lcom/android/server/tv/TvInputHardwareManager$2;

.field public mResolvedUserId:Ljava/lang/Integer;

.field public mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public static -$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p0}, Landroid/media/tv/TvInputHardwareInfo;->getCableConnectionStatus()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getConfigsLengthLocked()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length p0, p0

    return p0
.end method

.method public final resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    const-string/jumbo v1, "error in Connection::resetLocked"

    const-string/jumbo v2, "TvInputHardwareManager"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-interface {v0}, Landroid/media/tv/ITvInputHardwareCallback;->onReleased()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    :cond_0
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    iput-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Lcom/android/server/tv/TvInputHardwareManager$2;

    iput-object p6, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    invoke-interface {p2, p0}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{ mHardwareInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHardware: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolvedUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResourceClientProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResourceClientProfile:Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCableConnectionStatusLocked(I)Z
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->toBuilder()Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->build()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mIsCableConnectionStatusUpdated:Z

    return p0
.end method
