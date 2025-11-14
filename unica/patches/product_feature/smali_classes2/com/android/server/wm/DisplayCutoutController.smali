.class public final Lcom/android/server/wm/DisplayCutoutController;
.super Lcom/android/server/wm/PackagesChange;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mCutoutInset:Landroid/graphics/Rect;

.field public final mDumpInterface:Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;

.field public final mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

.field public final mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

.field public final mRemoveCutoutOfConfiguration:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    new-instance p1, Lcom/android/server/wm/PackagesChangeAsTask$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/PackagesChangeAsTask$1;-><init>(Lcom/android/server/wm/DisplayCutoutController;)V

    sget-object v0, Lcom/android/server/wm/PackagesChange;->sTaskChangeCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/DisplayCutoutController;->mDumpInterface:Lcom/android/server/wm/DisplayCutoutController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v3, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->PACKAGE_SETTINGS_DIRECTORY:Ljava/lang/String;

    const/16 v2, 0x80

    const-string v4, "DisplayCutoutPackageMap"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;ZLcom/android/server/wm/MultiTaskingAppCompatAspectRatioOverrides$UserMinAspectRatioOverrides$$ExternalSyntheticLambda0;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object p1, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils$LazyHolder;->sUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    filled-new-array {v1}, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    new-instance v0, Lcom/android/server/wm/PackagesChange$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/PackagesChange$2;-><init>(Lcom/android/server/wm/DisplayCutoutController;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    sget-object p0, Lcom/android/server/wm/PackagesChange;->sUserChangeCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final adjustAppBoundsIfNeeded(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_e

    iget v0, v0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-static {v2}, Lcom/android/server/wm/DesktopCompatPolicy;->supportDesktopCompat(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :cond_6
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    :cond_8
    :goto_1
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_a
    :goto_2
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_c
    :goto_3
    iget-object p2, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_4

    :cond_d
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public final adjustCutoutMode(Lcom/android/server/wm/WindowState;ILandroid/view/WindowRelayoutResult;)I
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    const/high16 v1, 0x400000

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "cover_launcher_app_compat_mode"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mIsLaunchedFromMultistarCoverLauncher:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    if-ne v5, v4, :cond_2

    const-string/jumbo v5, "fullscreen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "portrait"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "landscape"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return p2

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    or-int p0, p2, v1

    return p0

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, p1, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mIsLaunchedFromAppsCoverLauncher:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return p2

    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, p1, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget v5, v0, Lcom/android/server/wm/Task;->mCutoutPolicy:I

    const/4 v6, 0x0

    if-ne v5, v4, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SET_DEFAULT_CUTOUT_POLICY_TO_ALWAYS:Z

    if-nez v0, :cond_8

    if-eqz p3, :cond_7

    iput v4, p3, Landroid/view/WindowRelayoutResult;->cutoutPolicy:I

    :cond_7
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v6

    :cond_9
    if-ne v5, v3, :cond_b

    if-eqz p3, :cond_a

    iput v3, p3, Landroid/view/WindowRelayoutResult;->cutoutPolicy:I

    :cond_a
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :goto_1
    const/high16 p0, 0x200000

    or-int/2addr p0, p2

    return p0

    :cond_b
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SET_DEFAULT_CUTOUT_POLICY_TO_ALWAYS:Z

    if-nez p3, :cond_e

    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz p0, :cond_d

    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    if-eqz p0, :cond_c

    if-ne p0, v4, :cond_d

    :cond_c
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    or-int p0, p2, v1

    return p0

    :cond_d
    return p2

    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v6
.end method

.method public final clearCutoutPolicy(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->mChangeValuesAsUser:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "removePackage: success to remove "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PackageFeature"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayCutoutController;->mRemoveCutoutOfConfiguration:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "mRemoveCutoutOfConfiguration=false"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "mCutoutInset="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mNonDecorInsetsWithoutCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const-string/jumbo v0, "mUserChange="

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getPolicy(ILjava/lang/String;Z)I
    .locals 3

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiTaskingAppCompatUtils;->getAdjustedUserId(II)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mFullScreenUtils:Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;

    invoke-virtual {v1}, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->getFullScreenAppsSupportMode()I

    move-result v2

    and-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/samsung/android/server/util/FullScreenAppsSupportUtils;->mDefaultFullScreenListForHID:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/android/server/wm/DisplayCutoutController;->setPolicy(IILjava/lang/String;Z)V

    return p3

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SET_DEFAULT_CUTOUT_POLICY_TO_ALWAYS:Z

    if-nez p1, :cond_3

    return p3

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_4
    return v2
.end method

.method public final setPolicy(IILjava/lang/String;Z)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayCutoutController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz p4, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string/jumbo p3, "setCutoutPolicy"

    invoke-virtual {p0, p1, p3, v2, p2}, Lcom/android/server/wm/MultiTaskingAppCompatController;->removeTaskWithoutRemoveFromRecents(ILjava/lang/String;ZLjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
