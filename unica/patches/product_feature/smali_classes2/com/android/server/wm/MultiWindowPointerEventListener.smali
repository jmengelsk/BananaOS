.class public final Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field public mAdjustedMinimalTaskBounds:Z

.field public final mContentRect:Landroid/graphics/Rect;

.field public mDefaultMinimalSizeOfResizableTask:I

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreeformGuideFullscreenDimViewMargin:I

.field public mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

.field public final mInitRect:Landroid/graphics/Rect;

.field public mIsStatusBarShowing:Z

.field public mMinHeight:I

.field public mMinWidth:I

.field public mMoving:Z

.field public mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field public final mNotResizableRect:Landroid/graphics/Rect;

.field public mNotSupport:Z

.field public mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field public mReadyToFreeform:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mStartX:I

.field public mStartY:I

.field public mStatusBarManager:Landroid/app/SemStatusBarManager;

.field public final mStatusBarReceiver:Lcom/android/server/wm/MultiWindowPointerEventListener$1;

.field public mTask:Lcom/android/server/wm/Task;

.field public final mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

.field public mTaskId:I

.field public mTaskOrientation:I

.field public mTaskResizable:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTouchSlop:I

.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizableRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarReceiver:Lcom/android/server/wm/MultiWindowPointerEventListener$1;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string/jumbo p2, "com.samsung.systemui.statusbar.ANIMATING"

    const-string/jumbo v1, "com.samsung.systemui.statusbar.EXPANDED"

    const-string/jumbo v2, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-static {p2, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    return-void
.end method

.method public static printFailureLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MultiWindowPointerEventListener"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final affordanceAnim(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v3}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizerState(Landroid/os/IBinder;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->getPendingEventsQueue()Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    invoke-static {v3, v0, v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->-$$Nest$mgetPendingTaskEvent(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;

    invoke-direct {v4, v1, v0}, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;-><init>(ILcom/android/server/wm/Task;)V

    goto :goto_0

    :cond_2
    iget-object v0, v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iput p1, v4, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mGestureFrom:I

    iget-object p1, v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerPendingEventsQueue;->mPendingTaskEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, v2, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    :goto_1
    const/16 p1, 0x7f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    :cond_3
    return-void
.end method

.method public final isAllowCornerGestureState()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    const-string/jumbo v2, "isAllowCornerGestureState"

    if-nez v0, :cond_1

    const-string/jumbo p0, "mMultiWindowEdgeDetector is null"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    if-eqz v0, :cond_2

    const-string/jumbo p0, "statusBar is showing"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p0, "quick panel is expanded"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "split activated"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p0, "keyguard is currently locked"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x8b2

    if-ne p0, v0, :cond_6

    const-string/jumbo p0, "edge panel is expanded"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    const/16 v0, 0x988

    if-ne p0, v0, :cond_7

    const-string/jumbo p0, "smart select running"

    invoke-static {v2, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_0
    return v1
.end method

.method public final loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideFullscreenDimViewMargin:I

    return-void
.end method

.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x2

    if-eqz v0, :cond_1c

    if-eq v0, v7, :cond_17

    if-eq v0, v10, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-eq v0, v9, :cond_17

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    return-void

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsStatusBarShowing:Z

    if-eqz p1, :cond_4

    const-string/jumbo p1, "onPointerEvent"

    const-string/jumbo v0, "statusBar is showing"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    return-void

    :cond_4
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    sub-int p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    if-gt p1, v0, :cond_5

    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    sub-int p1, v3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTouchSlop:I

    if-le p1, v0, :cond_1e

    :cond_5
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    sub-int v0, v2, v0

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    sub-int v1, v3, v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isValidGesture(II)Z

    move-result p1

    if-nez p1, :cond_6

    const-string/jumbo p1, "onPointerEvent"

    const-string/jumbo v0, "invalid gesture"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    const v0, 0x10404bf

    const v1, 0x103012b

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz p1, :cond_7

    const-string/jumbo p1, "onPointerEvent"

    const-string/jumbo v2, "task is not resizable"

    invoke-static {p1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->affordanceAnim(I)V

    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-nez p1, :cond_8

    new-instance p1, Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    const/4 v9, 0x0

    invoke-direct {p1, v9}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "persona"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string/jumbo p1, "onPointerEvent"

    const-string v2, "KnoxKeyguard is not resizable"

    invoke-static {p1, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizableRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->show(Landroid/graphics/Rect;)V

    :cond_a
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->affordanceAnim(I)V

    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    return-void

    :cond_b
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    const/16 v0, 0x31

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlags()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    if-eqz v2, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const v4, 0x3f99999a    # 1.2f

    if-ne v2, v7, :cond_c

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p1

    iput v2, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_c
    if-ne v2, v10, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    cmpg-float v2, v2, v4

    if-gez v2, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq p1, v8, :cond_e

    const/16 v4, 0x9

    if-eq p1, v4, :cond_d

    goto :goto_1

    :cond_d
    iget p1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iput p1, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_e
    iget p1, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v2

    iput p1, v3, Landroid/graphics/Rect;->left:I

    :cond_f
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz p1, :cond_12

    if-eqz v1, :cond_10

    invoke-virtual {p1, v7}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    move-result p1

    if-eqz p1, :cond_12

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    goto :goto_2

    :cond_10
    invoke-virtual {p1, v6}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->updateGuideState(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    if-nez p1, :cond_11

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    :cond_11
    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    :cond_12
    :goto_2
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    if-nez p1, :cond_14

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto :goto_3

    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez v4, :cond_14

    if-eqz v5, :cond_14

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->vibrate(I)V

    :cond_14
    :goto_3
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->show(Landroid/graphics/Rect;)V

    :cond_15
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_6

    :cond_16
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v0, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_17
    if-eqz v1, :cond_18

    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-nez p1, :cond_18

    const-string/jumbo p1, "onPointerEvent"

    const-string/jumbo v0, "not ready to freeform"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    if-nez p1, :cond_1b

    if-eqz v1, :cond_1b

    iget-boolean p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mReadyToFreeform:Z

    if-eqz p1, :cond_1b

    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_19

    goto :goto_4

    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v1, v1, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v6, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_1a
    :goto_4
    const-string/jumbo p1, "onPointerEvent"

    const-string/jumbo v0, "task is invalid"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isAllowCornerGestureState()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_1e
    :goto_6
    return-void

    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizableRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v6, v6, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    const-string/jumbo v0, "task is relaunching, t="

    const-string/jumbo v1, "findTargetTaskBounds: "

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v11, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, v2, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowPointerEventListener;II)V

    invoke-virtual {v5, v11}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    if-nez v5, :cond_21

    const-string/jumbo p1, "findTargetTaskBounds"

    const-string/jumbo v0, "task is null"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_a

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_21
    :try_start_1
    const-string/jumbo v11, "MultiWindowPointerEventListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo p1, "findTargetTaskBounds"

    const-string/jumbo v0, "activity type is not standard"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_a

    :cond_22
    :try_start_2
    iget-object v1, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string/jumbo p1, "findTargetTaskBounds"

    const-string/jumbo v0, "task animating by recents"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_a

    :cond_23
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-ne v1, v7, :cond_2d

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/Task;->getTopVisibleActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo p1, "findTargetTaskBounds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_a

    :cond_24
    :try_start_4
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    iget v0, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    iput-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v0, v1, v11, v6}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideFullscreenDimViewMargin:I

    add-int/2addr v1, v6

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    invoke-virtual {p1, v1, v6, v11, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v5, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v0, v5, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-lez p1, :cond_25

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    goto :goto_7

    :cond_25
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    :goto_7
    if-lez v0, :cond_26

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    goto :goto_8

    :cond_26
    iget p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizableTask:I

    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    :goto_8
    iget p1, v5, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v0, 0x7

    if-eq p1, v9, :cond_27

    if-eq p1, v8, :cond_27

    if-ne p1, v0, :cond_2c

    :cond_27
    if-eq p1, v8, :cond_2b

    if-eq p1, v9, :cond_2a

    if-eq p1, v0, :cond_28

    goto :goto_9

    :cond_28
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le p1, v0, :cond_29

    move v7, v10

    :cond_29
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_9

    :cond_2a
    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    goto :goto_9

    :cond_2b
    iput v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    :cond_2c
    :goto_9
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_2d
    :try_start_5
    const-string/jumbo p1, "findTargetTaskBounds"

    const-string/jumbo v0, "task is not docked or full"

    invoke-static {p1, v0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->printFailureLog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_a
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    :goto_b
    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartX:I

    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStartY:I

    return-void

    :goto_c
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/DisplayContent$TaskFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTask:Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    iput v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMoving:Z

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mAdjustedMinimalTaskBounds:Z

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->dismiss()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformResizeGuide:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    return-void
.end method

.method public final vibrate(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/Vibrator;

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const-string/jumbo v0, "Swipe for pop-up view"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/os/Vibrator;->performHapticFeedback(ILjava/lang/String;II)V

    return-void
.end method
