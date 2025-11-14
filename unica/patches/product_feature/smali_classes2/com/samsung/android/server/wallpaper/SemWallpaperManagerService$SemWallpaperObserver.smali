.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mDesktopWallpaperFile:Ljava/io/File;

.field public final mDesktopWallpaperLockFile:Ljava/io/File;

.field public final mLockWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

.field public final mSubDisplayWallpaperFile:Ljava/io/File;

.field public final mSubDisplayWallpaperLockFile:Ljava/io/File;

.field public final mVirtualDisplayWallpaperFile:Ljava/io/File;

.field public final mWallpaperDir:Ljava/io/File;

.field public final mWallpaperFile:Ljava/io/File;

.field public final mWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

.field public final mWallpaperLockDir:Ljava/io/File;

.field public final mWallpaperLockFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    const-string/jumbo v0, "SemWallpaperManagerService"

    const-string/jumbo v1, "SemWallpaperObserver"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperDir:Ljava/io/File;

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mSubDisplayWallpaperLockFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x21

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mVirtualDisplayWallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperUtils;->getInfoFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    new-instance p2, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    iput-object p3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-void
.end method


# virtual methods
.method public final getLockWallpaperFileObserver()Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getLockWallpaperFileObserver: mLockWallpaperFileObserver = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWallpaperLockDir.getAbsolutePath() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;->mLockWallpaperFileObserver:Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver$1;

    return-object p0
.end method
