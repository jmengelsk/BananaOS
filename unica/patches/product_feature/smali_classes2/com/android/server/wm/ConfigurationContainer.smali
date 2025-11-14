.class public abstract Lcom/android/server/wm/ConfigurationContainer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final BOUNDS_CHANGE_NONE:I = 0x0

.field static final BOUNDS_CHANGE_POSITION:I = 0x1

.field static final BOUNDS_CHANGE_SIZE:I = 0x2


# instance fields
.field private mChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ConfigurationContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mHasOverrideConfiguration:Z

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mRequestsTmpConfig:Landroid/content/res/Configuration;

.field private mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

.field private final mResolvedTmpConfig:Landroid/content/res/Configuration;

.field private mReturnBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V
    .locals 14

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    if-nez p0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v2, 0x90d3a73

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result v2

    const/4 v10, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-wide/32 v4, 0x138268ed

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v10

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v4, v10

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    if-nez p5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v5, v5, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    :cond_4
    if-nez p4, :cond_5

    if-eqz v0, :cond_1c

    if-nez p6, :cond_1c

    if-ne v5, v6, :cond_5

    goto/16 :goto_a

    :cond_5
    if-eqz v4, :cond_6

    goto/16 :goto_a

    :cond_6
    if-eqz p5, :cond_7

    iget-object v0, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iput v3, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v3, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, v8, Landroid/content/res/Configuration;->orientation:I

    :cond_7
    if-eq v5, v10, :cond_9

    const/4 v0, 0x3

    if-ne v5, v0, :cond_8

    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_3

    :cond_9
    :goto_2
    move v4, v10

    :goto_3
    if-eqz v4, :cond_a

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_4

    :cond_a
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_4
    if-eqz v4, :cond_b

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_5

    :cond_b
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_5
    iget-object v7, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_c
    iget-object v7, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v7, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p7, :cond_f

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_e

    iget v12, v11, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    if-nez v12, :cond_d

    iget v13, v11, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    if-eqz v13, :cond_e

    :cond_d
    iget v13, v11, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    invoke-virtual {v7, v13, v12}, Landroid/graphics/Rect;->offset(II)V

    iget v12, v11, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    iget v13, v11, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    invoke-virtual {v9, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    :cond_e
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isSplitStashed()Z

    move-result v3

    goto :goto_6

    :cond_f
    move-object/from16 v11, p7

    :cond_10
    :goto_6
    iget-object v12, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v12, v5, v0, v6}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v5

    const/4 v12, 0x6

    if-eqz v3, :cond_11

    goto :goto_7

    :cond_11
    iget-object v13, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_12

    iget-object v13, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v13

    if-ne v13, v12, :cond_12

    iget-object v13, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_12
    :goto_7
    if-eqz v3, :cond_13

    goto :goto_8

    :cond_13
    iget-object v3, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    if-ne v3, v12, :cond_14

    iget-object v3, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_14
    :goto_8
    if-eqz v11, :cond_16

    iget v3, v11, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    if-nez v3, :cond_15

    iget v5, v11, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    if-eqz v5, :cond_16

    :cond_15
    iget v5, v11, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    neg-int v5, v5

    neg-int v3, v3

    invoke-virtual {v7, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v3, v11, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    neg-int v3, v3

    iget v5, v11, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    neg-int v5, v5

    invoke-virtual {v9, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_16
    iget v3, v8, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_17

    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    :cond_17
    const v5, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v5

    iget v5, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v5, :cond_18

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v5, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v5, :cond_19

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v5, v7

    float-to-int v3, v5

    iput v3, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v3, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v3, :cond_1a

    if-ne v2, v10, :cond_1a

    new-instance v3, Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v3, v2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v9, 0x1

    move-object v2, p0

    move v5, v0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/DisplayContent;->computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V

    :cond_1a
    iget p0, v8, Landroid/content/res/Configuration;->orientation:I

    if-nez p0, :cond_1c

    iget p0, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt p0, v0, :cond_1b

    goto :goto_9

    :cond_1b
    const/4 v10, 0x2

    :goto_9
    iput v10, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-static/range {p2 .. p3}, Lcom/android/server/wm/MultiTaskingAppCompatController;->adjustToOrientationRespectedWithBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_1c
    :goto_a
    return-void
.end method

.method public static equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1

    if-eq p0, p1, :cond_2

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isCompatibleActivityType(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v3, 0x30

    and-int/lit8 p1, p1, 0x30

    if-ne v4, p1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v3, -0x31

    or-int/2addr p1, v3

    iput p1, v2, Landroid/content/res/Configuration;->uiMode:I

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, p2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iput-boolean v1, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    move p2, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p2, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    if-nez p3, :cond_4

    move p3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_4
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/ConfigurationContainer;->setOverrideGender(Landroid/content/res/Configuration;I)Z

    move-result p3

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_6
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    return v0

    :cond_8
    :goto_5
    return v1
.end method

.method public containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public diffRequestedOverrideBounds(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    or-int/lit8 p0, v1, 0x2

    return p0
.end method

.method public diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentRequestedOverrideMaxBounds(Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    or-int/lit8 p0, v1, 0x2

    return p0
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ConfigurationContainer;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    return-void
.end method

.method public dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    invoke-static {v0}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_3

    const-string/jumbo v5, "\u2514\u2500 "

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "\u251c\u2500 "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " override-mode="

    const-string v5, " requested-bounds="

    invoke-static {v4, v1, v0, v3, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bounds="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    const-string p2, "   "

    goto :goto_1

    :cond_4
    const-string/jumbo p2, "\u2502  "

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_2
    if-ltz p3, :cond_6

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-nez p3, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/ConfigurationContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-----------------------------------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Full="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Merg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "   Over="

    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "   Over(Request)="

    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   Over(Resolve)="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/ConfigurationContainer;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7

    const-wide p2, 0x10b00000001L

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x2

    if-ne p4, v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    :cond_2
    const-wide p2, 0x10b00000002L

    if-nez p4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1, p2, p3, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget-object v4, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    const-wide v5, 0x10b00000003L

    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZ)V

    :cond_3
    if-ne p4, v2, :cond_4

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v2, 0x10b00000013L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public equivalentRequestedOverrideBounds(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public equivalentRequestedOverrideMaxBounds(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getActivityType()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public abstract getChildCount()I
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getMaxBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getParent()Lcom/android/server/wm/ConfigurationContainer;
.end method

.method public getPosition(Landroid/graphics/Point;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public getRequestedOverrideBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRequestedOverrideBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRequestedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getRequestedOverrideMaxBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRequestedOverrideWindowingMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public getResolvedOverrideBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mReturnBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getResolvedOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public getStagePosition()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p0

    return p0
.end method

.method public getStageType()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result p0

    return p0
.end method

.method public getWindowConfiguration()Landroid/app/WindowConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    return-object p0
.end method

.method public getWindowingMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    return p0
.end method

.method public hasChild()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasOverrideBounds()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasRequestedOverrideConfiguration()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    return p0
.end method

.method public hasStagePosition(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inFlexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result p0

    return p0
.end method

.method public inFreeformWindowingMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inFullscreenWindowingMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inMultiWindowMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    return p0
.end method

.method public inPinnedWindowingMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inSplitScreenWindowingMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    move-result p0

    return p0
.end method

.method public isActivityTypeAssistant()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActivityTypeDream()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActivityTypeHome()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isActivityTypeHomeOrRecents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isActivityTypeRecents()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActivityTypeStandard()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActivityTypeStandardOrUndefined()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isAlwaysOnTop()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    return p0
.end method

.method public isAlwaysOnTopFreeform()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCompatible(II)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, p2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v1, p1, :cond_1

    move v2, v3

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    if-eqz p2, :cond_3

    if-ne p2, v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public isDesktopModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p0

    return p0
.end method

.method public isNewDexMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p0

    return p0
.end method

.method public matchParentBounds()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->unsetAlwaysOnTop()V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ConfigurationContainerListener;

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ConfigurationContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onMergedOverrideConfigurationChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->unsetAlwaysOnTop()V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getParent()Lcom/android/server/wm/ConfigurationContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public providesMaxBounds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V

    return-void
.end method

.method public registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, p2}, Lcom/android/server/wm/ConfigurationContainerListener;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-interface {p1, p0}, Lcom/android/server/wm/ConfigurationContainerListener;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mResolvedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setActivityType(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setActivityType\'s exception occurs, name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change activity type once set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " activityType="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnTop(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(Z)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setBounds(IIII)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->providesMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0
.end method

.method public setDexTaskDocking(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setEmbedActivityMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setOverrideGender(Landroid/content/res/Configuration;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setStageType(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setStageType(I)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setWindowingMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestsTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode()Z

    move-result p0

    return p0
.end method

.method public unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateRequestedOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    iget-object v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/wm/ConfigurationContainer;->mHasOverrideConfiguration:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->providesMaxBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideMaxBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/ConfigurationContainer;->mRequestedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
