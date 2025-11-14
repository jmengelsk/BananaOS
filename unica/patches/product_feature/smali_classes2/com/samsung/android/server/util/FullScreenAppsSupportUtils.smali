.class public final Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCached:Z

.field public mCachedFullScreenAppsSupportMode:I

.field public final mDefaultFullScreenList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mDefaultFullScreenListForHID:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    new-instance v0, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN_HID:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenListForHID:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    return-void
.end method


# virtual methods
.method public final getFullScreenAppsSupportMode()I
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_1

    const-string v0, "FullScreenAppsSupportUtils"

    const-string v1, "DisplayManager is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_2

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_2

    const-string v0, "FullScreenAppsSupportUtils"

    const-string v1, "DisplayManagerInternal is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v1, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v0, v3}, Landroid/hardware/display/IDisplayManager;->getDisplayIds(Z)[I

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v6, v5

    :goto_0
    if-ge v7, v4, :cond_8

    aget v9, v0, v7

    invoke-virtual {v1, v9, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    iget v9, v2, Landroid/view/DisplayInfo;->type:I

    if-eq v9, v3, :cond_3

    goto :goto_1

    :cond_3
    iget v9, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    cmpg-float v12, v5, v11

    if-gez v12, :cond_4

    move v5, v11

    :cond_4
    iget-object v12, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    or-int/lit8 v8, v8, 0x2

    iget-object v11, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v11

    iget-object v12, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v12}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v12

    add-int/2addr v12, v11

    sub-int/2addr v9, v12

    iget-object v11, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v11

    iget-object v12, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v12}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v12

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v11, v9

    :cond_5
    const v9, 0x3fee147b    # 1.86f

    cmpl-float v9, v11, v9

    if-lez v9, :cond_6

    or-int/lit8 v8, v8, 0x1

    :cond_6
    cmpg-float v9, v6, v11

    if-gez v9, :cond_7

    move v6, v11

    :cond_7
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    monitor-enter p0

    :try_start_3
    iput v8, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    iput-boolean v3, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCached:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v0, "FullScreenAppsSupportUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FullScreenAppsSupportMode=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", DisplayMaxAspectRatio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", DisplayMaxAspectRatioWithCutout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    monitor-enter p0

    :try_start_5
    iget v0, p0, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mCachedFullScreenAppsSupportMode:I

    monitor-exit p0

    return v0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method
