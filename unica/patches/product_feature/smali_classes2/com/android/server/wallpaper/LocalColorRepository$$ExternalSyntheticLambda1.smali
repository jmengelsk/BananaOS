.class public final synthetic Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/LocalColorRepository;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/RectF;

.field public final synthetic f$3:Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/LocalColorRepository;ILandroid/graphics/RectF;Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iput p2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/RectF;

    iput-object p4, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wallpaper/LocalColorRepository;

    iget v1, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$2:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/server/wallpaper/LocalColorRepository$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;

    check-cast p1, Landroid/app/ILocalWallpaperColorConsumer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/app/ILocalWallpaperColorConsumer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/wallpaper/LocalColorRepository;->mLocalColorAreas:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
