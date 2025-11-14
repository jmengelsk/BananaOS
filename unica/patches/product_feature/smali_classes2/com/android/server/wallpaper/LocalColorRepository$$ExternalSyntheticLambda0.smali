.class public final synthetic Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final synthetic f$1:Landroid/app/ILocalWallpaperColorConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/LocalColorRepository;Landroid/app/ILocalWallpaperColorConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iput-object p2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$1:Landroid/app/ILocalWallpaperColorConsumer;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda0;->f$1:Landroid/app/ILocalWallpaperColorConsumer;

    iget-object v0, v0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-interface {p0}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
