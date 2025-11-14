.class public final Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/RootDisplayArea;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COPY_SOURCE_VISIBILITY:Lcom/android/server/wm/DisplayContent$1;


# instance fields
.field public final isDefaultDisplay:Z

.field public mA11yOverlayLayer:Landroid/view/SurfaceControl;

.field public final mActiveSizeCompatActivities:Ljava/util/Set;

.field public final mAllSleepTokens:Ljava/util/ArrayList;

.field public final mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

.field public volatile mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public final mApplyPostLayoutPolicy:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field public final mApplySurfaceChangesTransaction:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field public mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBaseDisplayCutout:Landroid/view/DisplayCutout;

.field public mBaseDisplayDensity:I

.field public mBaseDisplayHeight:I

.field public mBaseDisplayPhysicalXDpi:F

.field public mBaseDisplayPhysicalYDpi:F

.field public mBaseDisplayWidth:I

.field public mBaseRoundedCorners:Landroid/view/RoundedCorners;

.field final mCloseToSquareMaxAspectRatio:F

.field public final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mCompatibleScreenScale:F

.field public final mComputeImeTargetPredicate:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

.field public mContentRecorder:Lcom/android/server/wm/ContentRecorder;

.field public mCurrentFocus:Lcom/android/server/wm/WindowState;

.field public mCurrentOverrideConfigurationChanges:I

.field public mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field public mCurrentUniqueDisplayId:Ljava/lang/String;

.field public final mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

.field public mDeferUpdateImeTargetCount:I

.field public mDeferredRemoval:Z

.field public mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

.field public final mDeviceStateConsumer:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplay:Landroid/view/Display;

.field public final mDisplayAccessUIDs:Landroid/util/IntArray;

.field final mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

.field public final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

.field public final mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public final mDisplayId:I

.field public final mDisplayInfo:Landroid/view/DisplayInfo;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mDisplayReady:Z

.field public final mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field public mDisplayScalingDisabled:Z

.field public final mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

.field public mDisplaySwitching:Z

.field public final mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

.field public mDontMoveToTop:Z

.field public final mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

.field public mFadeInOutAnimationNeeded:Z

.field public final mFindFocusedWindow:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

.field public mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

.field public final mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

.field public mFocusedApp:Lcom/android/server/wm/ActivityRecord;

.field public mForcedDisplayDensityRatio:F

.field public mForcedHideCutout:I

.field public mHasSetIgnoreOrientationRequest:Z

.field public mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

.field public final mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field public final mIgnoreActivitySizeRestrictions:Z

.field public mIgnoreDisplayCutout:Z

.field public mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeInputTarget:Lcom/android/server/wm/InputTarget;

.field public mImeLayeringTarget:Lcom/android/server/wm/WindowState;

.field public mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

.field public mImeTargetTokenListenerPair:Landroid/util/Pair;

.field public final mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

.field public mInEnsureActivitiesVisible:Z

.field public mInTouchMode:Z

.field public mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field public mInitialDisplayDensity:I

.field public mInitialDisplayHeight:I

.field public mInitialDisplayShape:Landroid/view/DisplayShape;

.field public mInitialDisplayWidth:I

.field public mInitialPhysicalXDpi:F

.field public mInitialPhysicalYDpi:F

.field public mInitialRoundedCorners:Landroid/view/RoundedCorners;

.field mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

.field public mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

.field public mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

.field public mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field public final mInputMonitor:Lcom/android/server/wm/InputMonitor;

.field public mInputOverlayLayer:Landroid/view/SurfaceControl;

.field public final mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

.field public final mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

.field public mIsDensityForced:Z

.field public mIsInExitingRecents:Z

.field public mIsMagnifyKeyboard:Z

.field public mIsOverlappingWithCutoutAsDefault:Z

.field public mIsSizeForced:Z

.field public mLastContainsRunningSurfaceAnimator:Z

.field public mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

.field public mLastHasContent:Z

.field public mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

.field public mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

.field public mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mLastWallpaperVisible:Z

.field public mLayoutNeeded:Z

.field public mLayoutSeq:I

.field public mMagnificationSpec:Landroid/view/MagnificationSpec;

.field public mMaxUiWidth:I

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mMinSizeOfDesktopTaskDp:I

.field public mMinSizeOfResizeableTaskDp:I

.field public mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

.field public final mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

.field public mNeedImmediateDisplayUpdate:Z

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mOldFocus:Lcom/android/server/wm/WindowState;

.field public mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mOverlayLayer:Landroid/view/SurfaceControl;

.field public final mPerformLayout:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field public final mPerformLayoutAttached:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field public final mPhysicalDisplaySize:Landroid/graphics/Point;

.field public final mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

.field public final mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

.field public final mPopOverController:Lcom/android/server/wm/PopOverController;

.field public final mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

.field public final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

.field public mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

.field public final mRemoteInsetsDeath:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

.field public mRemoveTransitionRequested:Z

.field public mRemoved:Z

.field public mRemoving:Z

.field public mRestrictedKeepClearAreas:Ljava/util/Set;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRotating:Z

.field public final mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

.field public final mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

.field public mSandboxDisplayApis:Z

.field public final mScheduleToastTimeout:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field public final mShellRoots:Landroid/util/SparseArray;

.field public mSleeping:Z

.field public final mSysUiContextConfigCallback:Lcom/android/server/wm/DisplayContent$2;

.field public final mSystemGestureExclusion:Landroid/graphics/Region;

.field public mSystemGestureExclusionLimit:I

.field public final mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

.field public final mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

.field public mSystemGestureExclusionWasRestricted:Z

.field public final mSystemGestureFrameLeft:Landroid/graphics/Rect;

.field public final mSystemGestureFrameRight:Landroid/graphics/Rect;

.field public final mTempConfig:Landroid/content/res/Configuration;

.field public final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field public final mTmpConfiguration:Landroid/content/res/Configuration;

.field public final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mTmpHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field public mTmpInitial:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpUpdateAllDrawn:Ljava/util/LinkedList;

.field public mTmpWindow:Lcom/android/server/wm/WindowState;

.field public final mTokenMap:Ljava/util/HashMap;

.field public final mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

.field public final mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

.field public mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

.field public final mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

.field public final mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

.field public mUnrestrictedKeepClearAreas:Ljava/util/Set;

.field public mUpdateImeRequestedWhileDeferred:Z

.field public final mUpdateWindowsForAnimator:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

.field public final mVisibleBackgroundUserEnabled:Z

.field public mWaitingForConfig:Z

.field public final mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field public mWallpaperMayChange:Z

.field public final mWinAddedSinceNullFocus:Ljava/util/ArrayList;

.field public final mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

.field public pendingLayoutChanges:I


