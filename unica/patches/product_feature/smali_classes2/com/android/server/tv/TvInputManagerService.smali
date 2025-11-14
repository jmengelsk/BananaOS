.class public final Lcom/android/server/tv/TvInputManagerService;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sAdapterDirPattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndDevicePattern:Ljava/util/regex/Pattern;

.field public static final sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

.field public final mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

.field public final mExternalInputLoggingDisplayNameFilterEnabled:Z

.field public final mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field public final mLock:Ljava/lang/Object;

.field public mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

.field public final mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

.field public mOnScreenInputId:Ljava/lang/String;

.field public mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

.field public final mPackageMonitor:Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

.field public final mRunningProfiles:Ljava/util/Set;

.field public final mSessionIdToSessionStateMap:Ljava/util/Map;

.field public final mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$maddHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/TvInputInfo;Landroid/content/ComponentName;I)V
    .registers 14

    invoke-virtual {p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    if-nez p2, :cond_29

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "media_quality"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/quality/MediaQualityManager;

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    if-nez p2, :cond_29

    goto :goto_76

    :cond_29
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    invoke-virtual {p2, p1}, Landroid/media/quality/MediaQualityManager;->getPictureProfileForTvInput(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    const-string v2, "Invalid inputId : "

    iget-object v3, p2, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_36
    invoke-virtual {p2, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_52

    const-string/jumbo p2, "TvInputHardwareManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_76

    :catchall_50
    move-exception p0

    goto :goto_7b

    :cond_52
    iget-object p1, p2, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    array-length v2, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    :goto_61
    if-ge v7, v2, :cond_75

    aget-object v9, p1, v7

    if-eqz v8, :cond_71

    iget-object v8, p2, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    invoke-virtual {v8, v4, v9, v0, v1}, Lcom/android/server/tv/TvInputHal;->setPictureProfile(ILandroid/media/tv/TvStreamConfig;J)I

    move-result v8

    if-nez v8, :cond_71

    move v8, v5

    goto :goto_72

    :cond_71
    move v8, v6

    :goto_72
    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_36 .. :try_end_76} :catchall_50

    :goto_76
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    return-void

    :goto_7b
    :try_start_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_50

    throw p0
.end method

.method public static -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)Z
    .registers 10

    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p2

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionCallback;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService$SessionCallback;-><init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;[Landroid/view/InputChannel;)V

    const/4 p0, 0x1

    :try_start_1c
    iget-boolean v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    if-eqz v0, :cond_2b

    iget-object v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Landroid/media/tv/ITvInputService;->createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :catch_28
    move-exception v0

    move-object p1, v0

    goto :goto_39

    :cond_2b
    aget-object v1, p2, p0

    iget-object v3, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->tvAppAttributionSource:Landroid/content/AttributionSource;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_37} :catch_28

    :goto_37
    move p1, p0

    goto :goto_4d

    :goto_39
    const-string/jumbo v0, "TvInputManagerService"

    const-string/jumbo v1, "error in createSession"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget-object v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget p3, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1, p3}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    const/4 p1, 0x0

    :goto_4d
    aget-object p0, p2, p0

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return p1
.end method

