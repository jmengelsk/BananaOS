.class final Lcom/android/server/tv/TvInputHal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG:Z = false

.field public static final ERROR_NO_INIT:I = -0x1

.field public static final ERROR_STALE_CONFIG:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x3

.field public static final EVENT_DEVICE_AVAILABLE:I = 0x1

.field public static final EVENT_DEVICE_UNAVAILABLE:I = 0x2

.field public static final EVENT_FIRST_FRAME_CAPTURED:I = 0x4

.field public static final EVENT_STREAM_CONFIGURATION_CHANGED:I = 0x3

.field public static final EVENT_TV_MESSAGE:I = 0x5

.field public static final SUCCESS:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallback:Lcom/android/server/tv/TvInputHal$Callback;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mPtr:J

.field public final mStreamConfigGenerations:Landroid/util/SparseIntArray;

.field public final mStreamConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/tv/TvInputHal;

    const-string/jumbo v0, "TvInputHal"

    sput-object v0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHal$Callback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native nativeAddOrUpdateStream(JIILandroid/view/Surface;)I
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;
.end method

.method private native nativeOpen(Landroid/os/MessageQueue;)J
.end method

.method private static native nativeRemoveStream(JII)I
.end method

.method private static native nativeSetPictureProfile(JIIJ)I
.end method

.method private static native nativeSetTvMessageEnabled(JIIIZ)I
.end method


# virtual methods
.method public final addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    .registers 9

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_31

    :cond_10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v1, v3, :cond_20

    const/4 p0, -0x2

    monitor-exit v0

    return p0

    :cond_20
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p3}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result p0

    invoke-static {v3, v4, p1, p0, p2}, Lcom/android/server/tv/TvInputHal;->nativeAddOrUpdateStream(JIILandroid/view/Surface;)I

    move-result p0

    if-nez p0, :cond_2e

    monitor-exit v0

    return v2

    :cond_2e
    const/4 p0, -0x3

    monitor-exit v0

    return p0

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_e

    throw p0
.end method

.method public final close()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_11

    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHal;->nativeClose(J)V

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_13

    :cond_11
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_f

    throw p0
.end method

.method public final deviceAvailableFromNative(Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final deviceUnavailableFromNative(I)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final firstFrameCapturedFromNative(II)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_61

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v2, :cond_27

    sget-object p0, Lcom/android/server/tv/TvInputHal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown event: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_27
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_36
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_44

    monitor-exit v4

    return v1

    :catchall_42
    move-exception p0

    goto :goto_5f

    :cond_44
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v4

    return v1

    :goto_5f
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_36 .. :try_end_60} :catchall_42

    throw p0

    :cond_61
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    const-string v0, "FirstFrameCaptured: Cannot find a connection with "

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6c
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez p0, :cond_8c

    const-string/jumbo p0, "TvInputHardwareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :catchall_8a
    move-exception p0

    goto :goto_98

    :cond_8c
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Lcom/android/server/tv/TvInputHardwareManager$2;

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$2;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Lcom/android/server/tv/TvInputHardwareManager$2;

    :cond_96
    monitor-exit v2

    return v1

    :goto_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_6c .. :try_end_99} :catchall_8a

    throw p0

    :cond_9a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a1
    invoke-virtual {p0, v0}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/tv/TvStreamConfig;

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_b5

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V

    return v1

    :catchall_b5
    move-exception p0

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0

    :cond_b8
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceUnavailable(I)V

    return v1

    :cond_c2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/tv/TvInputHardwareInfo;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c9
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputHal;->retrieveStreamConfigsLocked(I)V

    iget-object v2, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/TvStreamConfig;

    monitor-exit v0
    :try_end_dd
    .catchall {:try_start_c9 .. :try_end_dd} :catchall_e5

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mCallback:Lcom/android/server/tv/TvInputHal$Callback;

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/tv/TvInputHardwareManager;->onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V

    return v1

    :catchall_e5
    move-exception p0

    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw p0
.end method

.method public final init()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHal;->nativeOpen(Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final removeStream(ILandroid/media/tv/TvStreamConfig;)I
    .registers 8

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_31

    :cond_10
    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v1, v3, :cond_20

    const/4 p0, -0x2

    monitor-exit v0

    return p0

    :cond_20
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result p0

    invoke-static {v3, v4, p1, p0}, Lcom/android/server/tv/TvInputHal;->nativeRemoveStream(JII)I

    move-result p0

    if-nez p0, :cond_2e

    monitor-exit v0

    return v2

    :cond_2e
    const/4 p0, -0x3

    monitor-exit v0

    return p0

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_e

    throw p0
.end method

.method public final retrieveStreamConfigsLocked(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigs:Landroid/util/SparseArray;

    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-static {v2, v3, p1, v0}, Lcom/android/server/tv/TvInputHal;->nativeGetStreamConfigs(JII)[Landroid/media/tv/TvStreamConfig;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public final setPictureProfile(ILandroid/media/tv/TvStreamConfig;J)I
    .registers 14

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    const/4 p0, -0x1

    monitor-exit v1

    return p0

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_34

    :cond_11
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v0, v3, :cond_21

    const/4 p0, -0x2

    monitor-exit v1

    return p0

    :cond_21
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result v6

    move v5, p1

    move-wide v7, p3

    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/TvInputHal;->nativeSetPictureProfile(JIIJ)I

    move-result p0

    if-nez p0, :cond_31

    monitor-exit v1

    return v2

    :cond_31
    const/4 p0, -0x3

    monitor-exit v1

    return p0

    :goto_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_e

    throw p0
.end method

.method public final setTvMessageEnabled(ILandroid/media/tv/TvStreamConfig;IZ)I
    .registers 14

    iget-object v1, p0, Lcom/android/server/tv/TvInputHal;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_11

    const/4 p0, -0x1

    monitor-exit v1

    return p0

    :catchall_e
    move-exception v0

    move-object p0, v0

    goto :goto_35

    :cond_11
    iget-object v0, p0, Lcom/android/server/tv/TvInputHal;->mStreamConfigGenerations:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getGeneration()I

    move-result v3

    if-eq v0, v3, :cond_21

    const/4 p0, -0x2

    monitor-exit v1

    return p0

    :cond_21
    iget-wide v3, p0, Lcom/android/server/tv/TvInputHal;->mPtr:J

    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getStreamId()I

    move-result v6

    move v5, p1

    move v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/TvInputHal;->nativeSetTvMessageEnabled(JIIIZ)I

    move-result p0

    if-nez p0, :cond_32

    monitor-exit v1

    return v2

    :cond_32
    const/4 p0, -0x3

    monitor-exit v1

    return p0

    :goto_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_e

    throw p0
.end method

.method public final streamConfigsChangedFromNative(II)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final tvMessageReceivedFromNative(IILandroid/os/Bundle;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/tv/TvInputHal;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
