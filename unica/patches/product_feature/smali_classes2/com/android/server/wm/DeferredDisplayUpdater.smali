.class public final Lcom/android/server/wm/DeferredDisplayUpdater;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mLastDisplayInfo:Landroid/view/DisplayInfo;

.field public mLastWmDisplayInfo:Landroid/view/DisplayInfo;

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOutputDisplayInfo:Landroid/view/DisplayInfo;

.field public final mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

.field public mScreenUnblocker:Landroid/os/Message;

.field public mShouldWaitForTransitionWhenScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;I)V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public static calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I
    .registers 8

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-eqz p0, :cond_1c4

    if-nez p1, :cond_e

    goto/16 :goto_1c4

    :cond_e
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v2, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v2, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    iget v2, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v2, p1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-ne v0, v2, :cond_13a

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_13a

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget v2, p1, Landroid/view/DisplayInfo;->committedState:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v0, v2, :cond_13a

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDim:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    iget v2, p1, Landroid/view/DisplayInfo;->installOrientation:I

    if-ne v0, v2, :cond_13a

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iget v2, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    :cond_13a
    const/4 v1, 0x2

    :cond_13b
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v2, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v2, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v2, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v2, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-boolean p0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-boolean p1, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-eq p0, p1, :cond_1c0

    goto :goto_1c1

    :cond_1c0
    return v1

    :cond_1c1
    :goto_1c1
    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_1c4
    :goto_1c4
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final applyLatestDisplayInfo()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v4, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    if-eqz v3, :cond_12

    invoke-interface {v4, v1, v3}, Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;->setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V

    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v9, 0x1

    const/4 v4, 0x0

    if-eq v3, v9, :cond_36

    const/4 v5, 0x3

    if-ne v3, v5, :cond_34

    goto :goto_36

    :cond_34
    move v3, v4

    goto :goto_37

    :cond_36
    :goto_36
    move v3, v9

    :goto_37
    if-eqz v3, :cond_3c

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_3e

    :cond_3c
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_3e
    if-eqz v3, :cond_43

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_45

    :cond_43
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_45
    iget v6, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v7, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v10, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-boolean v11, v2, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v11, :cond_52

    sget-object v11, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    goto :goto_54

    :cond_52
    iget-object v11, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_54
    iget-object v12, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v13, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v14, v5, :cond_8d

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v14, v3, :cond_8d

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne v14, v6, :cond_8d

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    cmpl-float v14, v14, v7

    if-nez v14, :cond_8d

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    cmpl-float v14, v14, v10

    if-nez v14, :cond_8d

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8d

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8d

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-static {v14, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8b

    goto :goto_8d

    :cond_8b
    move v14, v4

    goto :goto_8e

    :cond_8d
    :goto_8d
    move v14, v9

    :goto_8e
    iget-object v15, v2, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v14, :cond_98

    if-nez v15, :cond_175

    :cond_98
    if-nez v15, :cond_ed

    iget-object v14, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v14, v2, v4}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v4, :cond_ab

    iget-boolean v14, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-nez v14, :cond_b0

    :cond_ab
    move/from16 v16, v10

    move/from16 v17, v15

    goto :goto_df

    :cond_b0
    iget-object v14, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    move/from16 v16, v10

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    iget-object v9, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v10, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v9, v10, :cond_c4

    sget-object v10, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v9, v10, :cond_ca

    :cond_c4
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    :cond_ca
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayRotation$FoldController;->updateSensorRotationBlockIfNeeded()V

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    const/4 v14, 0x2

    invoke-direct {v10, v14, v4}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget v4, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    move/from16 v17, v15

    int-to-long v14, v4

    invoke-virtual {v9, v10, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_df
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    sget-boolean v9, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    if-eqz v9, :cond_e9

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->updateCachedDecorInsets()V

    goto :goto_f1

    :cond_e9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_f1

    :cond_ed
    move/from16 v16, v10

    move/from16 v17, v15

    :goto_f1
    iput v5, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v3, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v6, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v7, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    move/from16 v4, v16

    iput v4, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    iput-object v11, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    iput-object v13, v2, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    iput-object v0, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    iput-object v12, v2, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    iget-boolean v0, v2, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_10b

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :cond_10b
    if-eqz v0, :cond_10f

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :cond_10f
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v9, :cond_115

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_115
    if-eqz v0, :cond_119

    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    :cond_119
    if-eqz v0, :cond_123

    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move v4, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v10

    goto :goto_12b

    :cond_123
    move/from16 v18, v4

    move v4, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v18

    :goto_12b
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    if-nez v17, :cond_13a

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_13a
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    if-nez v17, :cond_175

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v4, 0x0

    if-nez v3, :cond_147

    goto :goto_15e

    :cond_147
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v5

    if-nez v5, :cond_154

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    goto :goto_15e

    :cond_154
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    :goto_15e
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-eqz v3, :cond_175

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-nez v3, :cond_175

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iput-object v4, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    :cond_175
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    if-eqz v3, :cond_1ba

    iget v1, v3, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v1, v3, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    iget v1, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v1, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v1, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v1, v3, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v1, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v3, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v1, v3, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v1, v3, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v1, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget v1, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v1, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v1, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v1, v3, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    :cond_1ba
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    invoke-virtual {v2, v2}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    if-eqz v0, :cond_22c

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-interface {v3, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->isDisplayControlledByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_1e6

    goto :goto_1ff

    :cond_1e6
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1f3

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    goto :goto_1ff

    :cond_1f3
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1ff

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->release(I)V

    :cond_1ff
    :goto_1ff
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v9, 0x1

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_227

    iget v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v0

    int-to-long v5, v8

    int-to-long v9, v1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x7151094ac082c431L

    const/16 v6, 0x15

    invoke-static {v0, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_227
    if-eq v8, v1, :cond_22c

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    :cond_22c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_256

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_246

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/MultiWindowFoldController;->updateMainDisplayBounds(II)V

    goto :goto_256

    :cond_246
    const/4 v3, 0x5

    if-ne v0, v3, :cond_256

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/MultiWindowFoldController;->updateCoverDisplayBounds(II)V

    :cond_256
    :goto_256
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_262

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    :cond_262
    invoke-static {v8}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-eqz v0, :cond_29e

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-nez v0, :cond_29e

    if-eqz v1, :cond_29e

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    iget v1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    :goto_27e
    if-ltz v3, :cond_29e

    iget-object v4, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v1, :cond_29b

    iget-boolean v5, v4, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    if-eqz v5, :cond_29b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->dispatchWindowContextInfoChange()V

    :cond_29b
    add-int/lit8 v3, v3, -0x1

    goto :goto_27e

    :cond_29e
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public final continueScreenUnblocking()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_b
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-nez v1, :cond_23

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_42

    :cond_23
    :try_start_23
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "Screen unblock: wait for transition"

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    new-instance v2, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v2, p0}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    invoke-virtual {v2, p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v2, v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v2, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v2, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v2
.end method

.method public final onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p3

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;I)V

    iget-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    if-nez v3, :cond_1f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    :cond_1f
    iget-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3, p3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p3

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;)V

    invoke-virtual {v0, p2, v1, p3, v2}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    move-result p0

    if-nez p0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    :cond_3e
    return-void
.end method

.method public final updateDisplayInfo(Ljava/lang/Runnable;)V
    .registers 18

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    new-instance v2, Landroid/view/DisplayInfo;

    iget-object v3, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v2, v3}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iget-object v3, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v3, v2}, Lcom/android/server/wm/DeferredDisplayUpdater;->calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I

    move-result v3

    iget-object v4, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    iget-object v4, v4, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v6, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    goto :goto_2c

    :cond_2b
    move v4, v5

    :goto_2c
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4d

    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManagerInternal;->isChangingPreferredMode()Z

    move-result v8

    if-eqz v8, :cond_4d

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_4d

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    iget v9, v2, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v8, v9, :cond_4d

    move v8, v5

    goto :goto_4e

    :cond_4d
    move v8, v7

    :goto_4e
    iput-object v2, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz v9, :cond_5d

    if-eqz v4, :cond_5d

    iget-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_5d

    invoke-virtual {v0, v7, v5}, Lcom/android/server/wm/DisplayContent;->setRotatingOrDisplaySwitching(ZZ)V

    :cond_5d
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x5

    if-eq v3, v11, :cond_6c

    iget-boolean v11, v0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z

    if-nez v11, :cond_6c

    iget-boolean v11, v0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v11, :cond_70

    :cond_6c
    :goto_6c
    move-object/from16 v5, p1

    goto/16 :goto_f4

    :cond_70
    iget-object v11, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v11}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v11

    if-nez v11, :cond_79

    goto :goto_6c

    :cond_79
    and-int/lit8 v6, v3, 0x2

    if-lez v6, :cond_a4

    aget-boolean v6, v9, v7

    if-eqz v6, :cond_9f

    iget v6, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v13, v6

    iget v6, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    move v11, v5

    int-to-long v5, v6

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v13, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v13, -0x1ef6e555996fc930L  # -2.7573599476281914E159

    invoke-static {v15, v13, v14, v12, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_a0

    :cond_9f
    move v11, v5

    :goto_a0
    invoke-virtual {v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    goto :goto_a5

    :cond_a4
    move v11, v5

    :goto_a5
    and-int/2addr v3, v11

    if-lez v3, :cond_ee

    aget-boolean v3, v9, v7

    if-eqz v3, :cond_c8

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v5, v3

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v13, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v13, -0x5f08404952fac35bL  # -7.255132065554498E-150

    invoke-static {v3, v13, v14, v12, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_c8
    new-instance v3, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

    move-object/from16 v5, p1

    invoke-direct {v3, v1, v2, v8, v5}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;ZLjava/lang/Runnable;)V

    move v2, v4

    new-instance v4, Lcom/android/server/wm/Transition;

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v5, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v8, 0x6

    invoke-direct {v4, v8, v7, v5, v6}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    iget-object v5, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v5, v5, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;Lcom/android/server/wm/Transition;Z)V

    invoke-virtual {v6, v4, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    return-void

    :cond_ee
    move-object/from16 v5, p1

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_f4
    aget-boolean v3, v9, v7

    if-eqz v3, :cond_114

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v3, v3

    iget v9, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v13, v9

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v13, -0x671af71b919bc78bL  # -9.442125845787946E-189

    invoke-static {v9, v13, v14, v12, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_114
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z

    if-eqz v6, :cond_121

    if-eqz v8, :cond_121

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v7}, Landroid/hardware/display/DisplayManagerInternal;->setChangingPreferredMode(Z)V

    :cond_121
    iput-object v2, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v10, :cond_136

    const/4 v3, 0x3

    if-ne v2, v3, :cond_140

    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_140

    :cond_136
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, v0, v7}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_140
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    return-void
.end method
