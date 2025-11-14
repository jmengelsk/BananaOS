.class public final Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final SHOW_TYPES_FOR_PANIC:I

.field public static final SHOW_TYPES_FOR_SWIPE:I

.field public static final USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

.field public static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field public static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field public static final sTmpRect:Landroid/graphics/Rect;

.field public static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllowLockscreenWhenOn:Z

.field public final mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

.field public volatile mAwake:Z

.field public mBottomGestureHost:Lcom/android/server/wm/WindowState;

.field public mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

.field public mCanSystemBarsBeShownByUser:Z

.field public final mCarDockEnablesAccelerometer:Z

.field public mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserResources:Landroid/content/res/Resources;

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public final mDeskDockEnablesAccelerometer:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public volatile mDockMode:I

.field public mDreamingLockscreen:Z

.field public mEdgeEnabled:Z

.field public final mExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mFocusedApp:Ljava/lang/String;

.field public mFocusedWindow:Lcom/android/server/wm/WindowState;

.field public final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field public mForceShowNavigationBarEnabled:Z

.field public mForciblyShownTypes:I

.field public mFreeformTaskSurfaceOverlappingWithNavBar:Z

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public final mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

.field public mHasBottomNavigationBar:Z

.field public volatile mHasNavigationBar:Z

.field public volatile mHdmiPlugged:Z

.field public final mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

.field public mImeInsetsConsumed:Z

.field public mImmersiveConfirmationWindowExists:Z

.field public final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

.field public mIsFreeformWindowOverlappingWithNavBar:Z

.field public mIsImmersiveMode:Z

.field public mIsKnoxZtStarted:Z

.field public mIsPipWindowOverlappingWithNavBar:Z

.field public mIsResizingByDivider:Z

.field public volatile mKeyguardDrawComplete:Z

.field public mLastAppearance:I

.field public mLastBehavior:I

.field public mLastDisableFlags:I

.field public mLastFocusIsFullscreen:Z

.field public mLastFocusIsFullscreenAll:Z

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mLastRequestedVisibleTypes:I

.field public mLastShowingDream:Z

.field public mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mLeftGestureHost:Lcom/android/server/wm/WindowState;

.field public mLeftGestureInset:I

.field public final mLetterboxDetails:Ljava/util/ArrayList;

.field public volatile mLidState:I

.field public final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarOpacityMode:I

.field public mNavigationBar:Lcom/android/server/wm/WindowState;

.field public volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field public volatile mNavigationBarCanMove:Z

.field public volatile mNotificationShade:Lcom/android/server/wm/WindowState;

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public final mParentDisplayFrame:Landroid/graphics/Rect;

.field public mPendingPanicGestureUptime:J

.field public volatile mPersistentVrModeEnabled:Z

.field public mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field public final mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field public final mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

.field public mRemoteInsetsControllerControlsSystemBars:Z

.field public mRightGestureHost:Lcom/android/server/wm/WindowState;

.field public mRightGestureInset:I

.field public volatile mScreenOnEarly:Z

.field public volatile mScreenOnFully:Z

.field public volatile mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mShouldAttachNavBarToAppDuringTransition:Z

.field public mShowingDream:Z

.field public mSkipTransferTouchToStatusBar:Z

.field public mStatusBar:Lcom/android/server/wm/WindowState;

.field public final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

.field public final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarBackgroundWindows:Ljava/util/ArrayList;

.field public final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public final mSystemBarColorApps:Landroid/util/ArraySet;

.field public final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field public mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field public final mTmpFrame:Landroid/graphics/Rect;

.field public mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field public mTopGestureHost:Lcom/android/server/wm/WindowState;

.field public mTopIsFullscreen:Z

.field public mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

.field public mTouchEventViewHash:I

.field public final mUiContext:Landroid/content/Context;

.field public final mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowLayout:Landroid/view/WindowLayout;

.field public volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    const-string/jumbo v0, "persist.wm.debug.cached_insets_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    new-instance v4, Landroid/view/WindowLayout;

    invoke-direct {v4}, Landroid/view/WindowLayout;-><init>()V

    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mParentDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-boolean v4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget v5, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v4, v5}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/content/Context;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v5, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v5, Lcom/android/server/wm/DisplayPolicyExt;

    invoke-direct {v5, v0, p1, p0}, Lcom/android/server/wm/DisplayPolicyExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget v5, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    const v7, 0x111013b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    const v7, 0x1110006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x1110228

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    const v1, 0x10e00ce

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    :cond_4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    sget-boolean v1, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    new-instance v6, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {v6, v4, v3, v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicy$PolicyHandler;Lcom/android/server/wm/DisplayPolicy$1;)V

    iput-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    new-instance v1, Landroid/view/TwoFingerSwipeGestureDetector;

    new-instance v7, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    const-string v8, "DP"

    invoke-direct {v1, v4, v7, v8}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    invoke-virtual {p2, v6}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_5
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v1, p0, v5, v5}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;II)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

    iget-object v4, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_6

    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v2, v0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    :cond_6
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :goto_2
    new-instance v1, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    invoke-direct {p1, v3, p2, v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;I)V

    invoke-virtual {v3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-direct {p1, v3, v0}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;I)V

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->right:I

    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_2

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_2
    iget v0, p1, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_3

    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/graphics/Rect;->left:I

    return-void

    :cond_3
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    if-eqz p1, :cond_4

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public static chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    if-nez v0, :cond_3

    :cond_0
    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    if-eqz p0, :cond_2

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    return-object p0
.end method

