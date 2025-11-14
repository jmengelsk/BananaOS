.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

.field public final wallpaperHistoryDataList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wallpaper/SemWallpaperData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final clone()Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;
    .locals 2

    new-instance v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperData;)V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    const-string v2, "\n\thistory - [time]::[callingPkg]::[type]::[contents]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getWallpaperHistoryData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
