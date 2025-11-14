.class public final Lcom/samsung/android/server/wallpaper/SemWallpaperData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public mAnimatedBackground:Ljava/io/File;

.field public mAnimatedPkgName:Ljava/lang/String;

.field public mDlsSemColors:Landroid/app/SemWallpaperColors;

.field public mExternalParams:Landroid/os/Bundle;

.field public mIsCopied:Z

.field public mIsDesktopWallpaper:Z

.field public mIsPreloaded:Z

.field public mLandscapeColors:[Landroid/app/SemWallpaperColors;

.field public mLastCallingPackage:Ljava/lang/String;

.field public mLastClearCallstackWithNullPackage:Ljava/lang/String;

.field public mMotionBackground:Ljava/io/File;

.field public mMotionPkgName:Ljava/lang/String;

.field public mOrientation:I

.field public mPrimarySemColors:Landroid/app/SemWallpaperColors;

.field public mSmartCropOriginalRect:Landroid/graphics/Rect;

.field public mSmartCropRect:Landroid/graphics/Rect;

.field public mTimeCreated:Ljava/lang/String;

.field public mUri:Ljava/lang/String;

.field public mVideoDefaultHasBeenUsed:Z

.field public mVideoFileName:Ljava/lang/String;

.field public mVideoFilePath:Ljava/lang/String;

.field public mVideoFirstFrameFile:Ljava/io/File;

.field public mVideoPkgName:Ljava/lang/String;

.field public mWaitingForUnlockUser:Z

.field public mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

.field public mWhich:I

.field public mWpType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    new-instance v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;-><init>(Lcom/samsung/android/server/wallpaper/SemWallpaperData;)V

    iput-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    const-string/jumbo p0, "SemWallpaperData"

    invoke-static {p0, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/samsung/android/server/wallpaper/SemWallpaperData;
    .registers 6

    const-string/jumbo v0, "SemWallpaperData"

    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v2}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    if-eqz v2, :cond_2f

    invoke-static {v2}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->cloneBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    goto :goto_2f

    :catch_2c
    move-exception p0

    goto/16 :goto_b4

    :cond_2f
    :goto_2f
    iget v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x4

    if-eq v2, v3, :cond_49

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3c

    goto :goto_52

    :cond_3c
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    goto :goto_52

    :cond_49
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    goto :goto_52

    :cond_4e
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    :goto_52
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    :cond_5c
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    :cond_66
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_73

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    :cond_73
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_80

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    :cond_80
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v2, :cond_9e

    array-length v2, v2

    new-array v2, v2, [Landroid/app/SemWallpaperColors;

    iput-object v2, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    const/4 v2, 0x0

    :goto_8a
    iget-object v3, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    array-length v4, v3

    if-ge v2, v4, :cond_9e

    aget-object v3, v3, v2

    if-eqz v3, :cond_9b

    iget-object v4, v1, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors;->clone()Landroid/app/SemWallpaperColors;

    move-result-object v3

    aput-object v3, v4, v2

    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    :cond_9e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clone: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_b3} :catch_2c

    return-object v1

    :goto_b4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->clone()Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    move-result-object p0

    return-object p0
.end method

.method public final getLastCallingPackage(Z)Ljava/lang/String;
    .registers 5

    const-string v0, "("

    const-string/jumbo v1, "]"

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object p0

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    :try_start_14
    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :catch_2b
    move-exception p1

    goto :goto_43

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_42} :catch_2b

    return-object p0

    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getLastCallingPackage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "SemWallpaperData"

    invoke-static {v0, p1}, Lcom/samsung/android/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getWallpaperHistory()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p0, ""

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    goto :goto_27

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_11

    throw p0
.end method

.method public final getWallpaperHistoryList()Ljava/util/ArrayList;
    .registers 6

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    goto :goto_34

    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1e
    :goto_1e
    if-ge v3, v2, :cond_32

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->getWallpaperHistoryData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    monitor-exit v0

    return-object v1

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_15

    throw p0
.end method

.method public final setWallpaperHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    iget-object v0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->callingPackageName:Ljava/lang/String;

    if-nez p2, :cond_2b

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->this$0:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    goto :goto_2d

    :cond_2b
    iput-object p2, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->time:Ljava/lang/String;

    :goto_2d
    iput-object p3, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->type:Ljava/lang/String;

    iput-object p4, v2, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy$WallpaperHistoryData;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x14

    if-le p1, p2, :cond_47

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;->wallpaperHistoryDataList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_47

    :catchall_45
    move-exception p0

    goto :goto_49

    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_45

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    const-string v1, "\n    mTimeCreated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mTimeCreated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    mHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsCopied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsCopied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsPreloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWhich=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWhich:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mWpType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mLastCallingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mExternalParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WallpaperExtraBundleHelper;->toJson(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8b

    const-string v1, "\n    mMotionPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mMotionPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b

    :catch_88
    move-exception p0

    goto/16 :goto_135

    :cond_8b
    :goto_8b
    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9a

    const-string v1, "\n    mAnimatedPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mAnimatedPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I
    :try_end_9c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9c} :catch_88

    const/16 v2, 0x8

    const-string v3, ", mVideoFileName="

    if-ne v1, v2, :cond_c8

    :try_start_a2
    const-string v1, "\n    mVideoFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoDefaultHasBeenUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_c8
    iget v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_d5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d5
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DESKTOP_MODE:Z

    if-eqz v1, :cond_e3

    const-string v1, "\n    mIsDesktopWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mIsDesktopWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_e3
    const-string v1, "\n    mPrimarySemColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mDlsSemColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mDlsSemColors:Landroid/app/SemWallpaperColors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mSmartCropOriginalRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropOriginalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmartCropRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mSmartCropRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    if-eqz v1, :cond_120

    array-length v2, v1

    const/4 v3, 0x0

    :goto_111
    if-ge v3, v2, :cond_120

    aget-object v4, v1, v3

    const-string v5, "\n    mLandscapeColors="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_111

    :cond_120
    const-string v1, "\n    mWallpaperHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/android/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mLastClearCallstackWithNullPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->mLastClearCallstackWithNullPackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_134
    .catch Ljava/lang/NullPointerException; {:try_start_a2 .. :try_end_134} :catch_88

    goto :goto_138

    :goto_135
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
