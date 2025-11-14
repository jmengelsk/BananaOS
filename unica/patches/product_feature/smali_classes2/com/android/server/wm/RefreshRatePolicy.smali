.class public final Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public final mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

.field public mLowRefreshRateMode:Landroid/view/Display$Mode;

.field public mMaxSupportedRefreshRate:F

.field public mMinSupportedRefreshRate:F

.field public final mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

.field public final mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

.field public final mReportedRestrictHighRefreshRate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mRestrictHighRefreshRate:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;-><init>(Lcom/android/server/wm/RefreshRatePolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    new-instance v0, Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-direct {v0}, Lcom/android/server/wm/RefreshRatePolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRestrictHighRefreshRate:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mReportedRestrictHighRefreshRate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz p1, :cond_39

    new-instance p1, Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-direct {p1}, Lcom/android/server/wm/RefreshRatePolicyLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    :cond_39
    return-void
.end method

.method public static shouldIgnoreRestrictedRange(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-ne v0, v1, :cond_20

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-nez p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;
    .registers 8

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz v1, :cond_f

    iget-object v1, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->getDefaultRefreshRatesLegacy([Landroid/view/Display$Mode;)[F

    move-result-object v1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    :goto_13
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    iput v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_1e
    if-ltz v2, :cond_4c

    iget v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    aget v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    iget v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    aget v4, v1, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    aget v3, v1, v2

    const/high16 v4, 0x42700000  # 60.0f

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_49

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v5, :cond_44

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_48

    :cond_44
    cmpg-float v4, v3, v0

    if-gez v4, :cond_49

    :cond_48
    move v0, v3

    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_4c
    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .registers 7

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    const/4 v2, 0x0

    if-gtz v1, :cond_9

    goto/16 :goto_8a

    :cond_9
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v3, :cond_10

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_10
    const-string v0, ""

    :goto_12
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2b
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    iget-object v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mLowRefreshRateList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v3, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_4a
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HRR_CHINA_DELTA:Z

    if-eqz p0, :cond_8e

    if-eqz v1, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    if-eqz p0, :cond_8e

    iget-object p0, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8e

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz p0, :cond_6d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    goto :goto_73

    :cond_6d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    :goto_73
    array-length p1, p0

    move v0, v2

    :goto_75
    if-ge v0, p1, :cond_8e

    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne v1, v4, :cond_8b

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    const v4, 0x42effae1  # 119.99f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8b

    :goto_8a
    return v2

    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_8e
    return v1
.end method

.method public final getRefreshRateFromFixedRefreshRatePackages(Lcom/android/server/wm/WindowState;)F
    .registers 7

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_34

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne p0, v4, :cond_31

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    return p0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_34
    return v2
.end method

.method public final updateLog(Lcom/android/server/wm/WindowState;IFI)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;

    if-eqz p0, :cond_63

    iget-object p4, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    if-ne p4, p1, :cond_1a

    iget p4, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    if-ne p4, p2, :cond_1a

    iget p4, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    cmpl-float p4, p4, p3

    if-eqz p4, :cond_63

    :cond_1a
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    iput p2, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    iput p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mHistory:Lcom/samsung/android/core/SystemHistory;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Requested ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    const/high16 p4, -0x40800000  # -1.0f

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_3e

    const-string p3, " refreshRate="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mRefreshRate:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3e
    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_4d

    const-string p3, " modeId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mModeId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4d
    const-string p3, " w="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/RefreshRatePolicyLogger$RefreshRateHistory;->mLastRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/core/SystemHistory;->add(Ljava/lang/String;)V

    :cond_63
    return-void
.end method
