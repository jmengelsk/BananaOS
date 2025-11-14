.class public abstract Lcom/android/server/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sPerUserFiles:[Ljava/lang/String;

.field public static final sPerUserLockFiles:[Ljava/lang/String;

.field public static sWallpaperId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string/jumbo v10, "wallpaper_virtual_display"

    const-string/jumbo v11, "wallpaper_virtualdisplay_info.xml"

    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_info.xml"

    const-string/jumbo v3, "wallpaper_sub_display_orig"

    const-string/jumbo v4, "wallpaper_sub_display"

    const-string/jumbo v5, "wallpaper_subdisplay_info.xml"

    const-string/jumbo v6, "wallpaper_desktop_orig"

    const-string/jumbo v7, "wallpaper_desktop"

    const-string/jumbo v8, "wallpaper_desktop_info.xml"

    const-string/jumbo v9, "wallpaper_virtual_display_orig"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserFiles:[Ljava/lang/String;

    const-string/jumbo v5, "wallpaper_desktop_lock_orig"

    const-string/jumbo v6, "wallpaper_desktop_lock"

    const-string/jumbo v1, "wallpaper_lock_orig"

    const-string/jumbo v2, "wallpaper_lock"

    const-string/jumbo v3, "wallpaper_sub_display_lock_orig"

    const-string/jumbo v4, "wallpaper_sub_display_lock"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserLockFiles:[Ljava/lang/String;

    return-void
.end method

.method public static getCropFileName(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    if-ne p0, v2, :cond_0

    const-string/jumbo p0, "wallpaper_lock"

    return-object p0

    :cond_0
    const-string/jumbo p0, "wallpaper"

    return-object p0

    :cond_1
    if-ne p0, v2, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const-string/jumbo p0, "wallpaper_virtual_display"

    return-object p0

    :cond_3
    if-ne p0, v2, :cond_4

    const-string/jumbo p0, "wallpaper_sub_display_lock"

    return-object p0

    :cond_4
    const-string/jumbo p0, "wallpaper_sub_display"

    return-object p0

    :cond_5
    if-ne p0, v2, :cond_6

    const-string/jumbo p0, "wallpaper_desktop_lock"

    return-object p0

    :cond_6
    const-string/jumbo p0, "wallpaper_desktop"

    return-object p0
.end method

.method public static getFileName(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    move-result p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    if-ne p0, v2, :cond_0

    const-string/jumbo p0, "wallpaper_lock_orig"

    return-object p0

    :cond_0
    const-string/jumbo p0, "wallpaper_orig"

    return-object p0

    :cond_1
    if-ne p0, v2, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const-string/jumbo p0, "wallpaper_virtual_display_orig"

    return-object p0

    :cond_3
    if-ne p0, v2, :cond_4

    const-string/jumbo p0, "wallpaper_sub_display_lock_orig"

    return-object p0

    :cond_4
    const-string/jumbo p0, "wallpaper_sub_display_orig"

    return-object p0

    :cond_5
    if-ne p0, v2, :cond_6

    const-string/jumbo p0, "wallpaper_desktop_lock_orig"

    return-object p0

    :cond_6
    const-string/jumbo p0, "wallpaper_desktop_orig"

    return-object p0
.end method

.method public static getInfoFileName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "wallpaper_info.xml"

    return-object p0

    :cond_0
    const-string/jumbo p0, "wallpaper_virtualdisplay_info.xml"

    return-object p0

    :cond_1
    const-string/jumbo p0, "wallpaper_subdisplay_info.xml"

    return-object p0

    :cond_2
    const-string/jumbo p0, "wallpaper_desktop_info.xml"

    return-object p0
.end method

.method public static getWallpaperFiles(I)Ljava/util/List;
    .locals 6

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserFiles:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x6

    if-ge v2, v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserLockFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static getWallpaperLockDir(I)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "wallpaper_lock_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeWallpaperIdLocked()I
    .locals 1

    :cond_0
    sget v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    if-eqz v0, :cond_0

    return v0
.end method