.method public static drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x8000

    and-int/2addr p0, v3

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStashedBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    :goto_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_4

    const/16 v2, 0x7df

    if-eq v0, v2, :cond_3

    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_0

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    :cond_0
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v6, 0x1004

    if-ltz v0, :cond_1

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    :cond_1
    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v0, :cond_8

    const v0, 0x1030004

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    :cond_3
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal attributes: Main window of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that isn\'t translucent trying to fit insets. fitInsetsTypes="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p1

    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iput-wide v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_8
    :goto_1
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    :cond_9
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_a

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    :cond_a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean p1, p1, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    if-nez p1, :cond_b

    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_b
    iget-object p1, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, p1, Landroid/view/InsetsFlags;->appearance:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x100000

    and-int/2addr p0, v1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-nez p0, :cond_d

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v2, p0

    if-eqz v2, :cond_c

    const/high16 v2, 0x8000000

    and-int/2addr v2, p0

    if-eqz v2, :cond_c

    goto :goto_2

    :cond_c
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {p2, p0, v1, v1}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    :goto_2
    move v3, v1

    :cond_e
    or-int p0, v0, v3

    iput p0, p1, Landroid/view/InsetsFlags;->appearance:I

    return-void
.end method

.method public final beginPostLayoutPolicyLw()V
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v4, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v5, v4, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    const-string v6, "FreeformController"

    if-nez v5, :cond_0

    const-string v4, "Default display content is null"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iput-object v0, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    iput-object v0, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    new-instance v7, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v8}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FreeformController;I)V

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v5, v4, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    iget-object v7, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    const-string v8, ", new="

    if-eq v5, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "beginPostLayoutPolicyLw: forceHideRequester changed, old="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    iput-object v5, v4, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/FreeformController;->setBlockToAddForceHideFreeformTasks(Z)V

    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    iget-object v7, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    if-eq v5, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "beginPostLayoutPolicyLw: forceHide minimize Requester changed, old="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    iput-object v5, v4, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    :cond_2
    :goto_0
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v3, :cond_4

    iput-object v0, v2, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-static {}, Lcom/android/server/policy/SystemKeyManager;->getInstance()Lcom/android/server/policy/SystemKeyManager;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iput-object v0, v3, Lcom/android/server/policy/SystemKeyManager;->mFakeFocusedWindowState:Lcom/android/server/wm/WindowState;

    :cond_4
    :goto_1
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iput-object v0, v2, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_5

    iput-boolean v1, v2, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    :cond_5
    iput-boolean v1, v2, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    return-void
.end method

.method public final finishPostLayoutPolicyLw()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v7, v3}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    :cond_3
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_4

    iput-boolean v2, v1, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0xa48

    if-ne v4, v5, :cond_6

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/server/wm/FreeformController;->setBlockToAddForceHideFreeformTasks(Z)V

    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v1, :cond_d

    iget-boolean v4, v1, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    iget-object v5, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_8

    iget v4, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_8
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    if-eqz v4, :cond_d

    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_9

    iget-boolean v6, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-nez v6, :cond_a

    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_b

    :try_start_1
    iput-boolean v3, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    new-instance v7, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    move v4, v2

    goto :goto_2

    :cond_9
    :try_start_2
    iget-boolean v6, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-eqz v6, :cond_a

    invoke-interface {v4, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_b

    :try_start_3
    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    new-instance v7, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_a
    move v4, v2

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_b
    :goto_3
    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_c

    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_d

    :cond_c
    iget v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v3

    iput v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_d
    :goto_4
    iget v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    if-eqz v1, :cond_11

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_e
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    if-ne v2, v3, :cond_f

    if-eqz v2, :cond_11

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v4, :cond_10

    :try_start_4
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifySamsungPayInfo: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPolicyExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v2

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-eq v2, v3, :cond_12

    goto :goto_6

    :cond_12
    if-eqz p0, :cond_13

    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final finishWindowsDrawn()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_LARGE_FLIP_COVER:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicyExt;->finishWindowsDrawn()V

    :cond_2
    monitor-exit v0

    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .locals 10

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_2
    if-ltz v5, :cond_8

    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    if-eq v8, p2, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v8

    if-ne p2, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v0, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Insets;->left:I

    if-lez v9, :cond_4

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v9, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_4
    iget v9, v8, Landroid/graphics/Insets;->top:I

    if-lez v9, :cond_5

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Insets;->top:I

    add-int/2addr v9, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_5
    iget v9, v8, Landroid/graphics/Insets;->right:I

    if-lez v9, :cond_6

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Insets;->right:I

    sub-int v9, v8, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_6
    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    if-lez v8, :cond_7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Insets;->bottom:I

    sub-int v9, v8, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    :cond_7
    :goto_3
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_8
    return-object v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public final getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v0, v0, p1

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)Landroid/view/InsetsState;

    :cond_0
    return-object v0
