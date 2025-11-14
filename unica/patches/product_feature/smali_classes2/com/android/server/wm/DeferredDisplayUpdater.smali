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
    .locals 1

    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 3

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
    .locals 6

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v2, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v2, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    iget v2, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v2, p1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-ne v0, v2, :cond_2

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget v2, p1, Landroid/view/DisplayInfo;->committedState:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDim:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    iget v2, p1, Landroid/view/DisplayInfo;->installOrientation:I

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iget v2, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x2

    :cond_3
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v2, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v2, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-boolean p1, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_6
    :goto_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final applyLatestDisplayInfo()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v4, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    if-eqz v3, :cond_0

    invoke-interface {v4, v1, v3}, Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;->setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V

    :cond_0
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

    if-eq v3, v9, :cond_2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v9

    :goto_1
    if-eqz v3, :cond_3

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_3
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_2
    if-eqz v3, :cond_4

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_3

    :cond_4
    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_3
    iget v6, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v7, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v10, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-boolean v11, v2, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v11, :cond_5

    sget-object v11, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    goto :goto_4

    :cond_5
    iget-object v11, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_4
    iget-object v12, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v13, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v14, v5, :cond_7

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v14, v3, :cond_7

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-ne v14, v6, :cond_7

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    cmpl-float v14, v14, v7

    if-nez v14, :cond_7

    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    cmpl-float v14, v14, v10

    if-nez v14, :cond_7

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    invoke-static {v14, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-static {v14, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_5

    :cond_6
    move v14, v4

    goto :goto_6

    :cond_7
    :goto_5
    move v14, v9

    :goto_6
    iget-object v15, v2, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v14, :cond_8

    if-nez v15, :cond_17

    :cond_8
    if-nez v15, :cond_e

    iget-object v14, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v14, v2, v4}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v4, :cond_9

    iget-boolean v14, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-nez v14, :cond_a

    :cond_9
    move/from16 v16, v10

    move/from16 v17, v15

    goto :goto_7

    :cond_a
    iget-object v14, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    move/from16 v16, v10

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    iget-object v9, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v10, Lcom/android/server/wm/DeviceStateController$DeviceState;->OPEN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-eq v9, v10, :cond_b

    sget-object v10, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v9, v10, :cond_c

    :cond_b
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    :cond_c
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

    :goto_7
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    sget-boolean v9, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    if-eqz v9, :cond_d

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->updateCachedDecorInsets()V

    goto :goto_8

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_e
    move/from16 v16, v10

    move/from16 v17, v15

    :goto_8
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

    if-eqz v0, :cond_f

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :cond_f
    if-eqz v0, :cond_10

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :cond_10
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v9, :cond_11

    iget v6, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_11
    if-eqz v0, :cond_12

    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    :cond_12
    if-eqz v0, :cond_13

    iget v10, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move v4, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v10

    goto :goto_9

    :cond_13
    move/from16 v18, v4

    move v4, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v18

    :goto_9
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    if-nez v17, :cond_14

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    if-nez v17, :cond_17

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v4, 0x0

    if-nez v3, :cond_15

    goto :goto_a

    :cond_15
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v5

    if-nez v5, :cond_16

    iput-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    goto :goto_a

    :cond_16
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    :goto_a
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iput-object v4, v0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    :cond_17
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    if-eqz v3, :cond_18

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

    :cond_18
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

    if-eqz v0, :cond_1d

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-interface {v3, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->isDisplayControlledByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_b

    :cond_19
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1a

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    goto :goto_b

    :cond_1a
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1b

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->release(I)V

    :cond_1b
    :goto_b
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v9, 0x1

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_1c

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

    :cond_1c
    if-eq v8, v1, :cond_1d

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateRecording()V

    :cond_1d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_1e

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/MultiWindowFoldController;->updateMainDisplayBounds(II)V

    goto :goto_c

    :cond_1e
    const/4 v3, 0x5

    if-ne v0, v3, :cond_1f

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/MultiWindowFoldController;->updateCoverDisplayBounds(II)V

    :cond_1f
    :goto_c
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    :cond_20
    invoke-static {v8}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz v1, :cond_22

    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowContextListenerController:Lcom/android/server/wm/WindowContextListenerController;

    iget v1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    :goto_d
    if-ltz v3, :cond_22

    iget-object v4, v0, Lcom/android/server/wm/WindowContextListenerController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->getWindowContainer()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v1, :cond_21

    iget-boolean v5, v4, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->mHasPendingConfiguration:Z

    if-eqz v5, :cond_21

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContextListenerController$WindowContextListenerImpl;->dispatchWindowContextInfoChange()V

    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_22
    iget-object v0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public final continueScreenUnblocking()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Screen unblock: wait for transition"

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .locals 4

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
    .locals 4

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

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p1, Lcom/android/server/wm/Transition;->mTransactionCompletedListeners:Ljava/util/ArrayList;

    :cond_0
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

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    :cond_1
    return-void
.end method

.method public final updateDisplayInfo(Ljava/lang/Runnable;)V
    .locals 16

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

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v6, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManagerInternal;->isChangingPreferredMode()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    iget v9, v2, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v8, v9, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    iput-object v2, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MT_ADAPTIVE_APP_BY_DEFAULT:Z

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    iget-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_2

    invoke-virtual {v0, v7, v5}, Lcom/android/server/wm/DisplayContent;->setRotatingOrDisplaySwitching(ZZ)V

    :cond_2
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x5

    if-eq v3, v11, :cond_3

    iget-boolean v11, v0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z

    if-nez v11, :cond_3

    iget-boolean v11, v0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v11, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v5, p1

    goto/16 :goto_5

    :cond_4
    iget-object v11, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v11}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    and-int/lit8 v6, v3, 0x2

    if-lez v6, :cond_7

    aget-boolean v6, v9, v7

    if-eqz v6, :cond_6

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

    const-wide v13, -0x1ef6e555996fc930L    # -2.7573599476281914E159

    invoke-static {v15, v13, v14, v12, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    move v11, v5

    :goto_3
    invoke-virtual {v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    goto :goto_4

    :cond_7
    move v11, v5

    :goto_4
    and-int/2addr v3, v11

    if-lez v3, :cond_9

    aget-boolean v3, v9, v7

    if-eqz v3, :cond_8

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

    const-wide v13, -0x5f08404952fac35bL    # -7.255132065554498E-150

    invoke-static {v3, v13, v14, v12, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_8
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

    :cond_9
    move-object/from16 v5, p1

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_5
    aget-boolean v3, v9, v7

    if-eqz v3, :cond_a

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

    const-wide v13, -0x671af71b919bc78bL    # -9.442125845787946E-189

    invoke-static {v9, v13, v14, v12, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z

    if-eqz v6, :cond_b

    if-eqz v8, :cond_b

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v7}, Landroid/hardware/display/DisplayManagerInternal;->setChangingPreferredMode(Z)V

    :cond_b
    iput-object v2, v1, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v10, :cond_c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, v0, v7}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_d
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    return-void
.end method
