.class public abstract Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static getThumbnailFile(II)Ljava/io/File;
    .registers 5

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    const-string/jumbo p1, "_land"

    goto :goto_d

    :cond_b
    const-string p1, ""

    :goto_d
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object v0

    goto :goto_1b

    :cond_17
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    :goto_1b
    const-string/jumbo v2, "wallpaper_thumb_"

    invoke-static {p0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static removeThumbnailFiles(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->getThumbnailFile(II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->getThumbnailFile(II)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1c
    return-void
.end method