# direct methods
.method public static $r8$lambda$OlRwH3_Eqb403xPL7MPG5vhH0aE(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 4

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eqz p1, :cond_8

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ne v0, p0, :cond_1

    const-string p0, "Ignore cutout because display size is square: "

    const-string/jumbo p1, "WindowManager"

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0

    :cond_1
    if-nez p2, :cond_3

    sget-object p2, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    if-ne p1, v1, :cond_2

    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0

    :cond_2
    new-instance p2, Landroid/util/Size;

    invoke-direct {p2, v0, p0}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p0, p1}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {p1, p0}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object v0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/view/DisplayCutout;->getRotated(IIII)Landroid/view/DisplayCutout;

    move-result-object p1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v3, 0x3

    if-ne p2, v3, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    new-instance p2, Lcom/android/server/wm/utils/WmDisplayCutout;

    new-instance v2, Landroid/util/Size;

    if-eqz v1, :cond_6

    move v3, p0

    goto :goto_0

    :cond_6
    move v3, v0

    :goto_0
    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    move v0, p0

    :goto_1
    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {p2, p1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;-><init>(Landroid/view/DisplayCutout;Landroid/util/Size;)V

    return-object p2

    :cond_8
    :goto_2
    sget-object p0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayContent$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayContent;->COPY_SOURCE_VISIBILITY:Lcom/android/server/wm/DisplayContent$1;

    return-void
.end method

.method public constructor <init>(Landroid/view/Display;Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/DeviceStateController;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    const/4 v9, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/server/wm/RootWindowContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "DisplayContent"

    const/16 v16, 0x7dd

    const/4 v12, 0x0

    invoke-direct {v1, v6, v7, v12}, Lcom/android/server/wm/RootDisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->mVisibleBackgroundUserEnabled:Z

    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    iput v6, v1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfDesktopTaskDp:I

    new-instance v7, Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    sget-object v13, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const-string v14, "ImeContainer"

    invoke-direct {v7, v11, v13, v14, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    iput-boolean v12, v7, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    iput v7, v1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    new-instance v11, Lcom/android/server/wm/utils/RotationCache;

    new-instance v13, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v13, v1, v12}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-direct {v11, v13}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;)V

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    new-instance v11, Lcom/android/server/wm/utils/RotationCache;

    new-instance v13, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v13, v1, v5}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-direct {v11, v13}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;)V

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    new-instance v11, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v11}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    new-instance v11, Lcom/android/server/wm/utils/RotationCache;

    new-instance v13, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v13, v1, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-direct {v11, v13}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;)V

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    new-instance v11, Lcom/android/server/wm/utils/RotationCache;

    new-instance v13, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v13, v1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-direct {v11, v13}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;)V

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->mSandboxDisplayApis:Z

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v7, v1, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    iput v7, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iput v7, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v7, Landroid/os/RemoteCallbackList;

    invoke-direct {v7}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    new-instance v7, Landroid/os/RemoteCallbackList;

    invoke-direct {v7}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDecorViewGestureListener:Landroid/os/RemoteCallbackList;

    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mOldFocus:Lcom/android/server/wm/WindowState;

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mWinAddedSinceNullFocus:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mIsMagnifyKeyboard:Z

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    new-instance v7, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    invoke-direct {v7, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAccessUIDs:Landroid/util/IntArray;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput v6, v1, Lcom/android/server/wm/DisplayContent;->mForcedHideCutout:I

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v9}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    invoke-direct {v6, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    const/4 v7, 0x5

    invoke-direct {v6, v1, v7}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    invoke-direct {v2, v5, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/WindowContainer;)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v5}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    new-instance v2, Lcom/android/server/wm/DisplayContent$2;

    invoke-direct {v2, v1}, Lcom/android/server/wm/DisplayContent$2;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mSysUiContextConfigCallback:Lcom/android/server/wm/DisplayContent$2;

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

    iput-object v11, v1, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    if-nez v6, :cond_28

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v10, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v13

    iput v13, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v10}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mCurrentUniqueDisplayId:Ljava/lang/String;

    new-instance v6, Lcom/android/server/wm/WallpaperController;

    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v6, v7, v1}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v10}, Landroid/view/Display;->getType()I

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v10, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v6, Lcom/android/server/wm/DeferredDisplayUpdater;

    invoke-direct {v6, v1}, Lcom/android/server/wm/DeferredDisplayUpdater;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget v6, v6, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v6, v7

    div-int/lit16 v6, v6, 0xa0

    iput v6, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-nez v13, :cond_0

    move v14, v5

    goto :goto_0

    :cond_0
    move v14, v12

    :goto_0
    iput-boolean v14, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    new-instance v7, Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v7, v1}, Lcom/android/server/wm/InsetsStateController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v7, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz v14, :cond_1

    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v3, 0x104038b

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/wm/UdcCutoutPolicy;

    new-instance v6, Lcom/android/server/wm/utils/RotationCache;

    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;

    invoke-direct {v4, v1, v12}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-direct {v6, v4}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda33;)V

    invoke-direct {v3, v1, v6}, Lcom/android/server/wm/UdcCutoutPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/utils/RotationCache;)V

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v13}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    :cond_2
    new-instance v3, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-direct {v3, v1}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    :cond_3
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    move v4, v3

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    move v6, v4

    iget v4, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    move/from16 v18, v5

    iget v5, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    move v11, v6

    move v6, v2

    move v2, v11

    move/from16 v11, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v3, v2, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    iget v3, v2, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    iget-object v3, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v2, v2, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v2, Landroid/view/PrivacyIndicatorBounds;

    new-array v3, v9, [Landroid/graphics/Rect;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {v2, v3, v4}, Landroid/view/PrivacyIndicatorBounds;-><init>([Landroid/graphics/Rect;I)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v2, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    iget-object v2, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    if-nez v2, :cond_4

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    :goto_1
    if-nez v2, :cond_5

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    :goto_2
    invoke-direct {v3, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    new-instance v19, Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v7, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v4, v12}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object v22

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v23

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    check-cast v24, Landroid/view/PrivacyIndicatorBounds;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Landroid/view/DisplayShape;

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v26, v4

    invoke-direct/range {v19 .. v26}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V

    move-object/from16 v2, v19

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "WindowManager/displayId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x2000000a

    invoke-virtual {v2, v4, v3, v13}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mHoldScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v2, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-direct {v2, v1, v13}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    new-instance v3, Lcom/android/internal/policy/TransitionAnimation;

    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "WindowManager"

    invoke-direct {v3, v4, v12, v5}, Lcom/android/internal/policy/TransitionAnimation;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    new-instance v2, Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/UnknownAppVisibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    new-instance v2, Lcom/android/server/wm/RemoteDisplayChangeController;

    invoke-direct {v2, v1}, Lcom/android/server/wm/RemoteDisplayChangeController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PointerEventDispatcher"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0xffff

    invoke-virtual {v2, v3, v13, v4}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/PointerEventDispatcher;

    invoke-direct {v3, v2}, Lcom/android/server/wm/PointerEventDispatcher;-><init>(Landroid/view/InputChannel;)V

    iput-object v3, v1, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, v2, Lcom/android/server/wm/RecentTasks;->mListener:Lcom/android/server/wm/RecentTasks$1;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_6
    iput-object v8, v1, Lcom/android/server/wm/DisplayContent;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    new-instance v2, Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/AppCompatCameraPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    new-instance v4, Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v2, v1}, Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    new-instance v2, Lcom/android/server/wm/DisplayRotation;

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v5, v5, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    move-object v6, v5

    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    move-object v7, v6

    iget-object v6, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v7

    iget-object v7, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    move v15, v9

    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V

    move-object v1, v2

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    iput-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDeviceStateConsumer:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v3, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v5, v8, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_0
    iget-object v6, v8, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/wm/DisplayContent;->mCloseToSquareMaxAspectRatio:F

    if-eqz v14, :cond_7

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    iput-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-interface {v2, v13}, Lcom/android/server/wm/ExtraDisplayPolicy;->isDisplayControlledByPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v2, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplay:Landroid/view/Display;

    iput-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mExtraDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    :cond_8
    :goto_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    :cond_a
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-eqz v0, :cond_b

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    :cond_b
    iget-object v0, v4, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    if-ne v0, v11, :cond_c

    iget-object v0, v4, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    :cond_c
    new-instance v0, Lcom/android/server/wm/PinnedTaskController;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/PinnedTaskController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayAreaPolicyProvider:Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DefaultTaskDisplayArea"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Landroid/view/Display;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string/jumbo v5, "WindowedMagnification"

    invoke-direct {v3, v4, v5, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 v4, 0x7f7

    invoke-virtual {v3, v4, v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->layerFromType(IZ)I

    move-result v5

    move v6, v12

    :goto_4
    if-ge v6, v5, :cond_d

    iget-object v7, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    aput-boolean v11, v7, v6

    add-int/2addr v6, v11

    goto :goto_4

    :cond_d
    invoke-virtual {v3, v4, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)V

    new-instance v4, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mNewDisplayAreaSupplier:Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v3, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_e

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v5, "HideDisplayCutout"

    const/4 v6, 0x6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    iget-object v4, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([ZZ)V

    const/16 v4, 0x7e3

    const/16 v5, 0x7e8

    const/16 v6, 0x7d0

    const/16 v7, 0x7f8

    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v5, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string/jumbo v6, "OneHanded"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    iget-object v5, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([ZZ)V

    const/16 v5, 0x7df

    const/16 v6, 0x7e8

    filled-new-array {v4, v6, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v5, "AppZoomOut"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    iget-object v4, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->mLayers:[Z

    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 v4, 0x7

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    const/4 v7, 0x3

    :goto_5
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_REMOTE_WALLPAPER_ANIM:Z

    if-eqz v3, :cond_10

    iget-boolean v3, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string/jumbo v5, "RemoteWallpaperAnim"

    const/16 v6, 0x2712

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v4

    aget v4, v4, v12

    invoke-virtual {v3, v4, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v5, "ImePlaceholder"

    const/4 v6, 0x7

    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 v4, 0x7db

    const/16 v5, 0x7dc

    filled-new-array {v4, v5}, [I

    move-result-object v4

    move v5, v12

    const/4 v6, 0x2

    :goto_7
    if-ge v5, v6, :cond_11

    aget v8, v4, v5

    invoke-virtual {v3, v8, v11}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->set(IZ)V

    add-int/2addr v5, v11

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    const/4 v6, 0x2

    const/4 v7, 0x3

    :goto_8
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    invoke-direct {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;-><init>()V

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->setRootHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1, v1}, Lcom/android/server/wm/DisplayContent;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAreaOrganizers()V

    new-instance v0, Lcom/android/server/wm/DisplayRotationReversionController;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    new-instance v0, Lcom/android/server/wm/InputMonitor;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/InputMonitor;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/InsetsPolicy;-><init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getMinimalTaskSizeDp()I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDesktopMinimalTaskSizeDp()I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mMinSizeOfDesktopTaskDp:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_RESTORE_DEFAULT_DISPLAY_DENSITY_IN_BOOT:Z

    if-eqz v0, :cond_14

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v0, v11, :cond_14

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v2

    iget v3, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-nez v3, :cond_13

    goto/16 :goto_f

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    const-string v4, "(DisplayWindowSettings)"

    invoke-static {v2, v3, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v12, v12, v3}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(IILandroid/view/DisplayInfo;)V

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clearForcedDensity: OldDensity="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_14
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v2, :cond_15

    goto/16 :goto_f

    :cond_15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz v2, :cond_1f

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->isLoadedUserPreferredResolution()Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v2, :cond_1e

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->isLoadedUserPreferredResolution()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_e

    :cond_16
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(I)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v3, v2

    move v4, v12

    :goto_9
    if-ge v4, v3, :cond_17

    aget-object v5, v2, v4

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-direct {v6, v8, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v11

    goto :goto_9

    :cond_17
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v3, v2, [Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-ne v2, v7, :cond_1e

    new-instance v4, Landroid/view/Display$Mode$Builder;

    invoke-direct {v4}, Landroid/view/Display$Mode$Builder;-><init>()V

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "display_size_forced"

    invoke-static {v0, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "WindowManager"

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_c

    :cond_18
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_19

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-ne v8, v9, :cond_19

    :try_start_1
    invoke-virtual {v0, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v9, v11

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v8, v0}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    const-string/jumbo v8, "NumberFormatException "

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_a
    move v0, v12

    const/4 v8, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    aget-object v9, v3, v0

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v13, v6, Landroid/graphics/Point;->x:I

    if-ne v10, v13, :cond_1a

    move-object v8, v9

    :cond_1a
    add-int/2addr v0, v11

    goto :goto_b

    :cond_1b
    if-eqz v8, :cond_1c

    iget v0, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v0, v2}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    goto :goto_d

    :cond_1c
    aget-object v0, v3, v11

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2, v0}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    goto :goto_d

    :cond_1d
    :goto_c
    aget-object v0, v3, v11

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2, v0}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    :goto_d
    invoke-virtual {v4}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restoreUserPreferredModeIfNeeded, mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v2, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3, v0}, Landroid/hardware/display/DisplayManagerInternal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    :cond_1e
    :goto_e
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettings;->clearForcedSize(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    :cond_1f
    :goto_f
    invoke-virtual {v1, v11}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, v1, v11}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreActivitySizeRestrictions:Ljava/lang/Boolean;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    move v5, v11

    goto :goto_10

    :cond_20
    move v5, v12

    :goto_10
    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->mIgnoreActivitySizeRestrictions:Z

    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_21

    new-instance v0, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/wm/SystemPerformancePointerEventListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_21
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110136

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->mInTouchMode:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    sget v5, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    sget v6, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    const/4 v7, 0x1

    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/input/InputManagerService;->setInTouchMode(ZIIZI)Z

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v2, :cond_22

    iget-object v3, v2, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v3, v3, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, v2, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    :cond_22
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v2, :cond_23

    iget-object v3, v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v3, v3, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v11, v2, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    :cond_23
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz v0, :cond_25

    iget-object v2, v0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_24

    iget-object v3, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Lcom/android/server/wm/CameraStateMonitor$1;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_24
    iput-boolean v11, v0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    :cond_25
    iget v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v0, v15, :cond_26

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_26

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v2, :cond_26

    if-ne v0, v15, :cond_26

    iput-object v1, v2, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_26
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_27

    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_27
    new-instance v0, Lcom/android/server/wm/PopOverController;

    invoke-direct {v0, v1}, Lcom/android/server/wm/PopOverController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, v1, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Display with ID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already exists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x7e3
        0x7e8
        0x7d0
        0x7f8
        0x7d9
        0x7dd
        0x7e4
    .end array-data
.end method

.method public static addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I
    .locals 6

    invoke-static {p0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p0

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    filled-new-array {p3}, [I

    move-result-object p2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;

    invoke-direct {v2, p2, v1, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;-><init>([I[ILandroid/graphics/Region;)V

    new-instance p1, Landroid/graphics/RegionIterator;

    invoke-direct {p1, p0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    invoke-virtual {p1, v4}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    aget p1, p2, v0

    sub-int/2addr p3, p1

    aget p1, v1, v0

    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v1, v1, p5

    if-ne v1, p3, :cond_1

    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v1, v1, p5

    if-eq v1, p1, :cond_3

    :cond_1
    iget-boolean v1, p4, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz v1, :cond_2

    invoke-virtual {p4, p5}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    :cond_2
    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aput p3, v1, p5

    iget-object p3, p4, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aput p1, p3, p5

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    aget p0, p2, v0

    return p0
.end method

.method public static alwaysCreateRootTask(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    if-eq p0, v0, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/16 p1, 0x7db

    if-eq v1, p1, :cond_2

    const/16 p1, 0x7f8

    if-eq v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    if-eq p0, v3, :cond_2

    and-int/lit8 p0, v0, 0x20

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addShellRoot(Landroid/view/IWindow;I)Landroid/view/SurfaceControl;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    if-ne v1, p1, :cond_0

    iget-object p0, v0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    new-instance v0, Lcom/android/server/wm/ShellRoot;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/wm/ShellRoot;-><init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V

    iget-object p1, v0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->clear()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Landroid/view/SurfaceControl;

    const-string p2, "DisplayContent.addShellRoot"

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget-object v4, p2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v4

    if-ne v4, p2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, " to display="

    const-string v2, "Can\'t map token="

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_3

    iget p1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-object v0, p2, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    iget-boolean v1, p2, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean v2, p2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/wm/DisplayArea$Tokens;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    :cond_3
    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t map null token to display="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " binder="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " binder is null"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already mapped to display="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " tokens="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    if-nez p5, :cond_0

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    iget p3, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge p2, p3, :cond_1

    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    :cond_1
    iget p3, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le p2, p3, :cond_2

    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    :cond_2
    iget p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge p0, p2, :cond_3

    iput p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    :cond_3
    iget p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le p0, p2, :cond_4

    iput p0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    :cond_4
    return-void
.end method

.method public final adjustForImeIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    iget-object v3, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    const-string/jumbo v4, "WindowManager"

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-interface {v3, v0, v1}, Landroid/view/IPinnedTaskListener;->onImeVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Error delivering ime visibility changed event."

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-interface {p0, v2}, Landroid/view/IPinnedTaskListener;->onMovementBoundsChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    const-string v0, "Error delivering movement bounds changed event."

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public final allowContentModeSwitch()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final applyFixedRotationForNonTopVisibleActivityIfNeeded(ILcom/android/server/wm/ActivityRecord;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->getActivityBelowForDefiningOrientation(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result v0

    :cond_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p1

    if-ne v0, p1, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, p1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(IIZ)I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final applyRotation(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v2, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    invoke-direct {v3, v0, v2, p1}, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;-><init>(Lcom/android/server/wm/DisplayRotation;II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, v0, Lcom/android/server/wm/WindowOrientationListener;->mCurrentRotation:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(Landroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->installOrientation:I

    add-int/2addr v2, p1

    rem-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, v0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, v0, Lcom/android/server/wm/RotationWatcherController;->mDisplayRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;

    iget v3, v2, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;->mDisplayId:I

    if-ne v3, p0, :cond_2

    :try_start_1
    iget-object v2, v2, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v2, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 0

    return-object p0
.end method

.method public final assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final assignImeLayer(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent$ImeContainer;->mNeedsLayer:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->shouldShowImeForExternalDesktop()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->assignImeLayer(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v2, v0, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, p0, v0, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p0, v1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final assignWindowLayers(Z)V
    .locals 3

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "assignWindowLayers"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final attachImeScreenshotOnTarget(Lcom/android/server/wm/WindowState;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    new-instance v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

    iput-object v1, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iput-object v3, v0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v6

    iget-object v9, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v6, v9, :cond_1

    iget-object v6, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v6

    iget-object v9, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v6, v9, :cond_0

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v7

    :goto_1
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    if-eqz v5, :cond_2

    if-nez p2, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    const/16 v16, 0x2

    goto/16 :goto_a

    :cond_3
    :goto_2
    const/4 v11, 0x0

    if-eqz v6, :cond_8

    iget-object v6, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v12, v12, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    move v13, v8

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_5

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowToken;

    iget v15, v14, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v16, 0x2

    const/16 v10, 0x7dc

    if-ne v15, v10, :cond_4

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x2

    iget-object v6, v6, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-boolean v6, v6, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    goto :goto_4

    :cond_6
    move v6, v7

    :goto_4
    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v10, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Failed to take screenshot. No surface control for "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v12, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v12, v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v12, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v10}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v5, v6}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v5, v7}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v5

    check-cast v5, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {v5}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object v5

    invoke-static {v5}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v5

    goto :goto_6

    :cond_8
    const/16 v16, 0x2

    :cond_9
    :goto_5
    move-object v5, v11

    :goto_6
    if-eqz v5, :cond_10

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v5}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    aget-boolean v6, v9, v16

    if-eqz v6, :cond_b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v6, v10, v11}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v10, 0x431a0e36e4233c71L    # 1.8334945782535962E15

    invoke-static {v12, v10, v11, v8, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v11, v7, :cond_c

    iget-object v11, v10, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_7

    :cond_c
    iget-object v11, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_7
    iget-object v12, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

    const-string v13, "IME-snapshot-surface"

    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    const-string v14, "DisplayContent.attachAndShowImeScreenshotOnTarget"

    invoke-virtual {v12, v14}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v14

    invoke-static {v12, v2, v14, v13}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    invoke-virtual {v2, v12, v5}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v10, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v13, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v13}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v12, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v5, v13, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v6, v10, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-ne v11, v6, :cond_e

    iget-object v6, v10, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Point;->offset(II)V

    :cond_d
    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v2, v12, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8

    :cond_e
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Point;->offset(II)V

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v10, v6}, Landroid/graphics/Point;->offset(II)V

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    invoke-virtual {v2, v12, v6, v10}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_8
    iput-object v5, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurfacePosition:Landroid/graphics/Point;

    aget-boolean v6, v9, v16

    if-eqz v6, :cond_f

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-long v10, v6

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-long v5, v5

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v10, 0x216cbe5284be3cc0L

    const/4 v6, 0x5

    invoke-static {v13, v10, v11, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_f
    move-object v11, v12

    :goto_9
    iput-object v11, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    const/4 v10, 0x3

    invoke-direct {v6, v10, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_a
    iget-object v5, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_b

    :cond_11
    move v7, v8

    :goto_b
    if-eqz v7, :cond_13

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    if-eqz v5, :cond_13

    aget-boolean v5, v9, v16

    if-eqz v5, :cond_12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x5a234c1057dccb31L

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v9, v10, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_12
    iget-object v5, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v2, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7d04

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_c

    :cond_13
    if-nez v7, :cond_14

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V

    :cond_14
    :goto_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_15

    if-eqz p2, :cond_15

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    invoke-virtual {v1, v8, v8}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_15
    return-void
.end method

.method public final calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object p2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object p0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object p0, p0, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    return-object p0
.end method

.method public final calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRoundedCornerCache:Lcom/android/server/wm/utils/RotationCache;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    :goto_1
    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/RoundedCorners;

    return-object p0
.end method

.method public calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    iget v0, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8, v1, v0}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    invoke-virtual {v0, v1, v3, v8}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v6, v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    sub-int v0, v4, v0

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v5, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v3

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v4

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    filled-new-array {v0, v0}, [I

    move-result-object v5

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v4}, Landroid/graphics/Region;->recycle()V

    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    aget p1, v5, v8

    iget p2, v1, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    if-lt p1, p2, :cond_2

    aget p1, v5, p0

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return v8

    :cond_2
    :goto_0
    return p0
.end method

.method public final checkFocusMonitoringPolicy(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v1, :cond_1

    const-string/jumbo v1, "application_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mApplicationPolicy:Lcom/samsung/android/knox/application/IApplicationPolicy;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    :try_start_1
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/server/wm/DisplayContent;->sendApplicationFocusMonitoringIntent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_3
    return-void
.end method

.method public final clearAllTasksOnDisplay(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    :try_start_0
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda61;

    invoke-direct {v0, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda61;-><init>(Z)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;->run()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->resumeNextFocusAfterReparent()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    throw p1
.end method

.method public final clearFixedRotationLaunchingApp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final collectDisplayChange(Lcom/android/server/wm/Transition;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setSeamlessTransitionForFixedRotation(Lcom/android/server/wm/Transition;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "WindowManager"

    const-string v0, "Finish AsyncRotation for previous intermediate change"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final collectFixedRotationLaunchingAppIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "collectFixedRotationLaunchingAppIfNeeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason:enter_pip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_0
    return-void
.end method

.method public computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-nez v0, :cond_3

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->shouldControlIme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v0}, Lcom/android/server/wm/DexController;->shouldShowImeForExternalDesktop()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result v0

    if-ne v1, v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->shouldControlIme()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez v1, :cond_8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    return-object v0

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0
.end method

.method public computeImeParent()Lcom/android/server/wm/WindowContainer;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-eq v5, v6, :cond_3

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v7, v8, :cond_3

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-lez v4, :cond_3

    move v2, v3

    goto :goto_5

    :cond_3
    :goto_0
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v3

    :goto_2
    if-eqz v1, :cond_7

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v5, v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v3

    :goto_4
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    xor-int/2addr v2, v3

    :goto_5
    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public final computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->updateLetterboxDirectionIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    :cond_2
    return-object v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V

    :cond_4
    return-object v2

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    return-object v0
.end method

.method public final computeScreenAppConfiguration(Landroid/content/res/Configuration;III)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p4}, Landroid/app/WindowConfiguration;->setRotation(I)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    int-to-float v2, v0

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    const/4 v2, 0x1

    if-gt v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v3}, Lcom/android/server/wm/WindowContainer;->computeScreenLayout(III)I

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq p4, v2, :cond_2

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_3

    move v8, p2

    move v7, p3

    goto :goto_2

    :cond_3
    move v7, p2

    move v8, p3

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v4

    const/4 v5, 0x1

    move v9, v8

    move v8, v7

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v4

    move v9, v8

    move v8, v7

    move v7, v9

    const/4 v5, 0x2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result v4

    const/4 v5, 0x3

    move v9, v8

    move v8, v7

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I

    move-result p0

    iput p0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p4}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    return-void
.end method

.method public final computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    :goto_1
    if-eqz v5, :cond_2

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_2
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_3

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_4
    move v7, v1

    goto :goto_5

    :cond_3
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_4

    :goto_5
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0, v0, v6, v7}, Landroid/app/WindowConfiguration;->setMaxBounds(IIII)V

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v6, v7, p2}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;III)V

    new-instance v4, Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v4, v0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput p2, v4, Landroid/view/DisplayInfo;->rotation:I

    iput v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v4, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v4, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p2, 0x0

    :cond_4
    iput-object p2, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, p2, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x0

    move-object v3, p0

    move-object v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/DisplayContent;->computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V

    return-object v4
.end method

.method public final computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .locals 14

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(Landroid/content/res/Configuration;)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenAppConfiguration(Landroid/content/res/Configuration;III)V

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0x301

    iget v2, v0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/16 v2, 0x200

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    :goto_0
    or-int/2addr v1, v2

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v1

    const-string/jumbo v2, "persist.sys.sf.native_mode"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mHasHdrSupport:Z

    if-eqz v5, :cond_1

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    if-eqz v1, :cond_1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHasWideColorGamutSupport:Z

    if-eqz v0, :cond_2

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    or-int/2addr v0, v1

    iput v0, p1, Landroid/content/res/Configuration;->colorMode:I

    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v3, p1, Landroid/content/res/Configuration;->navigation:I

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    move v2, v4

    move v6, v2

    move v7, v6

    :goto_4
    const/4 v8, 0x3

    if-ge v2, v1, :cond_e

    aget-object v9, v0, v2

    invoke-virtual {v9}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_a

    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v9}, Landroid/view/InputDevice;->getId()I

    move-result v11

    iget v12, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v10, v10, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v10, v11, v12}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v9}, Landroid/view/InputDevice;->getId()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v11, v11, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v11, v10, v4}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result v10

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v11, v11, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v11, v10, v4}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result v10

    goto :goto_5

    :cond_6
    move v10, v4

    :goto_5
    if-eqz v10, :cond_d

    :cond_7
    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/InputDevice;->isExternal()Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v5

    goto :goto_6

    :cond_8
    move v11, v3

    :goto_6
    iget-object v12, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v12, :cond_9

    and-int/lit16 v12, v10, 0x1002

    const/16 v13, 0x1002

    if-ne v12, v13, :cond_a

    iput v8, p1, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_7

    :cond_9
    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    :goto_7
    const v12, 0x10004

    and-int v13, v10, v12

    if-ne v13, v12, :cond_b

    iput v8, p1, Landroid/content/res/Configuration;->navigation:I

    :goto_8
    or-int/2addr v6, v11

    goto :goto_9

    :cond_b
    and-int/lit16 v8, v10, 0x201

    const/16 v10, 0x201

    if-ne v8, v10, :cond_c

    iget v8, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v8, v3, :cond_c

    iput v5, p1, Landroid/content/res/Configuration;->navigation:I

    goto :goto_8

    :cond_c
    :goto_9
    invoke-virtual {v9}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v8

    if-ne v8, v5, :cond_d

    iput v5, p1, Landroid/content/res/Configuration;->keyboard:I

    or-int/2addr v7, v11

    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v0, :cond_f

    iput v5, p1, Landroid/content/res/Configuration;->navigation:I

    or-int/lit8 v6, v6, 0x1

    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v3, :cond_10

    move v0, v3

    goto :goto_b

    :cond_10
    move v0, v4

    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v0, v2, :cond_11

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v3, :cond_15

    if-ne v7, v3, :cond_16

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v2, v2, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-eq v1, v3, :cond_14

    if-eq v1, v5, :cond_13

    :cond_12
    move v1, v4

    goto :goto_d

    :cond_13
    if-ne v2, v3, :cond_12

    :goto_c
    move v1, v3

    goto :goto_d

    :cond_14
    if-nez v2, :cond_12

    goto :goto_c

    :goto_d
    if-eqz v1, :cond_16

    :cond_15
    iput v5, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v1, :cond_16

    iput v5, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_16
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v3, :cond_1a

    if-ne v6, v3, :cond_1b

    iget v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v2, v2, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    if-eq v1, v3, :cond_19

    if-eq v1, v5, :cond_18

    :cond_17
    move v1, v4

    goto :goto_f

    :cond_18
    if-ne v2, v3, :cond_17

    :goto_e
    move v1, v3

    goto :goto_f

    :cond_19
    if-nez v2, :cond_17

    goto :goto_e

    :goto_f
    if-eqz v1, :cond_1b

    :cond_1a
    iput v5, p1, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_1b
    iget v1, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->semButtonShapeEnabled:I

    :cond_1c
    iget v1, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1d

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cursor_thickness"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-static {v0, v1, v2, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->semCursorThicknessScale:F

    :cond_1d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_CONFIG_MANAGEMENT:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNewDexController:Lcom/android/server/wm/NewDexController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/server/wm/NewDexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result v1

    if-ne v1, v5, :cond_1e

    goto :goto_10

    :cond_1e
    iget-object v1, v0, Lcom/android/server/wm/NewDexController;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

    if-nez v1, :cond_1f

    const-class v1, Lcom/android/server/UiModeManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/UiModeManagerService$LocalService;

    iput-object v1, v0, Lcom/android/server/wm/NewDexController;->mUiModeManagerInternal:Lcom/android/server/UiModeManagerService$LocalService;

    if-nez v1, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_20

    iput v3, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v8, p1, Landroid/content/res/Configuration;->dexMode:I

    iget-object v1, v0, Lcom/android/server/wm/NewDexController;->mH:Lcom/android/server/wm/NewDexController$H;

    new-instance v2, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NewDexController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :cond_20
    iput v4, p1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iput v4, p1, Landroid/content/res/Configuration;->dexMode:I

    iget-object v1, v0, Lcom/android/server/wm/NewDexController;->mH:Lcom/android/server/wm/NewDexController$H;

    new-instance v2, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/NewDexController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NewDexController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget p0, p0, Lcom/android/server/wm/DexController;->mFontScaleForExternalDesktop:F

    iput p0, p1, Landroid/content/res/Configuration;->fontScale:F

    :cond_22
    return-void
.end method

.method public final computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V
    .locals 7

    if-eqz p2, :cond_0

    move v4, p3

    move v3, p4

    goto :goto_0

    :cond_0
    move v3, p3

    move v4, p4

    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput p2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    const/4 p2, 0x0

    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput p2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    const/4 v2, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    move v6, v4

    move v4, v3

    move v3, v6

    const/4 v2, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    const/4 v2, 0x3

    move v6, v4

    move v4, v3

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIZ)V

    if-nez p6, :cond_1

    return-void

    :cond_1
    iget p0, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float p0, p0

    div-float/2addr p0, p5

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, p6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return-void
.end method

.method public final configureDisplayPolicy()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateDisplayImePolicyCache()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111022e

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-le v1, p0, :cond_1

    iput v7, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    iput v6, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v5, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    :cond_0
    iput v5, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v6, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_0

    :cond_1
    iput v7, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v4, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iput v5, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v6, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_0

    :cond_2
    iput v6, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v5, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    :goto_0
    const-string/jumbo p0, "persist.demo.hdmirotation"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "portrait"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p0, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_1

    :cond_3
    iget p0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p0, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    :goto_1
    const-string/jumbo p0, "persist.demo.hdmirotationlock"

    invoke-static {p0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    const-string/jumbo p0, "persist.demo.remoterotation"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p0, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_2

    :cond_4
    iget p0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p0, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    :goto_2
    const-string/jumbo p0, "persist.demo.rotationlock"

    invoke-static {p0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    iget-object p0, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v1, "android.hardware.type.automotive"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez p0, :cond_5

    if-nez v1, :cond_5

    iget-object p0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo p0, "config.override_forced_orient"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v7

    :goto_4
    iput-boolean v6, v0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return-void
.end method

.method public final configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "DisplayContent"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2

    const-string v1, "Display Overlays"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_3

    const-string v1, "Input Overlays"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    if-nez v1, :cond_4

    const-string v1, "Accessibility Overlays"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7ffffffe

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    const v1, 0x7ffffffd

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final continueUpdateImeTarget()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeRequestedWhileDeferred:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_1
    :goto_0
    return-void
.end method

.method public final continueUpdateOrientationForDiffOrienLaunchingApp()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-boolean v1, v1, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v1, v1, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "continueUpdateOrientationForDiffOrienLaunchingApp: forceUpdate, reason=drag_recents, r="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v0, v0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10

    const-string v0, "Display: mDisplayId="

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " (organized)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "init="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, "dpi"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " mMinSizeOfResizeableTaskDp="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mMinSizeOfDesktopTaskDp="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfDesktopTaskDp:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v5, v6, :cond_2

    :cond_1
    const-string v5, " base="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_3

    const-string v3, " noscale"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    const-string v3, " cur="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " rng="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deferred="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mLayoutNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "baseCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "udcCutout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_5

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "udcConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initRoundedCorners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "baseRoundedCorners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mIsOverlappingWithCutoutAsDefault=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "mHasSetIgnoreOrientationRequest=true "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v2, "ignoreOrientationRequest="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  mCurrentFocus="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "  mFocusedApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mFixedRotationLaunchingApp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v2, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AsyncRotationController"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mTransitionOp="

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    const-string/jumbo v6, "mIsStartTransactionCommitted="

    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    const-string/jumbo v6, "mIsSyncDrawRequested="

    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    const-string/jumbo v6, "mOriginalRotation="

    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    const-string/jumbo v6, "mTargetWindowTokens="

    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mHoldScreenWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mObscuringWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastWakeLockHoldingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastWakeLockObscuringWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastWakeLockObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "  mSystemGestureExclusion="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/16 v4, 0x9

    new-array v4, v4, [F

    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, v2, v3, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V

    const/4 v3, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "  keepClearAreas="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Display areas in top down Z order:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Task display areas in top down Z order:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_d

    const-string/jumbo v0, "rootHomeTask="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_e

    const-string/jumbo v0, "rootPinnedTask="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {p3, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_f

    const-string/jumbo v2, "rootRecentsTask="

    invoke-static {p2, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    const/4 p3, 0x5

    invoke-virtual {p0, v0, p3}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_10

    const-string/jumbo v0, "rootDreamTask="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PinnedTaskController"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v0, :cond_11

    const-string v0, "  mDeferOrientationChanging=true"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-boolean v0, p3, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_12

    const-string v0, "  mFreezingTaskConfig=true"

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v0, p3, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_13

    const-string v0, "  mPendingBounds="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p3, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    const-string v0, "  mIsImeShowing="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p3, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    const-string v4, "  mImeHeight="

    invoke-static {v0, v2, p1, p2, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    const-string v4, "  mMinAspectRatio="

    invoke-static {v0, v2, p1, p2, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p3, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  mMaxAspectRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_14

    const-string/jumbo v0, "rootMainStageTask="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_15

    const-string/jumbo v0, "rootSideStageTask="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p3, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_16

    const-string/jumbo v0, "rootCellStageTask="

    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DisplayFrames w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mCarDockEnablesAccelerometer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const-string/jumbo v5, "mDockMode="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v4}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " mLidState="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    if-eqz v4, :cond_18

    if-eq v4, v3, :cond_17

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_17
    const-string v4, "LID_OPEN"

    goto :goto_2

    :cond_18
    const-string v4, "LID_CLOSED"

    goto :goto_2

    :cond_19
    const-string v4, "LID_ABSENT"

    :goto_2
    const-string/jumbo v5, "mAwake="

    invoke-static {p1, v4, v0, v5}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mScreenOnEarly="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mScreenOnFully="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    const-string/jumbo v5, "mKeyguardDrawComplete="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mWindowManagerDrawComplete="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const-string/jumbo v5, "mHdmiPlugged="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eqz v4, :cond_1a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastDisableFlags=0x"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a
    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-eqz v4, :cond_1b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastAppearance="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v4, Landroid/view/InsetsFlags;

    const-string/jumbo v5, "appearance"

    iget v6, p3, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-eqz v4, :cond_1c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastBehavior="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v4, Landroid/view/InsetsFlags;

    const-string/jumbo v5, "behavior"

    iget v6, p3, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mShowingDream="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mDreamingLockscreen="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mStatusBar="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1d
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mExpandedPanel="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "isKeyguardShowing="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v4, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1f

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mNavigationBar="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mNavBarOpacityMode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const-string/jumbo v5, "mNavigationBarCanMove="

    invoke-static {v4, p1, v0, v5}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    const-string/jumbo v5, "mHasBottomNavigationBar="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1f
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepSystemUiControllingWindow()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "shouldKeepSystemUiControllingWindow=true"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_21

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLeftGestureHost="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_21
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_22

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTopGestureHost="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_22
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_23

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRightGestureHost="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_23
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_24

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mBottomGestureHost="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_24
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_25

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mFocusedWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_25
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_26

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_26
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mSystemBarColorApps="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_27
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mRelaunchingSystemBarColorApps="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_28
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_29

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mNavBarColorWindowCandidate="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_29
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_2a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mNavBarBackgroundWindowCandidate="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2a
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    if-eqz v4, :cond_2b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastStatusBarAppearanceRegions="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v4, v4

    sub-int/2addr v4, v3

    :goto_3
    if-ltz v4, :cond_2b

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p3, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v5, v5, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2b
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    if-eqz v4, :cond_2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mLastLetterboxDetails="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    array-length v4, v4

    sub-int/2addr v4, v3

    :goto_4
    if-ltz v4, :cond_2c

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p3, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    aget-object v5, v5, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_2c
    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mStatusBarBackgroundWindows="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_5
    if-ltz v4, :cond_2d

    iget-object v5, p3, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_2d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mTopIsFullscreen="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    const-string/jumbo v5, "mImeInsetsConsumed="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    const-string/jumbo v5, "mForceShowNavigationBarEnabled="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mAllowLockscreenWhenOn="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    const-string/jumbo v5, "mRemoteInsetsControllerControlsSystemBars="

    invoke-static {p1, v0, v5, v4}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v4, p3, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mDecorInsetsInfo:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v4, v2, p1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v4, :cond_2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mCachedDecorInsets:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v4, v2, p1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2e
    sget-boolean v2, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v2, :cond_2f

    iget-object v2, p3, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SystemGestures:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mDisplayCutoutTouchableRegionSize="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    const-string/jumbo v6, "mSwipeStartThreshold="

    invoke-static {v5, p1, v4, v6}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mSwipeDistanceThreshold="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_2f
    iget-object v2, p3, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "UiContextResourcesConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "UiContextResourcesMetrics="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_30
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p3, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "DisplayPolicyExt"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_31

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mPayHandlerWin="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " mLastPayHandlerVisible="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Z)V

    const-string v5, " mLastPayHandlerFrame="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v5, "mNavigationMode="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    :cond_31
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz v5, :cond_32

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mIsOneHandOpEnabled="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    const-string/jumbo v7, "mHasOneHandOpSpec="

    invoke-static {p1, v4, v7, v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v6, v5, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    const-string/jumbo v7, "mReasonToStart="

    invoke-static {p1, v4, v7, v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v5, v5, Lcom/android/server/wm/OneHandOpPolicy;->mReasonToStart:I

    invoke-static {v5}, Lcom/android/server/wm/OneHandOpPolicy;->startReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mOneHandOpController="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mOneHandOpHandler="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_32
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v5, :cond_35

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "CoverPolicy"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_33

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mCoverWindow="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_33
    iget-object v7, v5, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_34

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "mHideSViewCoverWindow="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_34
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mLastCoverAppCovered="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_35
    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_36

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mFakeFocusedWindow="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_36
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v2, :cond_38

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "RefreshRatePolicy"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLowRefreshRateMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p3, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mNonHighRefreshRatePackages:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->mPackages:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SYSTEM_HISTORY:Z

    if-eqz v2, :cond_37

    iget-object v2, p3, Lcom/android/server/wm/RefreshRatePolicy;->mRefreshRatePolicyLogger:Lcom/android/server/wm/RefreshRatePolicyLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "RefreshRatePolicy History"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/wm/RefreshRatePolicyLogger;->mRefreshRateHistories:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/android/server/wm/RefreshRatePolicyLogger$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_37
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FIXED_REFRESH_RATE_PACKAGE:Z

    if-eqz v2, :cond_38

    iget-object v2, p3, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFixedRefreshRatePackages="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/server/wm/RefreshRatePolicy;->mFixedRefreshRatePackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/DisplayRotation;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/InputMonitor;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WindowInsetsStateController"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p3, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v0, p1}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Control map:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_6
    if-ltz v2, :cond_3c

    iget-object v4, p3, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsControlTarget;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p3, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_7
    if-ltz v6, :cond_3b

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v7, :cond_3a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v4, v8, :cond_39

    const-string v8, "(fake) "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_39
    invoke-virtual {v7, v4}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3a
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_3c
    iget-object v2, p3, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  none"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3d
    const-string v2, "InsetsSourceProviders:"

    invoke-static {p1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p3, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_8
    if-ltz v2, :cond_3e

    iget-object v3, p3, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_3e
    iget v2, p3, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    if-eqz v2, :cond_3f

    const-string/jumbo v2, "mForcedConsumingTypes="

    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p3, p3, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    invoke-static {p3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InsetsPolicy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status: "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    iget v2, v2, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nav: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    iget v2, v2, Lcom/android/server/wm/InsetsPolicy$BarWindow;->mState:I

    invoke-static {v2}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, p3, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eqz v1, :cond_40

    const-string/jumbo v1, "mShowingTransientTypes="

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_40
    iget v1, p3, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    if-eqz v1, :cond_41

    const-string/jumbo v1, "mForcedShowingTypes="

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p3, p3, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    invoke-static {p3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_41
    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v0, p3, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p3, p3, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p3, p2, p1}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_42
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result p0

    if-eqz p0, :cond_43

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "isRemoteAppDisplay=true"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000015L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/DisplayArea;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000009L

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v1, 0x10b0000000aL

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/DisplayInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v1, 0x10b00000021L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v3, v5, :cond_0

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "accelerometer_rotation"

    const/4 v7, -0x2

    invoke-static {v3, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :goto_1
    const-wide v6, 0x10800000002L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const-wide v6, 0x10500000003L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000004L

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000005L

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10800000006L

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x10b0000000dL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v0, 0x10500000027L

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v1, 0x10b00000010L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x2

    goto :goto_3

    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v3, v3, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ltz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    move v0, v5

    goto :goto_3

    :cond_4
    move v0, v4

    :goto_3
    const-wide v6, 0x10e00000001L

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-wide v1, 0x1090000000fL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-wide v1, 0x10500000017L

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_7

    const-wide v1, 0x10b00000018L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_4

    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    :goto_4
    const-wide v0, 0x1080000001aL

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    const-wide v1, 0x10800000024L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer$SleepToken;->mTag:Ljava/lang/String;

    const-wide v1, 0x20900000025L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_9

    const-wide v1, 0x10b00000028L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b00000029L

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const-wide v1, 0x10b0000002aL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    const-wide v1, 0x10b0000002bL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_6
    if-ltz v1, :cond_e

    iget-object v2, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v3, v2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_d

    const-wide v3, 0x10b0000001fL

    goto :goto_7

    :cond_d
    const-wide v3, 0x20b00000023L

    :goto_7
    invoke-virtual {v2, p1, v3, v4, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_e
    const-wide v0, 0x10500000022L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p4, p4, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V

    invoke-virtual {p0, v2, v5}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    invoke-virtual {p4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    const-wide v0, 0x20b00000026L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_8

    :cond_f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final enableHighFrameRate(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v1, "WindowAnimation"

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->start()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mHighFrameRateSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    :cond_2
    return-void
.end method

.method public final enableHighPerfTransition(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mSupportsHighPerfTransitions:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mSystemPerformanceHinter:Landroid/window/SystemPerformanceHinter;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v1, "Transition"

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/window/SystemPerformanceHinter;->createSession(IILjava/lang/String;)Landroid/window/SystemPerformanceHinter$HighPerfSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->start()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTransitionPrefSession:Landroid/window/SystemPerformanceHinter$HighPerfSession;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/window/SystemPerformanceHinter$HighPerfSession;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate(Lcom/android/server/wm/DisplayContent;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WindowManagerServiceExt;->updateTaskbarTargetIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    return-void

    :goto_1
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInEnsureActivitiesVisible:Z

    throw p1
.end method

.method public final executeAppTransition()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public final fillsParent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectTaskDisplayAreaFunc:Ljava/util/function/Function;

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0

    :cond_0
    const/16 v0, 0x7db

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7dc

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/RootDisplayArea;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    return-object p0
.end method

.method public final findFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda45;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0xf989b4f5abccb00L    # -2.905484252462301E233

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public final finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    const/4 v2, 0x1

    const-string v3, "AsyncRotation_WindowManager"

    if-nez v1, :cond_0

    iget-object p0, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz p0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Complete set pending "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget v2, v0, Lcom/android/server/wm/AsyncRotationController;->mSyncId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Defer completion "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Complete directly "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    iget-object p1, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->onAllCompleted()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final finishAsyncRotationIfPossible()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AsyncRotationController;->finishOp(Lcom/android/server/wm/WindowToken;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual {v0}, Lcom/android/server/wm/AsyncRotationController;->onAllCompleted()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    :cond_1
    return-void
.end method

.method public getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    return-object p0
.end method

.method public final getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public final getDesktopMinimalTaskSizeDp()I
    .locals 5

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x105018b

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p0, v0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v3, p0, 0xf

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    if-ne v3, v2, :cond_0

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Resource ID #0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not in valid type or unit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFocusedRootTask()Lcom/android/server/wm/Task;
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public final getIgnoreOrientationRequest()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldApplyPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result p0

    return p0
.end method

.method public final getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImePolicy()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0
.end method

.method public final getImeInputTarget()Lcom/android/server/wm/InputTarget;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    return-object p0
.end method

.method public final getImePolicy()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public final getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public final getInitialDisplayDensity()I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v1, :cond_0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-le p0, v1, :cond_0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public final getInputMethodWindowVisibleHeight()I
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v0, p0, v3, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    return p0

    :cond_2
    :goto_1
    return v2
.end method

.method public final getInputMonitor()Lcom/android/server/wm/InputMonitor;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    return-object p0
.end method

.method public final getLayerCaptureArgs(Lcom/android/internal/util/ToBooleanFunction;)Landroid/window/ScreenCapture$LayerCaptureArgs;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-nez v0, :cond_0

    const-string/jumbo p0, "WindowManager"

    const-string p1, "Attempted to take screenshot while display was off."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    check-cast v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    if-eqz p1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-array p0, v1, [Landroid/view/SurfaceControl;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p0

    return-object p0
.end method

.method public final getMinimalTaskSizeDp()I
    .locals 5

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x105018a

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p0, v0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v3, p0, 0xf

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    if-ne v3, v2, :cond_0

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Resource ID #0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not in valid type or unit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    const-string v1, "\""

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOneHandOpPolicy()Lcom/android/server/wm/OneHandOpPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    return-object p0
.end method

.method public final getOrientation()I
    .locals 18

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v1, v0, :cond_0

    goto/16 :goto_a

    :cond_0
    return v3

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v1, v1, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v1, :cond_f

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v1

    :goto_0
    move v9, v5

    goto/16 :goto_6

    :cond_2
    :try_start_1
    iget-object v6, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_3

    monitor-exit v1

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v6

    if-ne v6, v3, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    iget-object v7, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v9, v7, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-gt v8, v9, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    const/4 v8, 0x2

    :goto_2
    if-ne v8, v3, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    move v8, v2

    :goto_3
    if-eqz v6, :cond_7

    if-nez v8, :cond_8

    :cond_7
    if-nez v6, :cond_9

    if-nez v8, :cond_9

    :cond_8
    move v9, v3

    goto :goto_4

    :cond_9
    move v9, v2

    :goto_4
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v10, v10, v3

    if-eqz v10, :cond_a

    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v7

    invoke-static {v9}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v10, v7, v6, v8}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, 0x67199a479e0e330cL    # 4.455970551920494E188

    const/16 v10, 0xf1

    invoke-static {v12, v7, v8, v10, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    :goto_5
    monitor-exit v1

    :goto_6
    iput v9, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    if-eq v9, v5, :cond_b

    iget-object v6, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    iget-object v8, v7, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v8, v8, v3

    if-nez v8, :cond_e

    invoke-virtual {v7, v3}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_e

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v6, v6, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    int-to-long v6, v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v9, -0x1e60ce1df7c7c030L    # -1.7542870562025912E162

    invoke-static {v8, v9, v10, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    iget-object v6, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    iget-object v8, v7, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v8, v8, v3

    if-nez v8, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v7, v3}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x47d799b0c849ca08L    # -3.5852057933235046E-38

    invoke-static {v7, v8, v9, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d
    iput-object v4, v6, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    :cond_e
    :goto_7
    iget v1, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    goto :goto_9

    :goto_8
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_f
    move v1, v5

    :goto_9
    if-eq v1, v5, :cond_10

    iput-object v4, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return v1

    :cond_10
    invoke-super {v0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant(I)Z

    move-result v6

    const-wide/32 v7, 0xf4156bc

    const-wide/16 v9, -0x1

    const-wide v11, -0x1084493da93cff3L    # -4.06866715200439E303

    const-wide/16 v13, 0x0

    const/16 v15, 0x15

    if-nez v6, :cond_13

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    move/from16 v16, v3

    if-eqz v6, :cond_11

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v3, v3, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    move/from16 v17, v5

    iget-object v5, v3, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5, v7, v8}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v5

    iget-object v3, v3, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v3, v3, v16

    if-eqz v3, :cond_14

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v0, v1, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v11, v12, v15, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v2

    :cond_11
    move/from16 v17, v5

    :cond_12
    iput-object v4, v0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v2, v2, v16

    if-eqz v2, :cond_17

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v0

    int-to-long v0, v1

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x2f1f911a189bc558L    # -3.897004126463244E81

    invoke-static {v4, v1, v2, v15, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v17

    :cond_13
    move/from16 v16, v3

    move/from16 v17, v5

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_MULTI_FOLD_CAMERA_POLICY:Z

    if-eqz v3, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    iget-object v4, v4, Lcom/android/server/wm/AppCompatOverrides;->mOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    iget-object v5, v4, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v5, v7, v8}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v5

    iget-object v4, v4, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v4, v4, v16

    if-eqz v4, :cond_14

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v4, v0

    int-to-long v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v11, v12, v15, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_14
    :goto_a
    return v2

    :cond_15
    const/4 v3, -0x2

    if-ne v1, v3, :cond_16

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v1, v1, v16

    if-eqz v1, :cond_17

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x2fb9527de1ad3e30L    # 8.542463866029204E-79

    const/4 v1, 0x5

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v17

    :cond_16
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v3, :cond_18

    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldApplyPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v3, v3, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return v17

    :cond_18
    return v1
.end method

.method public final getProtoFieldId()J
    .locals 2

    const-wide v0, 0x10b00000003L

    return-wide v0
.end method

.method public final getRelativeDisplayRotation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getRemoveContentMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRemoveMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public final getRootTask(II)Lcom/android/server/wm/Task;
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda29;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public final getStableRect(Landroid/graphics/Rect;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    return-void
.end method

.method public final getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No default display was assigned to user "

    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValidForcedSize(II)Landroid/graphics/Point;
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    const/16 v0, 0xc8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method public final getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowToken;

    return-object p0
.end method

.method public final getWindowingLayer()Landroid/view/SurfaceControl;
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    check-cast p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    iget-object p0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iget v2, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->mId:I

    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->canBeWindowingLayer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayArea;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "There must be exactly one DisplayArea at top for the FEATURE_WINDOWED_MAGNIFICATION or FEATURE_WINDOWING_LAYER"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "There must be at least one feature."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mActiveSizeCompatActivities:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_3
    return-void
.end method

.method public final handleCompleteDeferredRemoval()Z
    .locals 3

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return v1

    :cond_2
    return v0
.end method

.method public final handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p3

    if-nez p3, :cond_5

    goto/16 :goto_4

    :cond_5
    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-boolean p3, p3, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    if-nez p3, :cond_7

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eq p1, p3, :cond_7

    goto/16 :goto_4

    :cond_7
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez p3, :cond_8

    goto :goto_0

    :cond_8
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz p3, :cond_9

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto/16 :goto_4

    :cond_9
    :goto_0
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_ROTATED_WALLPAPER_SNAPSHOT:Z

    if-eqz p3, :cond_a

    goto :goto_1

    :cond_a
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p3

    if-nez p3, :cond_b

    goto/16 :goto_4

    :cond_b
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_c

    goto/16 :goto_4

    :cond_c
    new-instance p3, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_10

    iget-boolean p3, p0, Lcom/android/server/wm/DisplayContent;->mIsInExitingRecents:Z

    if-eqz p3, :cond_e

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz p3, :cond_e

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :cond_d
    if-ge v3, v0, :cond_e

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/wm/TransientLaunchOverlayToken;

    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string/jumbo p3, "WindowManager"

    const-string/jumbo v0, "handleFixedRotationForMultiWindow: allow fixed-rotation, reason=recents_overlay"

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const-string/jumbo p2, "handle_fixed_rot"

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/DisplayContent;->setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_f

    iget-boolean p3, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez p3, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_2

    :cond_f
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_12

    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskSnapshotController;->isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-eqz p1, :cond_12

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    return v1

    :cond_10
    :goto_3
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p3, p3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz p3, :cond_11

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez p3, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p3

    if-nez p3, :cond_13

    :cond_12
    :goto_4
    return v1

    :cond_13
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(ILcom/android/server/wm/ActivityRecord;)V

    return v2
.end method

.method public final handlesOrientationChangeFromDescendant(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasAccess(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mVisibleBackgroundUserEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public final hasAlertWindowSurfaces()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v3, v2, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v4, v2, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v4, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hasOneHandOpSpec()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasOwnFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isAodShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p0

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0

    :cond_1
    return v0
.end method

.method public final isAppCastingDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCarLifeDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x100000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHomeSupported()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIsHomeSupported:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final isKeyguardLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result p0

    return p0
.end method

.method public final isKeyguardLockedOrAodShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isMultiTaskingDisplay()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isPrivate()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceDesktopModeOnExternalDisplays:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRemoteAppDisplay()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRotationChanging()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object p0, p0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isSystemDecorationsSupported()Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    return v2

    :cond_5
    :goto_3
    return v3
.end method

.method public final isVisible()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isVisibleRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public final migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    invoke-virtual {v4}, Landroid/view/ContentRecordingSession;->getDisplayToRecord()I

    move-result v4

    if-eq v4, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    int-to-long v3, v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x3cee864fee1fc9a2L    # -1.2297179312981995E15

    invoke-static {v5, v6, v7, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v2, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ContentRecorder;->mRecordedSurface:Landroid/view/SurfaceControl;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->configureSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public final notifyKeyguardFlagsChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible$1()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void
.end method

.method public final okToAnimate(ZZ)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->okToDisplay(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate(Z)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final okToDisplay()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay(Z)Z

    move-result p0

    return p0
.end method

.method public final okToDisplay(Z)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->state:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iget-boolean v2, v3, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Insets;->bottom:I

    if-lez v3, :cond_1

    iget-object v2, v0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget v3, v2, Landroid/graphics/Insets;->right:I

    if-lez v3, :cond_2

    iget-object v2, v0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget v2, v2, Landroid/graphics/Insets;->left:I

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/DisplayCutoutController;->mCutoutInset:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/DisplayCutoutController;->mNonDecorInsetsWithoutCutout:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_4
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_OVERLAPPING_WITH_CUTOUT_AS_DEFAULT:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105040a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-lez v0, :cond_6

    if-gt v0, v3, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MD_DEX_NOT_SUPPORT_CUTOUT:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v4

    if-eqz v4, :cond_7

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    :cond_7
    const-string/jumbo v4, "updateIsOverlappingWithCutoutAsDefault: largeCutoutSize="

    const-string v5, ", minimumSizeForOverlappingWithCutoutAsDefault="

    const-string v6, ", isDexMode="

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsOverlappingWithCutoutAsDefault:Z

    :cond_9
    :goto_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingController;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->rotation:I

    iget v6, v0, Lcom/android/server/wm/MultiTaskingController;->mLastRotation:I

    if-eq v6, v5, :cond_a

    goto :goto_5

    :cond_a
    move v2, v1

    :goto_5
    and-int/lit16 v4, v4, 0x1400

    if-nez v4, :cond_b

    if-eqz v2, :cond_10

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->updateMultiSplitAppMinimumSizeLocked()V

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v6, :cond_c

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    iget v3, v0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v3, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;)Z

    goto :goto_6

    :cond_f
    iget-object v3, v4, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MultiTaskingController;->exitMultiWindow(Landroid/os/IBinder;)Z

    :cond_10
    :goto_6
    if-eqz v2, :cond_13

    iput v5, v0, Lcom/android/server/wm/MultiTaskingController;->mLastRotation:I

    goto :goto_7

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isMultiTaskingDisplay()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_12
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v2, 0x30

    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    if-eq v3, v4, :cond_13

    and-int/lit8 v2, v2, -0x31

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_13
    :goto_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_14
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    iget-object v3, p1, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iput v4, p1, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    const v4, 0x1050116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p1, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    iput-boolean v1, p1, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->loadDimens()V

    iget-object p1, p1, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ContentRecorder;->onConfigurationChanged(II)V

    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_18

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez p1, :cond_17

    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x67b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x67c

    invoke-virtual {v0, v1, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_18
    return-void
.end method

.method public final onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientationAndComputeConfig(Z)Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->handlesOrientationChangeFromDescendant(I)Z

    move-result v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    instance-of v3, p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    return v2
.end method

.method public final onDescendantOverrideConfigurationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget p1, p1, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr p1, v0

    div-int/lit16 p1, p1, 0xa0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionLimit:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    return-void
.end method

.method public final onDisplayInfoChanged()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayFrames(Z)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(IIZ)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    iget v2, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->displayId:I

    if-eqz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/view/DisplayInfo;->displayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    :cond_2
    return-void
.end method

.method public final onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setDisplayInfoOverride()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    :cond_0
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    iget-object p2, p1, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/IDisplayWindowListener;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v1, v2}, Landroid/view/IDisplayWindowListener;->onDisplayAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/window/WindowTokenClientController;->getInstance()Landroid/window/WindowTokenClientController;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v0, v1}, Landroid/window/WindowTokenClientController;->attachToDisplayContent(Landroid/window/WindowTokenClient;I)Z

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSysUiContextConfigCallback:Lcom/android/server/wm/DisplayContent$2;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_3
    return-void
.end method

.method public final onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/res/Configuration;->unset()V

    :goto_0
    iget-object v4, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    if-eq v3, v2, :cond_4

    if-eq v4, v2, :cond_4

    if-eq v3, v4, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->applyRotation(I)V

    goto :goto_2

    :cond_3
    new-instance v6, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V

    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentOverrideConfigurationChanges:I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_5

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    return-void
.end method

.method public final onResize()V
    .locals 4

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v2, 0xc00

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x800

    iget-object v3, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->recomputeBounds()V

    iget-object p0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mHandler:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final onRunningActivityChanged()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v4, :cond_2

    iput-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, -0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/window/DisplayWindowPolicyController;->onTopActivityChanged(Landroid/content/ComponentName;II)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v4, v5, v6, v3}, Landroid/window/DisplayWindowPolicyController;->onTopActivityChanged(Landroid/content/ComponentName;II)V

    :cond_2
    :goto_0
    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    new-instance v4, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v3}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;-><init>([ZLandroid/util/ArraySet;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    aget-boolean v0, v1, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, v3}, Landroid/window/DisplayWindowPolicyController;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    return-void
.end method

.method public final onShowImeRequested()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "hideImeImmediately "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", caller="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsyncRotation_WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public pauseRecording()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->pauseRecording()V

    :cond_0
    return-void
.end method

.method public final performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I
    .locals 14

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    const-string v1, ")"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iget v5, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const-string/jumbo v7, "onDisplayDeviceTypeChanged opened : "

    const-string/jumbo v8, "MultiWindowFoldController"

    invoke-static {v7, v8, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "displayDevice("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v6, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_3

    const-string/jumbo v5, "reset"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v5, "apply_folding_policy"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_5

    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v6, v0, :cond_6

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_7

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v5, v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isMultiTaskingDisplay()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_27

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[d"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "] Override config changes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", callers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-boolean v8, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, v8}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    goto/16 :goto_9

    :cond_9
    invoke-virtual {p0, v7, v2}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_DISPLAY_CHANGE:Z

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->FW_UI_MODE_ANIMATION:Z

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v8

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    if-eq v8, p1, :cond_a

    const p1, 0x10a00c3

    const v8, 0x10a00c4

    goto :goto_4

    :cond_a
    move p1, v4

    move v8, p1

    :goto_4
    if-nez p1, :cond_b

    if-eqz v8, :cond_c

    :cond_b
    invoke-static {p1, v8}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomDisplayChangeAnimOptions(II)Landroid/window/TransitionInfo$AnimationOptions;

    :cond_c
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->DW_SHELL_CHANGE_TRANSITION:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v10, p1, Lcom/android/server/wm/ChangeTransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v11}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v11, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v11, v11, Lcom/android/server/wm/DexController;->mPrimaryExternalDesktopDisplayId:I

    invoke-virtual {v12, v11}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    goto :goto_5

    :cond_d
    move-object v11, v2

    :goto_5
    if-nez v11, :cond_e

    goto :goto_9

    :cond_e
    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v10, v10, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v10}, Lcom/android/server/wm/ChangeTransitionController;->findCollectingChangeInfo(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition$ChangeInfo;

    move-result-object v12

    iget-object v13, p1, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v13}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v13

    if-eqz v13, :cond_f

    iget-object v13, p1, Lcom/android/server/wm/ChangeTransitionController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v13}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v13

    goto :goto_6

    :cond_f
    move-object v13, v2

    :goto_6
    if-eqz v13, :cond_12

    if-nez v12, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v8, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v12

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v8

    invoke-virtual {v9}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v9

    if-eq v8, v9, :cond_11

    goto :goto_7

    :cond_11
    const v8, -0x2dfffffc

    and-int/2addr v8, v12

    if-eqz v8, :cond_13

    :goto_7
    iget v8, v11, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "dw_global_config(0x"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8, v1, v4}, Lcom/android/server/wm/ChangeTransitionController;->requestDisplayChangeTransition(ILjava/lang/String;Z)V

    invoke-virtual {v13, v10, v4}, Lcom/android/server/wm/Transition;->setDisplayChangeTransitionFlag(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_9

    :cond_12
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleGlobalConfigChanges: failed, reason=default_display_not_collected, collecting="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", default="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ChangeTransitionController"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_9
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    and-int/lit16 p1, v7, 0x1000

    if-eqz p1, :cond_14

    move v1, v3

    goto :goto_a

    :cond_14
    move v1, v4

    :goto_a
    and-int/lit16 v8, v7, 0x200

    if-eqz v8, :cond_15

    move v8, v3

    goto :goto_b

    :cond_15
    move v8, v4

    :goto_b
    sget-boolean v9, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v9, :cond_19

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v9, :cond_19

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-nez v9, :cond_16

    const-class v9, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iput-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    :cond_16
    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-eqz v9, :cond_19

    if-nez v1, :cond_17

    if-eqz v8, :cond_19

    :cond_17
    if-nez v9, :cond_18

    const-class v8, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    iput-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    :cond_18
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mDesktopModeManagerInternal:Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isConfigurationChangedFromDeX(Landroid/content/res/Configuration;)Z

    :cond_19
    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    iget-object v1, v1, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x6

    const/16 v8, 0x18

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v8, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_c

    :cond_1a
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v9, v8, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "onConfigurationChangedLocked: display#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", configChanges=0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", scaleW="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", scaleH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", prevScreenBounds="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nextScreenBounds="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "MultiTaskingController"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v8, v8, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-nez v8, :cond_1d

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v8

    if-eqz v8, :cond_1d

    goto :goto_e

    :cond_1d
    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_1e

    goto :goto_e

    :cond_1e
    const/high16 v8, 0x4000000

    and-int/2addr v8, v7

    if-eqz v8, :cond_1f

    goto :goto_e

    :cond_1f
    and-int/lit16 v8, v7, 0x1c00

    if-eqz v8, :cond_21

    if-eqz p1, :cond_20

    move p1, v3

    goto :goto_d

    :cond_20
    move p1, v4

    :goto_d
    new-instance v8, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;

    invoke-direct {v8, p1, v5, v6}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;-><init>(ZFF)V

    invoke-virtual {v2, v8}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    :cond_21
    :goto_e
    if-nez v1, :cond_22

    iget-object p1, v0, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10505d9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Lcom/android/server/wm/MultiTaskingController;->mSwipeGestureThreshold:I

    :cond_22
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v4

    move v2, v1

    :goto_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-ne v5, p0, :cond_23

    move v2, v3

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    if-nez v2, :cond_25

    goto :goto_11

    :cond_25
    iget-object v1, p1, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_10
    if-ge v4, v1, :cond_26

    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3, v0}, Landroid/view/IDisplayWindowListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_26
    iget-object p0, p1, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_27
    :goto_11
    return v7
.end method

.method public final performLayout(Z)V
    .locals 5

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "performLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-gez v3, :cond_1

    move v3, v2

    :cond_1
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iput-boolean v4, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final prepareSurfaces()V
    .locals 3

    const-string/jumbo v0, "prepareSurfaces"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-super {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->prepareSurfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final providesMaxBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    iget p1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    filled-new-array {p1, p0}, [I

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid([I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final reconfigureDisplayLocked()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    or-int/2addr v1, v5

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v4, v5}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    invoke-virtual {v4, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v4, v2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v5, :cond_3

    iput v3, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p0}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    return-void
.end method

.method public final reduceCompatConfigWidthSize(IILandroid/util/DisplayMetrics;II)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0, p2, p4, p5}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 p0, 0x0

    invoke-static {p3, p0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result p0

    iget p2, p3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float p2, p2

    div-float/2addr p2, p0

    iget p0, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p2, p0

    float-to-int p0, p2

    if-eqz p1, :cond_1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p0
.end method

.method public final registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    const-string/jumbo v0, "registerInputEventListener: trying to register"

    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " twice."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final releaseSelfIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoved:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    :cond_1
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_2

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final remove()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoving:Z

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->clearAllTasksOnDisplay(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;I)V

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "release() >> KnoxZT mIsKnoxZtStarted is false for Display Id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v4, "WindowManager"

    invoke-static {v3, v1, v4}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    const/16 v3, 0xa

    invoke-direct {v1, p0, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x2b5fecc8ba4d3471L    # 9.122450361006059E-100

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_2
    return-void
.end method

.method public removeAllTasks()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final removeIfPossible()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return-void
.end method

.method public final removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_2

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda3;-><init>(ILcom/android/server/wm/WindowContainer;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceImmediately()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final removeImeSurfaceImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    :cond_0
    return-void
.end method

.method public final removeImmediately()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    :try_start_0
    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDesktopModeEligibleChanged(I)V

    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v1, v1, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDeviceStateConsumer:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    iget-object v3, v1, Lcom/android/server/wm/DeviceStateController;->mWmLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/DeviceStateController;->mDeviceStateCallbacks:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->removeImmediately()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    invoke-virtual {v1}, Lcom/android/server/wm/PointerEventDispatcher;->dispose()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mA11yOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v3, v2, Lcom/android/server/wm/InputMonitor;->mHandler:Landroid/os/Handler;

    iget-object v4, v2, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindows:Lcom/android/server/wm/InputMonitor$UpdateInputWindows;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v2, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    new-instance v4, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/wm/InputMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InputMonitor;)V

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Transaction;->addWindowInfosReportedListener(Ljava/lang/Runnable;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    iget-object v3, v2, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    :try_start_3
    iget-object v5, v2, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/view/IDisplayWindowListener;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v5, v6}, Landroid/view/IDisplayWindowListener;->onDisplayRemoved(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :try_start_4
    iget-object v2, v2, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->onDisplayRemoved()V

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v2, Lcom/android/server/wm/AccessibilityController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v2, v2, Lcom/android/server/wm/AccessibilityController;->mFocusedWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v2, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    if-eqz v4, :cond_2

    iput-object v1, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget v4, v4, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->release(I)V

    iget-object v2, v2, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayWindowSettings;->onDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mSysUiContextConfigCallback:Lcom/android/server/wm/DisplayContent$2;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v3, v2, Lcom/android/server/wm/MultiTaskingController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingController;->isAppCastingDisplayInputTargetLocked()Z

    move-result v3

    iput-object v1, v2, Lcom/android/server/wm/MultiTaskingController;->mLastInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingController;->isAppCastingDisplayInputTargetLocked()Z

    move-result v4

    if-eq v3, v4, :cond_4

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_4
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v4, :cond_5

    if-ne v2, v3, :cond_5

    iput-object v1, v4, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMultiWindowPointerEventListener:Lcom/android/server/wm/MultiWindowPointerEventListener;

    if-eqz v1, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v1, :cond_7

    iget-object v2, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v2, v2, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mIsRunning:Z

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraCompatFreeformPolicy:Lcom/android/server/wm/CameraCompatFreeformPolicy;

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v2, v2, Lcom/android/server/wm/CameraStateMonitor;->mCameraStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRefresher;->mEvaluators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v0, v1, Lcom/android/server/wm/CameraCompatFreeformPolicy;->mIsRunning:Z

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz p0, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/CameraStateMonitor;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/CameraStateMonitor;->mAvailabilityCallback:Lcom/android/server/wm/CameraStateMonitor$1;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/CameraStateMonitor;->mIsRunning:Z

    :cond_a
    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    throw v1
.end method

.method public final removeWindowToken(Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowToken;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowToken;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowToken;->setExiting(Z)V

    :cond_0
    return-object p0
.end method

.method public final requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v4, p2}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v5, :cond_1

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v5, v6, p0}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V

    :cond_1
    :goto_0
    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;Z)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v5, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    iget v8, v5, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    if-ne v8, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "Update original rotation "

    const-string v9, "AsyncRotation_WindowManager"

    invoke-static {v7, v8, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v7, v5, Lcom/android/server/wm/AsyncRotationController;->mOriginalRotation:I

    new-instance v7, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iput-object v4, v5, Lcom/android/server/wm/AsyncRotationController;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    iput-boolean v2, v5, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    iput-boolean v2, v5, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    invoke-virtual {v5}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->setSeamlessTransitionForFixedRotation(Lcom/android/server/wm/Transition;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz p2, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    move-result v5

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    move-result p2

    invoke-virtual {v4, v5, p2, v2}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v3, p0}, Lcom/android/server/wm/Transition;->onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V

    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {p2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    iget-object p2, v0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    iget-object v0, v3, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iget-object v4, p2, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object p2, p2, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    :goto_2
    iget-object p2, v3, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_8

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    :cond_8
    return-void
.end method

.method public final rotateBounds(IILandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v1, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p3, p0, p1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public final rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->ENABLE_FIXED_ROTATION_TRANSFORM:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->shouldIgnoreOrientationRequest(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelowForDefiningOrientation(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    move-object p1, v2

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_4

    goto :goto_0

    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(IIZ)I

    move-result p0

    if-ne p0, p1, :cond_6

    return v1

    :cond_6
    return p0

    :cond_7
    :goto_0
    return v1
.end method

.method public final sendApplicationFocusMonitoringIntent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.APPLICATION_FOCUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_COMPONENT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_STATUS"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_DEX_MODE"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p2, Lcom/android/server/wm/DisplayContent$5;

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DisplayContent$5;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendNewConfiguration()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    iget-object v0, v0, Lcom/android/server/wm/RemoteDisplayChangeController;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string/jumbo v3, "displayConfig"

    invoke-direct {v0, v3, p0}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TransitionController;->waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Display reconfigured outside of a transition: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v6, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;-><init>(I)V

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isExternalDisplayDesktop()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v3}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    iput v4, v3, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_2

    :cond_5
    invoke-static {v3}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    :goto_2
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_7
    if-eqz v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->clearFixedRotationLaunchingApp()V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    :cond_9
    :goto_4
    return v1
.end method

.method public final setContentRecordingSession(Landroid/view/ContentRecordingSession;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/ContentRecorder;

    new-instance v1, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v1, v2}, Lcom/android/server/wm/ContentRecorder$RemoteMediaProjectionManagerWrapper;-><init>(I)V

    new-instance v2, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    iget-object v2, v2, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    :cond_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ContentRecorder;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ContentRecorder$MediaProjectionManagerWrapper;Z)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    return-void
.end method

.method public final setDisplayInfoOverride()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mLastDisplayInfoOverride:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public final setFadeInOutAnimationNeeded(Ljava/lang/String;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mFadeInOutAnimationNeeded:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setFadeInOutAnimationNeeded: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setFixedRotationLaunchingApp(ILcom/android/server/wm/ActivityRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V

    if-eqz v0, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowToken;->finishFixedRotationTransform(Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setFixedRotationLaunchingAppUnchecked(ILcom/android/server/wm/ActivityRecord;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    iget-object v2, v0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayWindowListener;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v3, v4, p1}, Landroid/view/IDisplayWindowListener;->onFixedRotationStarted(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->startAsyncRotation(Z)Z

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    iget-object v2, v0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    :try_start_1
    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayWindowListener;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v3, v4}, Landroid/view/IDisplayWindowListener;->onFixedRotationFinished(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/TransitionController;->hasCollectingRotationChange(Lcom/android/server/wm/DisplayContent;I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFixedRotationLaunchingAppUnchecked, rotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", r="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    const-string/jumbo v1, "WindowManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p1

    iget-boolean p2, p1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    if-eqz p2, :cond_4

    iget-boolean p1, p1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardShowing:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onShowImeRequested()V

    :cond_4
    return-void
.end method

.method public final setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eq v1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " but "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "none"

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string/jumbo p0, "SPEG"

    const-string p1, "Do not set focus"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p1, :cond_4

    return v0

    :cond_4
    const-string/jumbo v2, "lost"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->checkFocusMonitoringPolicy(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x69f1e19686dd336cL

    invoke-static {v6, v2, v3, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_1

    :cond_6
    move-object v1, v2

    :goto_1
    if-eqz p1, :cond_7

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_2

    :cond_7
    move-object v3, v2

    :goto_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->onAppFocusChanged(Z)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v1, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    move-result-object v2

    :cond_a
    iget p1, v0, Lcom/android/server/wm/InputMonitor;->mDisplayId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v0, "gained"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->checkFocusMonitoringPolicy(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return v4
.end method

.method public final setForcedDensity(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInitialDisplayDensity()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v0, p2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    :cond_3
    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInitialDisplayDensity()I

    move-result v0

    if-ne p1, v0, :cond_5

    move p1, v2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(IILandroid/view/DisplayInfo;)V

    return-void
.end method

.method public final setForcedScalingMode(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move p1, v0

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "off"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "auto"

    :goto_0
    const-string/jumbo v1, "Using display scaling mode: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_scaling_force"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    invoke-virtual {p1, v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    return-void
.end method

.method public final setForcedSize(IIFFZZZ)V
    .locals 9

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_2

    if-le p1, v0, :cond_2

    int-to-float v3, v0

    int-to-float p1, p1

    div-float/2addr v3, p1

    int-to-float p1, p2

    mul-float/2addr p1, v3

    float-to-int p2, p1

    move p1, v0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->getValidForcedSize(II)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    move v5, p1

    move v4, p2

    goto :goto_2

    :cond_3
    move v4, p1

    move v5, p2

    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    move/from16 p2, p7

    iput-boolean p2, p1, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->mAvoidAppCompatDisplayInsets:Z

    iput-boolean v1, p1, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->mIsInDisplaySizeChanging:Z

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY_FOR_SHELL_TRANSITION:Z

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p2, p2, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-static {p2}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v4, v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v5, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->startChangeResolution(Landroid/os/IBinder;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Using new display size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :goto_4
    move v6, v0

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    goto :goto_4

    :goto_5
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_8

    :goto_6
    move v7, p3

    goto :goto_7

    :cond_8
    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    goto :goto_6

    :goto_7
    cmpl-float p3, p4, v0

    if-eqz p3, :cond_9

    :goto_8
    move-object v3, p0

    move v8, p4

    goto :goto_9

    :cond_9
    iget p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    goto :goto_8

    :goto_9
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    iget-object p3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object p3, p3, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    iput-boolean v2, p3, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->mAvoidAppCompatDisplayInsets:Z

    iput-boolean v2, p3, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->mIsInDisplaySizeChanging:Z

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/os/IBinder;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    if-ne p2, p3, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    new-instance p3, Landroid/os/HandlerExecutor;

    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {p3, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda31;->onTransactionCommitted()V

    :cond_b
    :goto_a
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    if-nez p1, :cond_c

    if-nez p6, :cond_c

    move v5, v2

    goto :goto_b

    :cond_c
    move v2, v4

    :goto_b
    if-eqz p5, :cond_d

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, p0, v2, v5}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    :cond_d
    return-void
.end method

.method public final setForcedSizeDensity(IIIZIZ)V
    .locals 12

    move/from16 v6, p4

    move/from16 v0, p5

    move/from16 v9, p6

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq p3, v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v10

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    const-string/jumbo v1, "Using new display size & density : "

    const-string/jumbo v2, "x"

    const-string v3, " "

    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dp saveSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " saveDensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forcedHideCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->isChangingPreferredMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v6, :cond_2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mForcedHideCutout:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/DisplayContent;->setForcedSize(IIFFZZZ)V

    iput-boolean v11, p0, Lcom/android/server/wm/DisplayContent;->mNeedImmediateDisplayUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_2
    if-eqz v9, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, p3, v10, p0}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(IILandroid/view/DisplayInfo;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p1
.end method

.method public final setIgnoreOrientationRequest(Z)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v4

    iput-object v2, v4, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_1
    return v0
.end method

.method public setImeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-void
.end method

.method public setImeInputTarget(Lcom/android/server/wm/InputTarget;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeTargetTokenListenerPair:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeTargetTokenListenerPair:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeTargetTokenListenerPair:Landroid/util/Pair;

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v3, Lcom/android/server/wm/DisplayContent$3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/DisplayContent$3;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeTargetTokenListenerPair:Landroid/util/Pair;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->dispatchImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZI)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->canScreenshotIme()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/WindowContainer;->setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_5
    return-void
.end method

.method public setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public final setImeLayeringTargetInner(Lcom/android/server/wm/WindowState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-ne v0, v1, :cond_5

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/DisplayContent;->attachImeScreenshotOnTarget(Lcom/android/server/wm/WindowState;Z)V

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x3df4450944e130b7L    # 2.949625586137497E-10

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v3

    :goto_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-eq p1, v1, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootDisplayArea;->placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v3, v3}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_8
    move v0, v2

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v1, p1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    sget v2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void
.end method

.method public final setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    return-void
.end method

.method public setLastHasContent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastHasContent:Z

    return-void
.end method

.method public final setLayoutNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPrintLayoutCaller:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPrintLayoutCaller:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLayoutNeeded: d"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method public final setRemoteInsetsController(Landroid/view/IDisplayWindowInsetsController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {v0}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/view/IDisplayWindowInsetsController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsDeath:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda42;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/view/IDisplayWindowInsetsController;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final setRotatingOrDisplaySwitching(ZZ)V
    .locals 4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mRotating:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitching:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRotating:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mRotating:Z

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitching:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySwitching:Z

    return-void
.end method

.method public final setSeamlessTransitionForFixedRotation(Lcom/android/server/wm/Transition;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AsyncRotationController;->keepAppearanceInPreviousRotation()V

    :cond_1
    return-void
.end method

.method public final shouldDeferRemoval()Z
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public shouldDestroyContentOnRemove()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRemoveContentMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldImeAttachedToApp()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->shouldControlIme()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    return v2

    :cond_5
    :goto_1
    return v1
.end method

.method public final shouldSleep()Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-instance v2, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final shouldWaitForSystemDecorWindowsOnBoot()Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v3, 0x7f8

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v5, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;

    invoke-direct {v5, v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/util/SparseBooleanArray;)V

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111019f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    const/16 v6, 0x7e5

    invoke-virtual {v1, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    const/16 v8, 0x7dd

    invoke-virtual {v1, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    const/4 v9, 0x2

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v3, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v11, 0x4ee00d7e5c833dadL    # 8.863338260925845E71

    const/16 v9, 0x3fff

    invoke-static {v10, v11, v12, v9, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v0, :cond_4

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    if-nez v7, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    if-eqz v5, :cond_7

    if-nez v8, :cond_7

    :cond_6
    :goto_1
    return v4

    :cond_7
    return v2
.end method

.method public showImeScreenshot(Lcom/android/server/wm/WindowState;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->attachImeScreenshotOnTarget(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public final startAsyncRotation(Z)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-nez p1, :cond_7

    new-instance p1, Lcom/android/server/wm/AsyncRotationController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AsyncRotationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    iget-object p0, p1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_4

    iget-object v2, p1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    iget-object v3, p1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    and-int/lit8 v5, v4, 0x2

    const-string v6, "AsyncRotation_WindowManager"

    if-nez v5, :cond_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne v4, v1, :cond_3

    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Start seamless "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda0;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mLeash:Landroid/view/SurfaceControl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Start fade-out "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_4
    iget-boolean p0, p1, Lcom/android/server/wm/AsyncRotationController;->mHasScreenRotationAnimation:Z

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    if-nez p0, :cond_5

    new-instance p0, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AsyncRotationController;)V

    iput-object p0, p1, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    :cond_5
    iget-object p0, p1, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p1, p1, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method public final startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;IZ)Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object v5

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/PrivacyIndicatorBounds;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/view/DisplayShape;

    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3}, Landroid/view/InsetsState;-><init>()V

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v4, v2, p0}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final switchUser(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateForceShowNavBarSettings()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display{#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {p0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda10;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public final unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPointerEventDispatcher:Lcom/android/server/wm/PointerEventDispatcher;

    const-string/jumbo v0, "unregisterInputEventListener: "

    iget-object v1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/PointerEventDispatcher;->mListenersArray:[Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not registered."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateBaseDisplayCutout(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v3

    iget v4, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-gtz v3, :cond_0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    :goto_0
    move v10, v3

    goto :goto_1

    :cond_0
    mul-int/2addr v4, p1

    div-int v3, v4, v3

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    const v4, 0x104038b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, p1

    move v5, p2

    move-object p1, v1

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    move v8, p1

    move v9, p2

    move v6, p1

    move v7, p2

    invoke-static/range {v4 .. v11}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIILjava/lang/String;)Landroid/view/DisplayCutout;

    move-result-object p1

    move v4, v6

    move v5, v7

    :goto_2
    iput-object p1, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    const-string/jumbo p2, "WindowManager"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UdcCutoutPolicy: updateUdcCutout="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/samsung/android/rune/CoreRune;->isSamsungLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "UdcCutoutPolicy: updateUdcCutout=null, isPrimaryDisplay=true"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move v4, p1

    move v5, p2

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p1, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez p1, :cond_5

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    return-void

    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-gtz p2, :cond_6

    sget p2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    :goto_4
    move v8, p2

    goto :goto_5

    :cond_6
    mul-int/2addr v0, v4

    div-int p2, v0, p2

    goto :goto_4

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    const/4 v9, 0x0

    move v6, v4

    move v7, v5

    invoke-static/range {v2 .. v9}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method public final updateBaseDisplayMetrics(IIIFF)V
    .locals 8

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput p4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iput p5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    iget-boolean p4, p0, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    const/4 p5, 0x0

    if-nez p4, :cond_0

    iget-boolean p4, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-eqz p4, :cond_6

    :cond_0
    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_2

    :cond_1
    move v4, p1

    move v5, p2

    goto :goto_0

    :cond_2
    iget-object p4, p4, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p4, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v2, p4, Landroid/graphics/Point;->x:I

    iget v3, p4, Landroid/graphics/Point;->y:I

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_1

    :goto_0
    move-object p1, p5

    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mInitialRoundedCorners:Landroid/view/RoundedCorners;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    if-lez p3, :cond_4

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    int-to-float p1, p3

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p1, p2

    iput p1, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/RoundedCorners;->fromCustomResources(Landroid/content/res/Resources;Ljava/lang/String;IIIILandroid/util/DisplayMetrics;Z)Landroid/view/RoundedCorners;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-static/range {v0 .. v5}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_2
    move-object p1, p5

    :goto_3
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseRoundedCorners:Landroid/view/RoundedCorners;

    :cond_6
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_PERSISTING_DISPLAY_SIZE_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-eqz p3, :cond_8

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    and-int/lit8 p1, p1, -0x2

    goto :goto_4

    :cond_7
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_4
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_8
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez p1, :cond_9

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-le p2, p1, :cond_9

    int-to-float p3, p1

    int-to-float p2, p2

    div-float/2addr p3, p2

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    mul-float/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    :cond_9
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mForcedHideCutout:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_b

    const/4 p3, 0x2

    if-ne p1, p3, :cond_a

    goto :goto_5

    :cond_a
    iget p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayCutout(II)V

    goto :goto_6

    :cond_b
    :goto_5
    iput-object p5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayCutout:Landroid/view/DisplayCutout;

    :goto_6
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length p1, p0

    const/4 p3, 0x0

    :goto_7
    if-ge p3, p1, :cond_c

    aget-object p4, p0, p3

    iput-boolean p2, p4, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_c
    return-void
.end method

.method public final updateDisplayAndOrientation(Landroid/content/res/Configuration;)Landroid/view/DisplayInfo;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v1, v1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    if-eqz v3, :cond_3

    iget v5, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v5, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v7, v1, v8}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/DisplayShape;

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8, v1, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v1, v9, Landroid/view/DisplayInfo;->rotation:I

    iput v4, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v5, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v1, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iput v1, v9, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    iput v10, v9, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_4

    iget v11, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_3
    int-to-float v11, v11

    goto :goto_4

    :cond_4
    iget v11, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_5

    iget v12, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_5
    int-to-float v12, v12

    goto :goto_6

    :cond_5
    iget v12, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_5

    :goto_6
    int-to-float v13, v4

    div-float/2addr v13, v11

    int-to-float v11, v5

    div-float/2addr v11, v12

    iget v12, v9, Landroid/view/DisplayInfo;->physicalXDpi:F

    mul-float/2addr v12, v13

    iget v14, v9, Landroid/view/DisplayInfo;->physicalYDpi:F

    mul-float/2addr v14, v11

    cmpl-float v1, v1, v12

    if-nez v1, :cond_6

    cmpl-float v1, v10, v14

    if-eqz v1, :cond_9

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateDisplayAndOrientation: Change "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "x"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v15, v15, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "dpi to "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "dpi, BaseDpi="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v9, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v9, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", DisplayRatio="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    cmpl-float v9, v13, v13

    if-nez v9, :cond_8

    cmpl-float v9, v11, v11

    if-eqz v9, :cond_7

    goto :goto_7

    :cond_7
    const-string v9, ""

    goto :goto_8

    :cond_8
    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, ", adjustedRatio="

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "WindowManager"

    invoke-static {v9, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v12, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v14, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    :cond_9
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iput v8, v1, Landroid/view/DisplayInfo;->appHeight:I

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v8, 0x0

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v10, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1, v9, v10, v8}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v2, v8

    :cond_b
    iput-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput-object v6, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v7, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v2, v6

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    goto :goto_9

    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v1, Landroid/view/DisplayInfo;->flags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v2, v6

    iput v2, v1, Landroid/view/DisplayInfo;->flags:I

    :goto_9
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v7, 0x0

    move v6, v5

    move v5, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->computeSizeRanges(Landroid/view/DisplayInfo;ZIIFLandroid/content/res/Configuration;Z)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setDisplayInfoOverride()V

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoChanged()V

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method public updateDisplayAreaOrganizers()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateDisplayFrames(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    move-object v2, v1

    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    move-object v3, v2

    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->calculateRoundedCornersForRotation(I)Landroid/view/RoundedCorners;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mPrivacyIndicatorBoundsCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mCurrentPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v6, v1, v7}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/PrivacyIndicatorBounds;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayShapeCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v7, v1, v8}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/DisplayShape;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v2, -0x2710

    invoke-virtual {v1, p1, v0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iput v1, v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/high16 v2, 0x4000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/FreeformController;->updateFreeformBoundsForLidStateChanged(Z)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/FreeformController;->updateFreeformBoundsForLidStateChanged(Z)V

    :cond_3
    :goto_2
    if-nez p3, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(ILcom/android/server/wm/ActivityRecord;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    throw p1
.end method

.method public final updateImeControlTarget(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsStateController$1;

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x5cc2f3394287cc11L    # -6.098552492072722E-139

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v5, v6, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_8

    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateImeControlTarget:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n    prevControlTarget="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n    nextControlTarget="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n    forceUpdateImeParent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n    callers="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    const-string/jumbo v0, "MT_IME_DEBUG"

    invoke-static {p1, v1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v1, v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_4

    :cond_9
    move-object p1, v2

    :goto_4
    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    const/4 v0, 0x4

    invoke-direct {p1, v0, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eq v0, p1, :cond_5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateImeInputAndControlTarget: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    controlTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    sourceProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MT_IME_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x3c6ea13e6a98c581L    # -3.129126484704378E17

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v6, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v4, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v2, v0, :cond_4

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onInputTargetChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onInputTargetChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_5
    return-void
.end method

.method public final updateImeParent()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->computeImeParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    const-string/jumbo v4, "updateImeParent: reset surface parent(d#"

    const-string/jumbo v5, "WindowManager"

    if-eq v3, p0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") surface is moved to other display, r= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v3}, Lcom/android/server/wm/DexController;->shouldShowImeForExternalDesktop()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") by IME policy for external desktop display, r= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eq v2, v4, :cond_7

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    goto :goto_3

    :cond_5
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentContainer:Lcom/android/server/wm/ActivityRecord;

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x7d03

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v4, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastRelativeLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeLayeringTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastRelativeLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void

    :cond_8
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParentWindow:Lcom/android/server/wm/WindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodSurfaceParent:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const-string/jumbo v2, "reparent_to_imeParent"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->addLowDebugName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForIme(Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_a
    return-void
.end method

.method public final updateKeepClearAreas()V
    .locals 9

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/16 v3, 0x9

    new-array v3, v3, [F

    new-instance v4, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRestrictedKeepClearAreas:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mUnrestrictedKeepClearAreas:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    iget-object v3, v2, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    :try_start_0
    iget-object v5, v2, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/view/IDisplayWindowListener;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v6, v7, v8}, Landroid/view/IDisplayWindowListener;->onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, v2, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_2
    return-void
.end method

.method public final updateMirroredSurfaceFromDisplayManager()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->isCurrentlyRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->fetchSurfaceSizeIfPresent()Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateMirroredSurfaceFromDisplayManager: surfaceSize="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", recordedContentBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ContentRecorder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/ContentRecorder;->mRecordedWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/ContentRecorder;->updateMirroredSurface(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public final updateOrientation()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result p0

    return p0
.end method

.method public final updateOrientation(Z)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getOrientation()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object v6, v6, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v6, v6, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    aget-boolean v6, v6, v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v8, 0x5

    iget-object v9, v0, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/server/wm/DisplayRotationReversionController$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v6

    if-ne v6, v8, :cond_6

    aget-boolean v6, v7, v3

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x6070f7c12293c0ccL

    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/android/server/wm/DisplayRotationReversionController$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v6

    if-ne v6, v8, :cond_4

    goto :goto_1

    :cond_4
    aget-boolean v6, v7, v3

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, -0x1c981d3924f8c0d6L    # -7.211543063252226E170

    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_a

    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_8

    iget v2, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    if-eq v1, v2, :cond_8

    iput v1, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v6, v2, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v6, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v5}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_2

    :cond_9
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return v5

    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayRotation;->updateOrientation(IZ)Z

    move-result p0

    return p0
.end method

.method public final updateOrientationAndComputeConfig(Z)Landroid/content/res/Configuration;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v0, v0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/wm/DragState;->mDragInProgressByRecents:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "WindowManager"

    if-eqz v0, :cond_2

    const-string p0, "Ignore updateOrientation during dragging by Recents."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget v0, v0, Lcom/android/server/wm/ChangeTransitionController;->mFullToSplitTransitionSyncId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    const-string p0, "Ignore updateOrientation during ai key."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final updateRecording()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/ContentRecorder;->mContentRecordingSession:Landroid/view/ContentRecordingSession;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    if-eqz v1, :cond_3

    aget-boolean p0, v2, v3

    if-eqz p0, :cond_3

    int-to-long v0, v0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x39c39c27173c3a3cL    # 1.9336924814073833E-30

    invoke-static {p0, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_4

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v5, :cond_4

    aget-boolean p0, v2, v3

    if-eqz p0, :cond_3

    int-to-long v0, v0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x4c2f4daab1c03d0eL    # 9.824726878648732E58

    invoke-static {p0, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v5, 0x5

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_5

    int-to-long v6, v0

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x8d6071275dc810L

    invoke-static {v3, v7, v8, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v1}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    aget-boolean v1, v2, v4

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x5ad5c39f7dc03509L    # 3.7715503598578044E129

    invoke-static {v0, v2, v3, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mContentRecorder:Lcom/android/server/wm/ContentRecorder;

    invoke-virtual {p0}, Lcom/android/server/wm/ContentRecorder;->updateRecording()V

    return-void
.end method

.method public final updateSystemGestureExclusion()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionWasRestricted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionUnrestricted:Landroid/graphics/Region;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_3

    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v4, v5, v0, v1}, Landroid/view/ISystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_3
    const-string/jumbo v5, "WindowManager"

    const-string v6, "Failed to notify SystemGestureExclusionListener"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mSystemGestureExclusionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return v3

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    throw p0
.end method

.method public final updateWindowsForAnimator()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAsyncRotationController:Lcom/android/server/wm/AsyncRotationController;

    if-eqz p0, :cond_9

    iget v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    iget-object v2, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTimeoutRunnable:Lcom/android/server/wm/AsyncRotationController$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionPrepared:Z

    if-nez p0, :cond_9

    :cond_1
    iget-object p0, v2, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRotationChanging()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "AsyncRotation_WindowManager"

    const-string v0, "Cancel for no change"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AsyncRotationController$Operation;

    iget-boolean v4, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mIsCompletionPending:Z

    if-nez v4, :cond_8

    iget v3, v3, Lcom/android/server/wm/AsyncRotationController$Operation;->mActions:I

    if-ne v3, v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_7

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_7
    if-ne v6, v4, :cond_8

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_9
    :goto_3
    return-void
.end method
