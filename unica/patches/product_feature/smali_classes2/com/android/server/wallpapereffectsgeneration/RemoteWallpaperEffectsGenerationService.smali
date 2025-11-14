.class public final Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;ZZ)V
    .registers 17

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    if-eqz p5, :cond_a

    const/high16 p5, 0x400000

    :goto_8
    move v7, p5

    goto :goto_c

    :cond_a
    const/4 p5, 0x0

    goto :goto_8

    :goto_c
    const/4 v9, 0x1

    const-string/jumbo v2, "android.service.wallpapereffectsgeneration.WallpaperEffectsGenerationService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    iput-object p4, p0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    return-void
.end method


# virtual methods
.method public final executeOnResolvedService(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->executeAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    return-void
.end method

.method public final getRemoteRequestMillis()J
    .registers 3

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public final getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    invoke-static {p1}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    move-result-object p0

    return-object p0
.end method

.method public final getTimeoutIdleBindMillis()J
    .registers 3

    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method

.method public final handleOnConnectedStateChanged(Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/RemoteWallpaperEffectsGenerationService;->mCallback:Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    if-eqz p0, :cond_12

    if-nez p1, :cond_12

    const-string/jumbo p1, "WallpaperEffectsGenerationPerUserService"

    const-string/jumbo v0, "remote wallpaper effects generation service disconnected"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->updateRemoteServiceLocked()V

    :cond_12
    return-void
.end method

.method public final reconnect()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->scheduleBind()V

    return-void
.end method