.end method

.method public final getNavigationBarInsets()Landroid/graphics/Insets;
    .locals 3

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object p0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object v0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget-object p0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy$LegacyLetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object p1, p1, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p2, :cond_6

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v4, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    add-int/2addr v2, v3

    array-length p0, p1

    if-ne v2, p0, :cond_7

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x7d0

    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->canShowInCurrentDevice()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v3, v3, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object v3, v3, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_2

    :cond_4
    move-object/from16 v3, p3

    :goto_2
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    if-eqz v2, :cond_5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    iput-object v6, v4, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x1

    if-ne v8, v6, :cond_6

    move v6, v7

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    const/4 v10, -0x1

    if-eqz v6, :cond_7

    iget v11, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move v13, v11

    goto :goto_5

    :cond_7
    move v13, v10

    :goto_5
    if-eqz v6, :cond_8

    iget v10, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_8
    move v14, v10

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_9

    goto/16 :goto_a

    :cond_9
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v10, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v11, :cond_a

    invoke-interface {v11}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v11

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_c

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-ne v6, v11, :cond_c

    goto :goto_7

    :cond_b
    if-ne v1, v11, :cond_c

    :goto_7
    move v11, v7

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    iget-object v12, v10, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v15, v10, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v15, v15, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    iget-object v9, v10, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v9, v9, Lcom/android/server/wm/WindowManagerService;->mOverrideConfigTypes:I

    invoke-virtual {v15, v5, v9, v7}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    if-eqz v11, :cond_11

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_11

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v9

    or-int/2addr v6, v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v9

    or-int/2addr v6, v9

    const/4 v9, 0x0

    invoke-virtual {v15, v5, v6, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_14

    iget-object v6, v10, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v6, v6, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v11, v11, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v12

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightId()I

    move-result v15

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    if-nez v12, :cond_e

    iget v6, v6, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    if-ne v6, v7, :cond_d

    goto :goto_9

    :cond_d
    div-int/lit8 v15, v15, 0x2

    :cond_e
    :goto_9
    sub-int/2addr v9, v15

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v11, 0x42000000    # 32.0f

    invoke-static {v7, v11, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v9, v6

    :cond_f
    const/4 v6, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v9, v10

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    neg-int v5, v5

    invoke-virtual {v9, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    if-nez v5, :cond_10

    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    :cond_10
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iput-boolean v7, v5, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    goto :goto_a

    :cond_11
    iget-boolean v9, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->forceReportingResized()V

    goto :goto_a

    :cond_12
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-object v9, v6, Lcom/android/server/wm/PopOverState;->mCalculatedSystemInsets:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Insets;->top:I

    if-ne v10, v11, :cond_13

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Insets;->bottom:I

    if-ne v9, v10, :cond_13

    const/4 v9, 0x0

    iput v9, v6, Lcom/android/server/wm/PopOverState;->mRecomputeConfigCount:I

    goto :goto_a

    :cond_13
    iget v9, v6, Lcom/android/server/wm/PopOverState;->mRecomputeConfigCount:I

    add-int/2addr v9, v7

    iput v9, v6, Lcom/android/server/wm/PopOverState;->mRecomputeConfigCount:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "shouldRecomputeConfiguration: r="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", old="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/android/server/wm/PopOverState;->mCalculatedSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", count="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lcom/android/server/wm/PopOverState;->mRecomputeConfigCount:I

    const-string/jumbo v6, "PopOverState"

    invoke-static {v9, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_14
    :goto_a
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_15

    iget v2, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_15

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mParentDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_15
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mParentDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_b
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_USE_UDC_CUTOUT_TO_SHOW_LETTERBOX:Z

    if-eqz v2, :cond_17

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v6, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v9, :cond_17

    iget-object v9, v9, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    if-eqz v9, :cond_17

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mDisplayCutoutController:Lcom/android/server/wm/DisplayCutoutController;

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10, v11}, Lcom/android/server/wm/DisplayCutoutController;->getPolicy(ILjava/lang/String;Z)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_17

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v9, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_c

    :cond_16
    new-instance v9, Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iget-object v6, v6, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v6, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-direct {v9, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move v6, v7

    move-object/from16 v16, v9

    move v9, v6

    goto :goto_d

    :cond_17
    :goto_c
    move v6, v7

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_d
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    move v10, v9

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object v9

    if-eqz v2, :cond_18

    if-eqz v10, :cond_18

    :goto_e
    move v3, v11

    goto :goto_f

    :cond_18
    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    move-object/from16 v16, v3

    goto :goto_e

    :goto_f
    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    iget v15, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    iget v3, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v18

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mParentDisplayFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_19

    move/from16 v20, v10

    :goto_10
    move-object/from16 v19, v0

    move-object/from16 v17, v4

    move-object/from16 v10, v16

    move/from16 v16, v3

    const/4 v3, 0x0

    goto :goto_11

    :cond_19
    const/16 v20, 0x0

    goto :goto_10

    :goto_11
    invoke-virtual/range {v7 .. v20}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;ILandroid/graphics/Rect;Z)V

    move-object/from16 v0, v17

    iget v2, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v4, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v7, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v7, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v9, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iget-object v9, v7, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    cmpl-float v10, v8, v5

    if-eqz v10, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    move-result v10

    cmpl-float v10, v10, v5

    if-nez v10, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget v11, v9, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float/2addr v13, v8

    add-float/2addr v13, v12

    float-to-int v13, v13

    iput v13, v9, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v5, v12

    float-to-int v5, v5

    add-int/2addr v11, v5

    iput v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v5, v10

    mul-float/2addr v5, v8

    add-float/2addr v5, v12

    float-to-int v5, v5

    add-int/2addr v13, v5

    iput v13, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_13

    :cond_1b
    :goto_12
    iget v8, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    cmpl-float v5, v8, v5

    if-eqz v5, :cond_1c

    iget-object v5, v7, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->scale(F)V

    :cond_1c
    :goto_13
    iget-boolean v0, v0, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    iput-boolean v0, v7, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    iget-object v0, v7, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v5, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v5, :cond_1d

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_14

    :cond_1d
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_14

    :cond_1e
    move v0, v3

    move v9, v0

    :goto_14
    iget-object v3, v7, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v5, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v0

    invoke-virtual {v3, v8, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v0, :cond_1f

    iget v0, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-ne v4, v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    iput v4, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    iput-boolean v6, v7, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    :cond_20
    iget-object v0, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v7, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f2

    if-ne v0, v2, :cond_23

    iget-object v0, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    :cond_23
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_25

    iget-object v0, v7, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_24

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_25

    :cond_24
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;)Z

    :cond_25
    iget-object v0, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_26

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v2, :cond_26

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    :cond_26
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_0

    const v1, 0x111024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    const v1, 0x10e010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    const v1, 0x1110202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    const v1, 0x1110006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    const v1, 0x111003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    const v5, 0x10e010a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    if-eq v4, v5, :cond_2

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "DisplayPolicyExt#onConfigurationChanged, NavigationMode(new)="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    const-string v6, ", NavigationMode(old)="

    const-string v7, ", callers="

    invoke-static {v5, v4, v6, v7, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DisplayPolicyExt"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-nez v0, :cond_3

    const v0, 0x1110206

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    return-void
.end method

.method public final removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_2

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_3

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4, v1, v1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    if-eq v4, v5, :cond_4

    iget-object v5, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v5, v4}, Landroid/view/InsetsState;->removeSource(I)V

    iget-object v5, v2, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_6

    iput-object v1, v2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    :cond_6
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_7

    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    :cond_7
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-object v4, v2, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-nez v4, :cond_8

    iget-object v2, v2, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    :cond_9
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    iget-object v4, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_a

    iput-object v1, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v2

    iget-object v6, v4, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_b

    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayPolicyExt;->notifyRequestedGameToolsWin(Z)V

    goto :goto_2

    :cond_b
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_c

    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    :cond_c
    :goto_2
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    if-eqz p1, :cond_d

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    :cond_d
    return-void
.end method

.method public requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .locals 8

    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const-string/jumbo v1, "WindowManager"

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    if-ne v0, v2, :cond_2

    const-string/jumbo p0, "Not showing transient bar, because lock task mode pinned"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    if-nez v0, :cond_4

    const-string/jumbo p0, "Remote insets controller disallows showing system bars - ignoring request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_0

    :cond_5
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, v4, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result v5

    and-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "requestTransientBars: swipeTarget="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", controlTarget="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", canShowTransient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", restorePositionTypes=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    iget-object v6, v2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    if-ne v6, v7, :cond_8

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    and-int/2addr v6, v4

    if-eqz v6, :cond_8

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p0

    invoke-interface {v0, p0, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_8
    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    if-ne v2, v6, :cond_9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p0

    invoke-interface {v0, p0, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_9
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    instance-of v1, v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    iput-boolean v1, p1, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    sget v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    invoke-interface {v0, v4, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1

    :cond_a
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr p2, v2

    invoke-interface {v0, p2, v5, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, p2, :cond_c

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/input/InputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "Could not transfer touch to the status bar"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->confirmImmersivePrompt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    :goto_2
    return-void

    :cond_f
    :goto_3
    const-string/jumbo p0, "Not showing transient bar, because factory test mode"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final screenTurnedOff(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->release(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object p1, p1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v2, v1, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x20

    const-string/jumbo v2, "screenTurnedOnWhileDozing"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setAwake(Z)V
    .locals 4

    const-string v0, "Late acquire sleep token for "

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-ne p1, v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, v3, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iput-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {v2, v3}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p1, p1, Lcom/android/server/wm/DisplayContent;->mSleeping:Z

    if-nez p1, :cond_5

    const-string/jumbo p1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p1, p1, Lcom/android/server/wm/RootWindowContainer;->mDisplayOffTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    :cond_5
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCanSystemBarsBeShownByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    return-void
.end method

.method public final setHdmiPlugged(ZZ)V
    .locals 1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final setPointerLocationEnabled(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo p0, "SPEG"

    const-string/jumbo p1, "Pointer location is not supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const/4 p1, 0x4

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setRemoteInsetsControllerControlsSystemBars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    return-void
.end method

.method public final shouldKeepCurrentDecorInsets()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldKeepSystemUiControllingWindow()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v10

    iget v13, v4, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    iget v14, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    sget-object v15, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v16

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v5 .. v18}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;ILandroid/graphics/Rect;Z)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    iget-object v8, v8, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroid/view/InsetsSource;

    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-direct {v9, v10}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v7, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriFunction;

    if-eqz v8, :cond_0

    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    iget-object v11, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v8, v1, v10, v11}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    invoke-virtual {v9, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    invoke-virtual {v5, v9}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final startEnableTouchEvent(Z)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/16 p1, 0x65

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x66

    iput p1, v0, Landroid/os/Message;->arg1:I

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final systemReady()V
    .locals 4

    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SystemGesture"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "systemReady() >> KnoxZT startEnableTouchEvent called for Display Id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v1, "WindowManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final topAppHidesSystemBar(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public updateCachedDecorInsets()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    :cond_1
    return-void
.end method

.method public final updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v3, v1, :cond_0

    const v1, 0x1110203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x1110026

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iput v5, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iput p0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iput v3, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iput v1, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    invoke-virtual {v4}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    invoke-virtual {v4}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    iget p0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iget v0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    iget-object v1, v4, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    iput p0, v1, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    iput v0, v1, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    return-void

    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_LARGE_FLIP_COVER:Z

    if-eqz v0, :cond_5

    iget-object v0, v4, Lcom/android/server/wm/TspStateController;->mCoverDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    iput v5, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iput p0, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iput v3, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iput v1, v0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    iget-object p0, v4, Lcom/android/server/wm/TspStateController;->mFlipCoverDefaultCommand:Lcom/android/server/wm/TspGripCommand;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    iget-object p0, v4, Lcom/android/server/wm/TspStateController;->mFlipCover3rdPartyCommand:Lcom/android/server/wm/TspGripCommand;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/TspGripCommand;->parse(Lcom/android/server/wm/TspStateController$DeviceSize;Ljava/lang/String;Z)Z

    :cond_5
    return-void
.end method

.method public final updateCurrentUserResources()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v0

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-void
.end method

.method public final updateDecorInsetsInfo()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepCurrentDecorInsets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    iget v2, v2, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-virtual {v5, v0, v3, v4, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)Landroid/view/InsetsState;

    move-result-object v0

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v2

    iget-object v4, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    iget-object v7, v5, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    move-result p0

    sub-int/2addr p0, v6

    :goto_0
    if-ltz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/InsetsState;->sourceSize()I

    move-result p0

    sub-int/2addr p0, v6

    :goto_1
    if-ltz p0, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    if-eqz v0, :cond_5

    iget v2, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_6

    aget-object v7, v0, v1

    iput-boolean v6, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez p0, :cond_7

    return v6

    :cond_7
    xor-int/lit8 p0, v4, 0x1

    return p0
.end method

.method public final updateForceShowNavBarSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .locals 5

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    if-eqz p0, :cond_1

    move v2, v4

    :cond_1
    if-nez v0, :cond_4

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 p0, p1, -0x11

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz p1, :cond_3

    iget p1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v4, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p1

    if-eqz p1, :cond_3

    return p0

    :cond_3
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p1, p1, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0

    :cond_4
    :goto_0
    and-int/lit8 p0, p1, -0x11

    return p0

    :cond_5
    :goto_1
    and-int/lit8 p1, p1, -0x11

    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p0, p0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0

    :cond_6
    return p1
.end method

.method public final updateSystemBarAttributes()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_28

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepSystemUiControllingWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_28

    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_1
    if-nez v1, :cond_5

    goto/16 :goto_28

    :cond_5
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v4, v1, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    new-instance v6, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda19;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    :goto_2
    move v6, v7

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v7, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    move v6, v3

    :goto_3
    const/4 v8, 0x5

    invoke-virtual {v2, v8, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v7

    goto :goto_4

    :cond_8
    move v8, v3

    :goto_4
    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_9
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    sget-object v9, Landroid/window/DesktopModeFlags;->ENABLE_FULLY_IMMERSIVE_IN_DESKTOP:Landroid/window/DesktopModeFlags;

    invoke-virtual {v9}, Landroid/window/DesktopModeFlags;->isTrue()Z

    if-nez v6, :cond_b

    iget-object v9, v2, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    if-eqz v9, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v9

    if-ne v9, v7, :cond_a

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    goto :goto_5

    :cond_a
    move v9, v3

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    or-int/2addr v9, v10

    :goto_5
    iput v9, v2, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v11

    or-int/2addr v10, v11

    goto :goto_6

    :cond_c
    move v10, v3

    :goto_6
    or-int/2addr v9, v10

    iget-object v10, v2, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget v11, v10, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    const/4 v12, 0x4

    if-eq v11, v9, :cond_f

    iput v9, v10, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    iget-object v11, v10, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v7

    move v13, v3

    :goto_7
    if-ltz v11, :cond_e

    iget-object v14, v10, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v15, v14, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v15}, Landroid/view/InsetsSource;->getType()I

    move-result v15

    and-int/2addr v15, v9

    if-eqz v15, :cond_d

    move v15, v12

    goto :goto_8

    :cond_d
    move v15, v3

    :goto_8
    invoke-virtual {v14, v15}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(I)Z

    move-result v14

    or-int/2addr v13, v14

    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual {v10}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    :cond_f
    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v2

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v11, v9, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v11, v10}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_9

    :cond_10
    iget-object v9, v9, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v9, v9, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v9, :cond_11

    :try_start_0
    invoke-interface {v9, v2}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_11
    :goto_9
    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    move v2, v7

    goto :goto_a

    :cond_13
    move v2, v3

    :goto_a
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    move v9, v7

    move v10, v9

    :goto_b
    if-ltz v2, :cond_14

    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    invoke-static {v11}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    move-result v13

    and-int/2addr v9, v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v13

    invoke-virtual {v0, v11, v13}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v11

    and-int/2addr v10, v11

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_14
    const/4 v11, 0x2

    if-eqz v9, :cond_15

    move v9, v11

    goto :goto_c

    :cond_15
    const/4 v9, 0x3

    :goto_c
    if-nez v10, :cond_16

    or-int/lit8 v9, v9, 0x20

    :cond_16
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v14, v13, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v15, v0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-static {v10, v14, v15}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-nez v10, :cond_18

    iget-object v14, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v14, :cond_17

    goto :goto_d

    :cond_17
    move v14, v3

    goto :goto_e

    :cond_18
    :goto_d
    move v14, v7

    :goto_e
    iget v15, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/high16 v16, 0x100000

    if-ne v15, v11, :cond_1b

    if-eqz v8, :cond_1a

    iget-boolean v15, v0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v15, :cond_19

    iget-boolean v15, v0, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    if-eqz v15, :cond_1a

    :cond_19
    :goto_f
    and-int/lit8 v9, v9, -0x3

    or-int v9, v9, v16

    goto :goto_12

    :cond_1a
    if-eqz v14, :cond_1f

    :goto_10
    and-int/lit8 v9, v9, -0x3

    goto :goto_12

    :cond_1b
    if-nez v15, :cond_1e

    if-nez v6, :cond_1d

    if-eqz v8, :cond_1c

    goto :goto_11

    :cond_1c
    if-eqz v14, :cond_1f

    goto :goto_10

    :cond_1d
    :goto_11
    iget-boolean v15, v0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v15, :cond_19

    iget-boolean v15, v0, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    if-eqz v15, :cond_1f

    goto :goto_f

    :cond_1e
    if-ne v15, v7, :cond_1f

    if-eqz v8, :cond_1f

    goto :goto_10

    :cond_1f
    :goto_12
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v15

    invoke-virtual {v0, v10, v15}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    move-result v15

    if-nez v15, :cond_20

    or-int/lit8 v9, v9, 0x40

    :cond_20
    iget-object v15, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    iget-boolean v15, v15, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    const/high16 v17, 0x200000

    if-nez v15, :cond_2d

    iget-object v15, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v15, v15, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_21

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_21

    goto/16 :goto_16

    :cond_21
    sget-boolean v15, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    if-eqz v15, :cond_22

    iget-object v15, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v15, :cond_22

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    move-result v15

    if-eqz v15, :cond_22

    and-int/lit8 v6, v9, -0x3

    or-int v9, v6, v17

    goto/16 :goto_18

    :cond_22
    if-eqz v8, :cond_25

    if-eqz v14, :cond_25

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_23

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_13

    :cond_23
    and-int/lit8 v16, v9, -0x3

    :goto_13
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_24

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v6

    if-nez v6, :cond_24

    const/high16 v6, 0x400000

    or-int v9, v16, v6

    goto/16 :goto_18

    :cond_24
    move/from16 v9, v16

    goto/16 :goto_18

    :cond_25
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    if-eqz v8, :cond_26

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_26

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_26

    and-int/lit8 v6, v9, -0x3

    or-int/lit8 v9, v6, 0x40

    goto/16 :goto_18

    :cond_26
    if-eqz v6, :cond_2f

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_TRANSPARENT_NAVIGATION_BAR:Z

    if-eqz v6, :cond_2e

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_28

    iget v6, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    and-int/2addr v6, v11

    if-nez v6, :cond_27

    goto :goto_16

    :cond_27
    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez v6, :cond_2d

    sget-boolean v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v6, :cond_33

    goto :goto_16

    :cond_28
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_16

    :cond_29
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, -0x80000000

    and-int/2addr v6, v10

    if-eqz v6, :cond_2a

    move v6, v7

    goto :goto_14

    :cond_2a
    move v6, v3

    :goto_14
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v6, :cond_2b

    if-eqz v10, :cond_2b

    iget v13, v10, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2b

    sget-object v13, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v10, v10, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-ge v13, v10, :cond_2b

    move v6, v3

    :cond_2b
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_2c

    move v8, v7

    goto :goto_15

    :cond_2c
    move v8, v3

    :goto_15
    if-nez v6, :cond_2d

    if-eqz v8, :cond_33

    :cond_2d
    :goto_16
    and-int/lit8 v9, v9, -0x3

    goto :goto_18

    :cond_2e
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v6, :cond_33

    goto :goto_16

    :cond_2f
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v6, :cond_32

    if-eqz v10, :cond_32

    iget-object v6, v13, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v10, v6, :cond_32

    iget-object v6, v10, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_30

    goto :goto_17

    :cond_30
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v6

    if-nez v6, :cond_31

    goto :goto_17

    :cond_31
    and-int/lit8 v6, v9, -0x41

    or-int/lit8 v9, v6, 0x2

    goto :goto_18

    :cond_32
    :goto_17
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v6, :cond_33

    iget v6, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v6, v7, :cond_33

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_33

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_33

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v6, v11, :cond_33

    goto :goto_16

    :cond_33
    :goto_18
    iget-boolean v6, v0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eq v6, v8, :cond_34

    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    :cond_34
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move v10, v12

    iget-wide v11, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    move/from16 v16, v10

    move-wide/from16 v18, v11

    const-wide/16 v10, 0x0

    cmp-long v12, v18, v10

    if-eqz v12, :cond_35

    sub-long v13, v13, v18

    const-wide/16 v18, 0x7530

    cmp-long v12, v13, v18

    if-gtz v12, :cond_35

    move v12, v7

    goto :goto_19

    :cond_35
    move v12, v3

    :goto_19
    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v12, :cond_37

    if-nez v6, :cond_37

    if-eqz v8, :cond_37

    iget-boolean v6, v13, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v6, :cond_37

    iput-wide v10, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const/high16 v6, 0x1600000

    and-int v8, v4, v6

    if-ne v8, v6, :cond_36

    goto :goto_1a

    :cond_36
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    sget v8, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    :cond_37
    :goto_1a
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FULL_SCREEN:Z

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_38

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isHandleImmersive()Z

    move-result v8

    iget-boolean v10, v6, Lcom/android/server/wm/Task;->mIsHandleImmersive:Z

    if-eq v10, v8, :cond_38

    iput-boolean v8, v6, Lcom/android/server/wm/Task;->mIsHandleImmersive:Z

    invoke-virtual {v6, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_38
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_39

    goto/16 :goto_28

    :cond_39
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v10, v0, Lcom/android/server/wm/DisplayPolicy;->mHasBottomNavigationBar:Z

    invoke-static {v6, v8, v10}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v14

    if-eqz v14, :cond_3a

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v14, v6, :cond_3a

    move v8, v7

    goto :goto_1b

    :cond_3a
    move v8, v3

    :goto_1b
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v14, :cond_3c

    :cond_3b
    :goto_1c
    move v6, v3

    goto :goto_1d

    :cond_3c
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_3d

    goto :goto_1c

    :cond_3d
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-nez v6, :cond_3e

    goto :goto_1c

    :cond_3e
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_3b

    move v6, v7

    :goto_1d
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, v10, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v10, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isFreeformDisallowedToControlSysUi()Z

    move-result v11

    if-nez v11, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_40

    :cond_3f
    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_40

    and-int/lit8 v10, v10, -0x5

    :cond_40
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    if-eqz v11, :cond_41

    if-eqz v8, :cond_41

    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_41

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    move-result v11

    if-eqz v11, :cond_41

    and-int v11, v9, v17

    if-eqz v11, :cond_41

    const v11, -0x200001

    and-int/2addr v9, v11

    :cond_41
    if-eqz v6, :cond_42

    move-object v11, v1

    goto :goto_1e

    :cond_42
    move-object v11, v14

    :goto_1e
    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    move-result v10

    or-int/2addr v9, v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    sget-boolean v10, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez v10, :cond_43

    sget-boolean v10, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v10, :cond_44

    :cond_43
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-eqz v10, :cond_44

    move v10, v7

    goto :goto_1f

    :cond_44
    move v10, v3

    :goto_1f
    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v12, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v13

    if-eqz v13, :cond_45

    if-eqz v11, :cond_45

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v13

    if-nez v13, :cond_45

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eqz v11, :cond_45

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v13

    if-eqz v13, :cond_45

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_45

    move v11, v7

    goto :goto_20

    :cond_45
    move v11, v3

    :goto_20
    if-nez v10, :cond_47

    if-eqz v11, :cond_46

    goto :goto_21

    :cond_46
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v12, v12, Landroid/view/InsetsFlags;->behavior:I

    move v15, v12

    goto :goto_22

    :cond_47
    :goto_21
    const/4 v15, 0x2

    :goto_22
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v13

    if-eqz v13, :cond_49

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v13

    if-nez v13, :cond_48

    goto :goto_23

    :cond_48
    move v13, v3

    goto :goto_24

    :cond_49
    :goto_23
    move v13, v7

    :goto_24
    if-nez v11, :cond_4d

    if-eqz v10, :cond_4a

    goto :goto_26

    :cond_4a
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_4c

    :cond_4b
    move v10, v3

    goto :goto_27

    :cond_4c
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v10

    if-nez v10, :cond_4b

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v10

    if-nez v10, :cond_4b

    :goto_25
    move v10, v7

    goto :goto_27

    :cond_4d
    :goto_26
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x8b2

    if-eq v10, v11, :cond_4b

    const/16 v11, 0x7f8

    if-eq v10, v11, :cond_4b

    goto :goto_25

    :goto_27
    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/android/internal/view/AppearanceRegion;

    const/16 v17, 0x3

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget v2, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    if-eq v2, v4, :cond_4e

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;

    invoke-direct {v3, v5, v4, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda6;-><init>(IILjava/lang/String;)V

    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4e
    iget v2, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/statusbar/LetterboxDetails;

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v4, v9, :cond_4f

    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v4, v15, :cond_4f

    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    if-ne v4, v2, :cond_4f

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    invoke-static {v4, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v4, v13, :cond_4f

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    if-ne v4, v10, :cond_4f

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    invoke-static {v4, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :goto_28
    return-void

    :cond_4f
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_53

    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v4, v13, :cond_50

    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    xor-int/2addr v4, v9

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_53

    :cond_50
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    if-nez v13, :cond_52

    and-int/lit8 v16, v9, 0x4

    if-eqz v16, :cond_51

    goto :goto_29

    :cond_51
    const/4 v7, 0x0

    :cond_52
    :goto_29
    invoke-virtual {v4, v7}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    :cond_53
    iput v9, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    iput v15, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    iput v2, v0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    iput-object v12, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    iput-boolean v13, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    iput-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    const/4 v13, 0x0

    move v7, v10

    move v10, v2

    move v2, v7

    move-object v7, v11

    move-object v11, v12

    move-object v12, v3

    move v3, v6

    move v6, v9

    move v9, v15

    invoke-direct/range {v4 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V

    new-instance v13, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v13, v0, v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {v4, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v4, :cond_54

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v4

    if-eqz v4, :cond_54

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;

    const/4 v13, 0x1

    invoke-direct/range {v4 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda7;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V

    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v8, v0, v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_54
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    if-eq v4, v2, :cond_55

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreenAll:Z

    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    new-instance v7, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    invoke-direct {v7, v0, v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_55
    const-string/jumbo v2, "updateSystemBarAttributes: displayId="

    const-string v4, ", focusedCanBeNavColorWin="

    const-string v7, ", win="

    invoke-static {v5, v2, v4, v7, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", navColorWin="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSystemBarAttributes, bhv="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", apr="

    const-string v4, ", statusBarAprRegions="

    invoke-static {v6, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestedVisibilities="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 5

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    const-string v1, "DisplayPolicy"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v2, p3}, Lcom/android/server/wm/WindowManagerService;->isCallerVirtualDeviceOwner(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "android.permission.CREATE_VIRTUAL_DEVICE"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "android.permission.STATUS_BAR_SERVICE"

    :goto_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_7

    const/16 v3, 0x7de

    const/16 v4, -0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_4

    const/16 v3, 0x7e8

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7f9

    if-eq v2, v3, :cond_5

    const-string/jumbo v3, "WindowManager"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NAVIGATION_BAR_STANDALONE"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_1
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NOTIFICATION_SHADE_STANDALONE"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_2
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_STATUS_BAR_STANDALONE"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2

    :cond_6
    return v4

    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1
    const/4 p0, -0x7

    return p0

    :cond_8
    :goto_2
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    :cond_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
