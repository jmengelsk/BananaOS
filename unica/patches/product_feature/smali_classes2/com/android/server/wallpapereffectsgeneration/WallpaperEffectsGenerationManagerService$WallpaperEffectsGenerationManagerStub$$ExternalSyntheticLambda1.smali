.class public final synthetic Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

.field public final synthetic f$1:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    iput-object p2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$1:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda1;->f$1:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;->getTaskId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    const-string/jumbo v3, "]"

    const-string/jumbo v4, "WallpaperEffectsGenerationPerUserService"

    iget-object v5, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-interface {p0, v0}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-boolean p0, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "RemoteException invoking cinematic effect listener for task["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    iget-object p1, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    invoke-static {p0, p1, v3, v4}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->executeOnResolvedService(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;)V

    new-instance v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;-><init>(Ljava/lang/String;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V

    iput-object v0, p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    return-void

    :cond_2
    iget-boolean p1, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_3

    const-string/jumbo p1, "Remote service not found"

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_1
    new-instance p1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    iget-boolean p0, v5, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_4

    const-string p0, "Failed to invoke cinematic effect listener for task ["

    invoke-static {p0, v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
