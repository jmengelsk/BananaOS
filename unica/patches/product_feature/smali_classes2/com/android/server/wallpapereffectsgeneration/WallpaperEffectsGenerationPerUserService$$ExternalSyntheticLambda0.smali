.class public final synthetic Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;

    check-cast p1, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;

    invoke-interface {p1, p0}, Landroid/service/wallpapereffectsgeneration/IWallpaperEffectsGenerationService;->onGenerateCinematicEffect(Landroid/app/wallpapereffectsgeneration/CinematicEffectRequest;)V

    return-void
.end method