.method public static -$$Nest$mgetSessionActualInputId(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v0, :cond_28

    const-string/jumbo p0, "TvInputManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No TvInputState for sessionState.inputId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    return-object p0

    :cond_28
    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    if-nez v0, :cond_3f

    const-string/jumbo p0, "TvInputManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TvInputInfo is null for input id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    return-object p0

    :cond_3f
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    const/16 v2, 0x3ef

    if-eq v0, v2, :cond_4a

    goto :goto_6e

    :cond_4a
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4f
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_6f

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_6e
    :goto_6e
    return-object v1

    :catchall_6f
    move-exception p0

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public static -$$Nest$mgetSessionLocked(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    .registers 4

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mlogTuneStateChanged(Lcom/android/server/tv/TvInputManagerService;ILcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$TvInputState;)V
    .registers 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p3, :cond_23

    iget v0, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    iget-object v1, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :cond_11
    iget v2, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    iget-object p3, p3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {p3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result p0

    :cond_1f
    move v8, p0

    move v6, v1

    move v7, v2

    goto :goto_27

    :cond_23
    const/4 v0, -0x1

    move v6, p0

    move v7, v6

    move v8, v7

    :goto_27
    iget p0, p2, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    filled-new-array {p0, v0}, [I

    move-result-object v2

    const-string/jumbo p0, "tif_player"

    const-string/jumbo p3, "tv_input_service"

    filled-new-array {p0, p3}, [Ljava/lang/String;

    move-result-object v3

    iget-object v5, p2, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    const/16 v1, 0x147

    move v4, p1

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method public static -$$Nest$mremoveHardwareInputLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a6

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_18
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_a3

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3d
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4d

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_4d

    :catchall_4b
    move-exception p0

    goto :goto_a1

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_5a

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_5a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiParentInputMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_98
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    monitor-exit p2

    return-void

    :goto_a1
    monitor-exit p2
    :try_end_a2
    .catchall {:try_start_3d .. :try_end_a2} :catchall_4b

    throw p0

    :catchall_a3
    move-exception p0

    :try_start_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p0

    :catchall_a6
    move-exception p0

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw p0
.end method

.method public static -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static -$$Nest$msetStateLocked(Lcom/android/server/tv/TvInputManagerService;Ljava/lang/String;II)V
    .registers 7

    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p3

    iget-object v0, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v0, :cond_1a

    const-string/jumbo p0, "failed to setStateLocked - unknown input id "

    const-string/jumbo p2, "TvInputManagerService"

    invoke-static {p0, p1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v1, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget v2, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    iput p2, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    if-eqz v1, :cond_35

    iget-boolean v0, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    if-eqz v0, :cond_35

    goto :goto_7f

    :cond_35
    if-eq v2, p2, :cond_7f

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    goto :goto_7c

    :cond_48
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    if-eqz v0, :cond_7c

    iget-object v2, p3, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-eqz v0, :cond_5b

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_7c

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    :cond_7c
    :goto_7c
    invoke-static {p3, p1, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;I)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public static -$$Nest$mupdateHardwareTvInputServiceBindingLocked(Lcom/android/server/tv/TvInputManagerService;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.TvInputService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x84

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v4, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_18

    :cond_32
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "android.permission.ALWAYS_BOUND_TV_INPUT"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_49

    goto :goto_18

    :cond_49
    const-string/jumbo v2, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p0, p1, v3}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    goto :goto_18

    :cond_5a
    return-void
.end method

.method public static -$$Nest$mupdateTvInputInfoLocked(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/TvInputInfo;)V
    .registers 10

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v1, :cond_1a

    const-string/jumbo p0, "TvInputManagerService"

    const-string/jumbo p1, "failed to set input info - unknown input id "

    invoke-static {p1, v0, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_92

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_92

    :cond_2e
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_92

    :cond_3f
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-eqz v0, :cond_92

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    if-nez v3, :cond_52

    goto :goto_92

    :cond_52
    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_92

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v3

    if-nez v3, :cond_65

    goto :goto_92

    :cond_65
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v5

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    if-eq v5, v0, :cond_92

    goto :goto_94

    :cond_92
    :goto_92
    move v0, v2

    goto :goto_95

    :cond_94
    :goto_94
    const/4 v0, 0x1

    :goto_95
    iput-object p2, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v3

    iput v3, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v1, :cond_fb

    iget-boolean v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eqz v3, :cond_fb

    iget-object v1, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    const-string/jumbo v3, "update inputInfo for input id "

    iget-object v4, v1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c4
    iget-object v5, v1, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d6

    monitor-exit v4

    goto :goto_fb

    :catchall_d4
    move-exception p0

    goto :goto_f9

    :cond_d6
    const-string/jumbo v5, "TvInputHardwareManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_fb

    :goto_f9
    monitor-exit v4
    :try_end_fa
    .catchall {:try_start_c4 .. :try_end_fa} :catchall_d4

    throw p0

    :cond_fb
    :goto_fb
    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    :cond_105
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p0

    :goto_10b
    if-ge v2, p0, :cond_126

    :try_start_10d
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v0, p2}, Landroid/media/tv/ITvInputManagerCallback;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_118} :catch_119

    goto :goto_123

    :catch_119
    move-exception v0

    const-string/jumbo v1, "TvInputManagerService"

    const-string/jumbo v3, "failed to report updated input info to callback"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_123
    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    :cond_126
    iget-object p0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public static -$$Nest$smgetTvInputState(Lcom/android/server/tv/TvInputManagerService$SessionState;Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .registers 2

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "^dvb([0-9]+)\\.frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndDevicePattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^adapter([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sAdapterDirPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^frontend([0-9]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/tv/TvInputManagerService;->sFrontEndInAdapterDirPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mMediaQualityManager:Landroid/media/quality/MediaQualityManager;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/tv/TvInputManagerService$MessageHandler;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v4, Lcom/android/server/tv/TvInputManagerService$HardwareListener;

    invoke-direct {v4, p0}, Lcom/android/server/tv/TvInputManagerService$HardwareListener;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    invoke-direct {v2, p1, v4}, Lcom/android/server/tv/TvInputHardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvInputManagerService$HardwareListener;)V

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

    invoke-direct {v2, p0}, Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mPackageMonitor:Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    const-class v2, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiControlManager;

    if-nez v2, :cond_92

    const-string/jumbo v2, "TvInputManagerService"

    const-string v4, "HdmiControlManager is null!"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_92
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    :goto_98
    monitor-enter v0

    :try_start_99
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_d4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111028e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    if-nez v0, :cond_af

    return-void

    :cond_af
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070181

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070180

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :catchall_d4
    move-exception p0

    :try_start_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw p0
.end method

.method public static getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Session not yet created for token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 5

    iget-object p2, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-eqz p2, :cond_32

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_31

    iget v0, p2, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    if-ne p1, v0, :cond_15

    goto :goto_31

    :cond_15
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal access to the session with token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from uid "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_31
    :goto_31
    return-object p2

    :cond_32
    new-instance p1, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Session state not found for token "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getVideoUnavailableReasonForStatsd(I)I
    .registers 3

    const/16 v0, 0x64

    add-int/2addr p0, v0

    if-lt p0, v0, :cond_b

    const/16 v1, 0x76

    if-le p0, v1, :cond_a

    goto :goto_b

    :cond_a
    return p0

    :cond_b
    :goto_b
    return v0
.end method

.method public static notifyInputStateChangedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;Ljava/lang/String;I)V
    .registers 8

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    :try_start_9
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputManagerCallback;->onInputStateChanged(Ljava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    move-exception v2

    const-string/jumbo v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report state change to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public static sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 5

    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/tv/ITvInputClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in onSessionCreated"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V
    .registers 12

    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_13
    :goto_13
    if-ge v5, v3, :cond_39

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/os/IBinder;

    iget-object v7, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v7, v6, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-nez v7, :cond_13

    if-eqz p2, :cond_35

    iget-object v7, v6, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_35
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3d
    if-ge v4, p2, :cond_59

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget v3, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5, v0}, Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_3d

    :cond_59
    iget-boolean p2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eqz p2, :cond_66

    iget-boolean p2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    if-eqz p2, :cond_62

    goto :goto_66

    :cond_62
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    return-void

    :cond_66
    :goto_66
    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V
    .registers 9

    const-string/jumbo v0, "TvInputManagerService"

    iget-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    if-eqz v1, :cond_f

    iget-boolean p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eqz p1, :cond_7d

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    return-void

    :cond_f
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_20} :catch_26

    const/high16 v2, 0x40000000  # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_39

    goto :goto_3a

    :catch_26
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Service not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    move v3, p2

    :goto_3a
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.TvInputService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x2000001

    iget-object v5, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    if-nez v1, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "failed to bind "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for userId "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_7d
    return-void
.end method

.method public final buildTvContentRatingSystemListLocked(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_36

    goto :goto_23

    :cond_36
    const-string/jumbo v2, "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Missing meta-data \'android.media.tv.metadata.CONTENT_RATING_SYSTEMS\' on receiver "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v2, "TvInputManagerService"

    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_5a
    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v0}, Landroid/media/tv/TvContentRatingSystemInfo;->createTvContentRatingSystemInfo(ILandroid/content/pm/ApplicationInfo;)Landroid/media/tv/TvContentRatingSystemInfo;

    move-result-object v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_68
    return-void
.end method

.method public final buildTvInputListLocked(I[Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.tv.TvInputService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x84

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "TvInputManagerService"

    if-eqz v4, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v8, "android.permission.BIND_TV_INPUT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Skipping TV input "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v7, ": it does not require the permission android.permission.BIND_TV_INPUT"

    invoke-static {v4, v6, v7, v5}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_54
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_96

    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez v4, :cond_83

    new-instance v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    invoke-direct {v4, p0, v7, p1}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    iget-object v5, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    :cond_83
    iget-object v5, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8e
    iget-boolean v4, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->needInit:Z

    if-eqz v4, :cond_a4

    invoke-virtual {p0, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    goto :goto_a4

    :cond_96
    :try_start_96
    new-instance v7, Landroid/media/tv/TvInputInfo$Builder;

    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4}, Landroid/media/tv/TvInputInfo$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo$Builder;->build()Landroid/media/tv/TvInputInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a4} :catch_af

    :cond_a4
    :goto_a4
    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :catch_af
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "failed to load TV input "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    :cond_c6
    new-instance v1, Lcom/android/server/tv/TvInputManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    :goto_e6
    if-ge v7, v4, :cond_12b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v8}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const/4 v11, 0x1

    if-nez v10, :cond_fe

    goto :goto_103

    :cond_fe
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v11, v10

    :goto_103
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    if-nez v10, :cond_11d

    new-instance v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput v6, v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    :cond_11d
    iput-object v8, v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {p0, v8}, Lcom/android/server/tv/TvInputManagerService;->getInputUid(Landroid/media/tv/TvInputInfo;)I

    move-result v8

    iput v8, v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;->uid:I

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v11, v10, Lcom/android/server/tv/TvInputManagerService$TvInputState;->inputNumber:I

    goto :goto_e6

    :cond_12b
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_133
    :goto_133
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    if-eqz v3, :cond_1ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16a

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    move v8, v6

    :goto_150
    if-ge v8, v7, :cond_166

    :try_start_152
    invoke-virtual {v4, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v9, v3}, Landroid/media/tv/ITvInputManagerCallback;->onInputAdded(Ljava/lang/String;)V
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_15b} :catch_15c

    goto :goto_163

    :catch_15c
    move-exception v9

    const-string/jumbo v10, "failed to report added input to callback"

    invoke-static {v5, v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_163
    add-int/lit8 v8, v8, 0x1

    goto :goto_150

    :cond_166
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_133

    :cond_16a
    if-eqz p2, :cond_133

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    iget-object v7, v7, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v7}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    array-length v8, p2

    move v9, v6

    :goto_17a
    if-ge v9, v8, :cond_133

    aget-object v10, p2, v9

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1aa

    invoke-virtual {p0, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v7

    move v8, v6

    :goto_190
    if-ge v8, v7, :cond_1a6

    :try_start_192
    invoke-virtual {v4, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v9, v3}, Landroid/media/tv/ITvInputManagerCallback;->onInputUpdated(Ljava/lang/String;)V
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_192 .. :try_end_19b} :catch_19c

    goto :goto_1a3

    :catch_19c
    move-exception v9

    const-string/jumbo v10, "failed to report updated input to callback"

    invoke-static {v5, v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a3
    add-int/lit8 v8, v8, 0x1

    goto :goto_190

    :cond_1a6
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_133

    :cond_1aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_17a

    :cond_1ad
    iget-object p2, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b9
    :goto_1b9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_209

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b9

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    iget-object v3, v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    iget-object v7, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v3, :cond_1ea

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/TvInputManagerService$ServiceState;Ljava/lang/String;I)V

    :cond_1ea
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    move v7, v6

    :goto_1ef
    if-ge v7, v3, :cond_205

    :try_start_1f1
    invoke-virtual {v4, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v8, v2}, Landroid/media/tv/ITvInputManagerCallback;->onInputRemoved(Ljava/lang/String;)V
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_1fa} :catch_1fb

    goto :goto_202

    :catch_1fb
    move-exception v8

    const-string/jumbo v9, "failed to report removed input to callback"

    invoke-static {v5, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_202
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ef

    :cond_205
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1b9

    :cond_209
    iget-object p0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    iput-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    return-void
.end method

.method public final cleanUpHdmiDevices(I)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v2, v1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_21
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_54

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    :try_start_38
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    if-eqz v3, :cond_42

    invoke-interface {v3, v2}, Landroid/media/tv/ITvInputService;->notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    goto :goto_2c

    :catch_40
    move-exception v2

    goto :goto_4a

    :cond_42
    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hdmiDeviceRemovedBuffer:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_49} :catch_40

    goto :goto_2c

    :goto_4a
    const-string/jumbo v3, "TvInputManagerService"

    const-string/jumbo v4, "error in notifyHdmiDeviceRemoved"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :catchall_54
    move-exception p0

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0

    :cond_57
    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 9

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    const-string/jumbo v1, "error in onSessionReleased"

    const-string/jumbo v2, "TvInputManagerService"

    if-eqz v0, :cond_14

    :try_start_a
    iget v3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v0, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_14
    iget v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v4, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget-object v5, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    if-ne v4, v5, :cond_26

    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget v5, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    const/16 v6, 0x3e8

    invoke-virtual {p0, v6, v4, v5}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    :try_start_41
    iget-object v4, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    iget v3, v3, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    invoke-interface {v4, v3}, Landroid/media/tv/ITvInputClient;->onSessionReleased(I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_26

    :catch_49
    move-exception v3

    invoke-static {v2, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :cond_4e
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    iget p1, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method public final getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.android.providers.tv.permission.ACCESS_WATCHED_PROGRAMS"

    move/from16 v6, p2

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1c

    move v4, v5

    goto :goto_1d

    :cond_1c
    move v4, v6

    :goto_1d
    iget-object v7, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_29
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-boolean v9, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    if-eqz v9, :cond_29

    iget v9, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    if-ne v9, v2, :cond_44

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move/from16 v16, v5

    goto :goto_85

    :cond_44
    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mAppTagMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_6b

    iget v9, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mNextAppTag:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mNextAppTag:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/tv/TvInputManagerService$UserState;->mAppTagMap:Ljava/util/Map;

    iget v11, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    iget-object v10, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :try_start_71
    iget-object v11, v0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7d} :catch_82

    and-int/2addr v10, v5

    if-eqz v10, :cond_82

    const/4 v10, 0x2

    goto :goto_83

    :catch_82
    :cond_82
    const/4 v10, 0x3

    :goto_83
    move/from16 v16, v10

    :goto_85
    new-instance v10, Landroid/media/tv/TunedInfo;

    iget-object v11, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    if-eqz v4, :cond_8e

    iget-object v12, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    goto :goto_8f

    :cond_8e
    const/4 v12, 0x0

    :goto_8f
    iget-boolean v13, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    iget-boolean v14, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isVisible:Z

    iget-boolean v15, v8, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-direct/range {v10 .. v17}, Landroid/media/tv/TunedInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;ZZZII)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_a0
    return-object v3
.end method

.method public final getInputUid(Landroid/media/tv/TvInputInfo;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to get UID for  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "TvInputManagerService"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/tv/TvInputManagerService$UserState;

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method public final getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service state not found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (userId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 4

    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;ILcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p0

    return-object p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    .registers 2

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputManagerService$UserState;

    return-object p0
.end method

.method public final logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    .registers 15

    iget v0, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    const-string/jumbo v2, "TvInputManagerService"

    if-nez v1, :cond_27

    const-string v1, "Cannot find input state for input id "

    invoke-static {v1, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    :cond_27
    if-nez v1, :cond_2f

    const-string p0, "Cannot find input state for sessionState.inputId "

    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;

    if-nez v0, :cond_3a

    const-string/jumbo p0, "TvInputInfo is null for input id "

    invoke-static {p0, p2, v2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3a
    iget v5, v1, Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v6

    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputInfo;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v9, p3, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result p3

    const/16 v1, 0x3ef

    const v2, 0xffffff

    if-ne p3, v1, :cond_ab

    invoke-virtual {v0}, Landroid/media/tv/TvInputInfo;->getHdmiDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p3

    if-eqz p3, :cond_ab

    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v0

    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    iget-boolean v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDisplayNameFilterEnabled:Z

    if-eqz v1, :cond_a3

    if-nez p2, :cond_75

    const-string/jumbo p2, "NULL_DISPLAY_NAME"

    goto :goto_a3

    :cond_75
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceOnScreenDisplayNames:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    goto :goto_a3

    :cond_7e
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mExternalInputLoggingDeviceBrandNames:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_87
    if-ge v2, v1, :cond_a1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_87

    move-object p2, v3

    goto :goto_a3

    :cond_a1
    const-string p2, "FILTERED_DISPLAY_NAME"

    :cond_a3
    :goto_a3
    invoke-virtual {p3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    move-result v2

    :cond_a7
    :goto_a7
    move-object v10, p2

    move v8, v0

    move v7, v2

    goto :goto_ad

    :cond_ab
    const/4 v0, -0x1

    goto :goto_a7

    :goto_ad
    const/16 v3, 0x2cd

    move v4, p1

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    .registers 10

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    if-ge v1, v0, :cond_5c

    :try_start_b
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    iget-object v3, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.ACCESS_TUNED_INFO"

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_37

    goto :goto_59

    :cond_37
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/tv/TvInputManagerService;->getCurrentTunedInfosInternalLocked(Lcom/android/server/tv/TvInputManagerService$UserState;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/tv/ITvInputManagerCallback;->onCurrentTunedInfosUpdated(Ljava/util/List;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4e} :catch_4f

    goto :goto_59

    :catch_4f
    move-exception v2

    const-string/jumbo v3, "TvInputManagerService"

    const-string/jumbo v4, "failed to report updated current channel infos to callback"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_5c
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final onBootPhase(I)V
    .registers 12

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_31

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mPackageMonitor:Lcom/android/server/tv/TvInputManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v6, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    const-string/jumbo v3, "android.intent.action.USER_STARTED"

    const-string/jumbo v4, "android.intent.action.USER_STOPPED"

    invoke-static {v7, v0, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/tv/TvInputManagerService$1;

    const/4 v0, 0x1

    invoke-direct {v5, p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_48

    :cond_31
    const/16 v2, 0x258

    if-ne p1, v2, :cond_48

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_38
    iget v3, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    monitor-exit v2

    goto :goto_48

    :catchall_44
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_44

    throw p0

    :cond_48
    :goto_48
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v1, :cond_b4

    const-string/jumbo p1, "hdmi_control"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object p1

    if-eqz p1, :cond_8a

    :try_start_5c
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6e} :catch_7f

    :try_start_6e
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_92

    :catchall_7b
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7b

    :try_start_7e
    throw p1
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v0

    move-object p1, v0

    const-string/jumbo v0, "TvInputHardwareManager"

    const-string v1, "Error registering listeners to HdmiControlService:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    :cond_8a
    const-string/jumbo p1, "TvInputHardwareManager"

    const-string v0, "HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_92
    const-string/jumbo p1, "android.media.VOLUME_CHANGED_ACTION"

    const-string/jumbo v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    :cond_b4
    return-void
.end method

.method public final onStart()V
    .registers 5

    new-instance v0, Lcom/android/server/tv/TvInputManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    const-string/jumbo v1, "tv_input"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/tv/TvInputManagerService$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/tv/TvInputManagerService$1;-><init>(Lcom/android/server/tv/TvInputManagerService;I)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-eq v1, p1, :cond_f

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    goto :goto_1c

    :cond_f
    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d

    throw p0
.end method

.method public final releaseSessionLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_39
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_5} :catch_39
    .catchall {:try_start_1 .. :try_end_5} :catchall_36

    :try_start_5
    invoke-virtual {p0, p3}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    if-ne p2, v3, :cond_1a

    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/android/server/tv/TvInputManagerService;->setMainLocked(IILandroid/os/IBinder;Z)V

    goto :goto_1a

    :catchall_16
    move-exception p0

    goto :goto_59

    :catch_18
    move-exception p1

    goto :goto_3b

    :cond_1a
    :goto_1a
    iget-object p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    invoke-interface {p1}, Landroid/media/tv/ITvInputSession;->release()V

    :cond_28
    iput-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    iget-boolean p1, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    if-eqz p1, :cond_33

    iput-boolean v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_33} :catch_18
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_5 .. :try_end_33} :catch_18
    .catchall {:try_start_5 .. :try_end_33} :catchall_16

    :cond_33
    :goto_33
    iput-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    goto :goto_47

    :catchall_36
    move-exception p0

    move-object v1, v0

    goto :goto_59

    :catch_39
    move-exception p1

    move-object v1, v0

    :goto_3b
    :try_start_3b
    const-string/jumbo v2, "TvInputManagerService"

    const-string/jumbo v3, "error in releaseSession"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_16

    if-eqz v1, :cond_47

    goto :goto_33

    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-ne p1, v1, :cond_55

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/tv/TvInputManagerService;->logExternalInputEvent(ILjava/lang/String;Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenInputId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mOnScreenSessionState:Lcom/android/server/tv/TvInputManagerService$SessionState;

    :cond_55
    invoke-virtual {p0, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->removeSessionStateLocked(ILandroid/os/IBinder;)V

    return-object v1

    :goto_59
    if-eqz v1, :cond_5d

    iput-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    :cond_5d
    throw p0
.end method

.method public final releaseSessionOfUserLocked(I)V
    .registers 11

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_6f

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    if-eqz v3, :cond_18

    iget-boolean v3, v2, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    if-nez v3, :cond_18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_37
    if-ge v4, v1, :cond_6f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    :try_start_41
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    invoke-interface {v6}, Landroid/media/tv/ITvInputSession;->release()V

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    iget-boolean v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    if-eqz v6, :cond_50

    iput-boolean v2, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4f} :catch_58
    .catchall {:try_start_41 .. :try_end_4f} :catchall_56

    const/4 v3, 0x1

    :cond_50
    if-eqz v3, :cond_65

    :goto_52
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    goto :goto_65

    :catchall_56
    move-exception v0

    goto :goto_69

    :catch_58
    move-exception v6

    :try_start_59
    const-string/jumbo v7, "TvInputManagerService"

    const-string/jumbo v8, "error in release"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_56

    if-eqz v3, :cond_65

    goto :goto_52

    :cond_65
    :goto_65
    invoke-virtual {p0, v5}, Lcom/android/server/tv/TvInputManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)V

    goto :goto_37

    :goto_69
    if-eqz v3, :cond_6e

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    :cond_6e
    throw v0

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final removeSessionStateLocked(ILandroid/os/IBinder;)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    if-ne p2, v1, :cond_b

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    :cond_b
    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$SessionState;

    if-nez v1, :cond_21

    const-string/jumbo p0, "TvInputManagerService"

    const-string/jumbo p1, "sessionState null, no more remove session action!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$ClientState;

    if-eqz v2, :cond_5b

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    invoke-interface {v4}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    invoke-interface {v3}, Landroid/media/tv/ITvInputClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5b
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mSessionIdToSessionStateMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionId:Ljava/lang/String;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v0, :cond_79

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_79
    iget-boolean v0, v0, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-nez v0, :cond_83

    iget-object v0, v1, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(ILandroid/content/ComponentName;)V

    goto :goto_86

    :cond_83
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->updateHardwareServiceConnectionDelayed(I)V

    :goto_86
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    iput-object p2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setMainLocked(IILandroid/os/IBinder;Z)V
    .registers 5

    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    iget-object p3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    if-eqz p3, :cond_e

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object p1

    :cond_e
    iget-object p3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(ILandroid/content/ComponentName;)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object p3

    iget-boolean p3, p3, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-nez p3, :cond_19

    goto :goto_38

    :cond_19
    invoke-static {p1}, Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object p3

    invoke-interface {p3, p4}, Landroid/media/tv/ITvInputSession;->setMain(Z)V

    iget-boolean p3, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    if-eq p3, p4, :cond_38

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p2

    iput-boolean p4, p1, Lcom/android/server/tv/TvInputManagerService$SessionState;->isMainSession:Z

    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2e
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    const-string/jumbo p1, "TvInputManagerService"

    const-string/jumbo p2, "error in setMain"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public final switchUser(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_c

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_9a

    :cond_c
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo p0, "TvInputManagerService"

    const-string/jumbo p1, "cannot switch to a profile!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_23
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    goto :goto_2b

    :cond_42
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->cleanUpHdmiDevices(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    iget-object p1, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_9

    :try_start_6a
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_74} :catch_75
    .catchall {:try_start_6a .. :try_end_74} :catchall_9

    goto :goto_8c

    :catch_75
    :try_start_75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to create package context as user "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TvInputManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    :goto_8c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_75 .. :try_end_9b} :catchall_9

    throw p0
.end method

.method public final unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    if-nez v0, :cond_5

    goto :goto_28

    :cond_5
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    if-eqz v0, :cond_19

    :try_start_9
    iget-object v1, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    invoke-interface {v1, v0}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_19

    :catch_f
    move-exception v0

    const-string/jumbo v1, "TvInputManagerService"

    const-string/jumbo v2, "error in unregisterCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->connection:Lcom/android/server/tv/TvInputManagerService$InputServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    iput-object p0, p1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    :goto_28
    return-void
.end method

.method public final unbindServiceOfUserLocked(I)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4b

    :cond_7
    iget-object v0, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-nez v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    :cond_40
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->hardwareInputMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->needInit:Z

    goto :goto_13

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final updateHardwareServiceConnectionDelayed(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mMessageHandler:Lcom/android/server/tv/TvInputManagerService$MessageHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final updateServiceConnectionLocked(ILandroid/content/ComponentName;)V
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    if-nez v1, :cond_11

    goto :goto_71

    :cond_11
    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_71

    :cond_21
    iput-boolean v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z

    :cond_23
    iget v2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    iget-boolean v5, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->isHardware:Z

    if-eq p1, v2, :cond_43

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_43

    :cond_39
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_55

    :cond_43
    :goto_43
    iget-object v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_53

    if-eqz v5, :cond_54

    iget-boolean v2, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->needInit:Z

    if-eqz v2, :cond_54

    :cond_53
    move v3, v4

    :cond_54
    move v2, v3

    :goto_55
    if-eqz v2, :cond_5f

    iget-boolean v3, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    if-nez v3, :cond_5f

    invoke-virtual {p0, v1, p1}, Lcom/android/server/tv/TvInputManagerService;->bindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;I)V

    return-void

    :cond_5f
    if-nez v2, :cond_71

    iget-boolean p1, v1, Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z

    if-eqz p1, :cond_71

    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    if-nez v5, :cond_71

    iget-object p0, v0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    :goto_71
    return-void
.end method
