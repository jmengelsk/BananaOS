.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic f$2:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;->f$1:Lcom/android/server/wallpaper/WallpaperData;

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;->f$2:Lcom/android/server/wallpaper/WallpaperData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;->f$1:Lcom/android/server/wallpaper/WallpaperData;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;->f$2:Lcom/android/server/wallpaper/WallpaperData;

    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_0
    if-eq p0, v1, :cond_1

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method
