.class public final Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

.field public mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    return-void
.end method


# virtual methods
.method public final destroyAndRebindRemoteService()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    const-string/jumbo v2, "WallpaperEffectsGenerationPerUserService"

    if-eqz v1, :cond_1

    const-string v1, "Destroying the old remote service."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Rebinding to the new remote service."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v0}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->reconnect()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
    .locals 8

    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    if-nez v3, :cond_1

    check-cast v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    iget-boolean p0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "WallpaperEffectsGenerationPerUserService"

    const-string/jumbo v0, "ensureRemoteServiceLocked(): not set"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->isBindInstantServiceAllowed()Z

    move-result v6

    iget-boolean v7, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    iget v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;ZZ)V

    iput-object v1, v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    goto :goto_0

    :cond_2
    move-object v5, p0

    :goto_0
    iget-object p0, v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    return-object p0
.end method

.method public final invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 7

    const-string/jumbo v0, "]"

    const-string/jumbo v1, "WallpaperEffectsGenerationPerUserService"

    iget-object v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    const-string v3, "Error invoking cinematic effect listener for task["

    const-string v4, "Cinematic effect listener not found for task["

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v6, :cond_0

    iget-object v6, v6, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    if-eqz v6, :cond_0

    invoke-interface {v6, p1}, Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;->onCinematicEffectGenerated(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean p1, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    iget-object v4, v4, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    return-void

    :catch_0
    :try_start_1
    iget-boolean p1, v2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    iget-object v2, v2, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iput-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    return-void

    :goto_1
    iput-object v5, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    throw p1
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-wide/16 v1, 0x80

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v0, "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "WallpaperEffectsGenerationService from \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not require permission android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WallpaperEffectsGenerationPerUserService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Service does not require permission android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v0, "Could not get service for "

    invoke-static {p1, v0}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$$ExternalSyntheticOutline0;->m(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    const-string/jumbo p1, "WallpaperEffectsGenerationPerUserService"

    const-string/jumbo v0, "remote wallpaper effects generation service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    return-void
.end method

.method public final updateLocked(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    return p1
.end method

.method public final updateRemoteServiceLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mRemoteService:Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->mCinematicEffectListenerWrapper:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse$Builder;->build()Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    :cond_1
    return-void
.end method
