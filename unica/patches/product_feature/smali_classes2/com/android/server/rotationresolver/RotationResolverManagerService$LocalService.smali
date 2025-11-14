.class public final Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;
.super Landroid/rotationresolver/RotationResolverInternal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-direct {p0}, Landroid/rotationresolver/RotationResolverInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRotationResolverSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final resolveRotation(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Ljava/lang/String;IIJLandroid/os/CancellationSignal;)V
    .registers 17

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-object v0, v0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$LocalService;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    iget-boolean v2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService;->mIsServiceEnabled:Z

    if-eqz v2, :cond_45

    if-nez v0, :cond_45

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    if-nez p2, :cond_36

    new-instance v2, Landroid/service/rotationresolver/RotationResolutionRequest;

    const-string v3, ""

    const/4 v6, 0x1

    move v5, p3

    move v4, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    :goto_30
    move-object/from16 p2, p7

    goto :goto_41

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    :cond_36
    new-instance v2, Landroid/service/rotationresolver/RotationResolutionRequest;

    const/4 v6, 0x1

    move-object v3, p2

    move v5, p3

    move v4, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Landroid/service/rotationresolver/RotationResolutionRequest;-><init>(Ljava/lang/String;IIZJ)V

    goto :goto_30

    :goto_41
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->resolveRotationLocked(Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;)V

    goto :goto_6b

    :cond_45
    if-nez v0, :cond_51

    const-string/jumbo p0, "RotationResolverManagerService"

    const-string/jumbo p2, "Rotation Resolver service is disabled."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_51
    const-string/jumbo p0, "RotationResolverManagerService"

    const-string p2, "Camera is locked by a toggle."

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    invoke-static {p4}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result p0

    invoke-static {p3}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->surfaceRotationToProto(I)I

    move-result p1

    const/16 p2, 0x148

    const/4 p3, 0x6

    invoke-static {p2, p0, p1, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :goto_6b
    monitor-exit v1

    return-void

    :goto_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_b .. :try_end_6e} :catchall_33

    throw p0
.end method
