.class public final Lcom/android/server/power/AmbientDisplaySuppressionController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/power/PowerManagerService$1;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSuppressionTokens:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "AmbientDisplaySuppressionController:"

    const-string v1, " ambientDisplaySuppressed="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mSuppressionTokens="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getSuppressionTokens(I)Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter v1

    :try_start_8
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_e

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_2c
    move-exception p0

    goto :goto_30

    :cond_2e
    monitor-exit v1

    return-object v0

    :goto_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2c

    throw p0
.end method

.method public final isSuppressed()Z
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final suppress(ILjava/lang/String;Z)V
    .registers 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result p2

    if-eqz p3, :cond_17

    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_17
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result p1

    if-eq p1, p2, :cond_6e

    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    iget-object p3, p2, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object p3, p3, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_29
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v0, p2, Lcom/android/server/power/PowerManagerService;->mDreamsDisabledByAmbientModeSuppressionConfig:Z

    if-nez v0, :cond_30

    goto :goto_69

    :cond_30
    iget-object v0, p2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerGroup;

    if-nez p1, :cond_5e

    iget-boolean v1, p2, Lcom/android/server/power/PowerManagerService;->mIsPowered:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, p2, Lcom/android/server/power/PowerManagerService;->mDreamsSupportedConfig:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, p2, Lcom/android/server/power/PowerManagerService;->mDreamsEnabledSetting:Z

    if-eqz v1, :cond_5e

    invoke-virtual {p2, v0}, Lcom/android/server/power/PowerManagerService;->shouldNapAtBedTimeLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {p2, v0}, Lcom/android/server/power/PowerManagerService;->isItBedTimeYetLocked(Lcom/android/server/power/PowerGroup;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v0, v1, v3}, Lcom/android/server/power/PowerManagerService;->napInternal(IJZ)V

    goto :goto_69

    :cond_5e
    if-eqz p1, :cond_69

    iget v0, p2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p2, Lcom/android/server/power/PowerManagerService;->mDirty:I

    invoke-virtual {p2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_69
    :goto_69
    monitor-exit p3

    goto :goto_6e

    :catchall_6b
    move-exception p0

    monitor-exit p3
    :try_end_6d
    .catchall {:try_start_29 .. :try_end_6d} :catchall_6b

    throw p0

    :cond_6e
    :goto_6e
    :try_start_6e
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter p2
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_94

    :try_start_71
    monitor-enter p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_8e

    :try_start_72
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p3, :cond_86

    const-string/jumbo p3, "statusbar"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_86

    :catchall_84
    move-exception p1

    goto :goto_90

    :cond_86
    :goto_86
    iget-object p3, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_88
    .catchall {:try_start_72 .. :try_end_88} :catchall_84

    :try_start_88
    monitor-exit p0

    invoke-interface {p3, p1}, Lcom/android/internal/statusbar/IStatusBarService;->suppressAmbientDisplay(Z)V

    monitor-exit p2
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_8e

    return-void

    :catchall_8e
    move-exception p0

    goto :goto_92

    :goto_90
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_84

    :try_start_91
    throw p1

    :goto_92
    monitor-exit p2
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_8e

    :try_start_93
    throw p0
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_94} :catch_94

    :catch_94
    move-exception p0

    const-string p1, "AmbientDisplaySuppressionController"

    const-string p2, "Failed to suppress ambient display"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
