.class public final Lcom/android/server/wm/WmScreenshotController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCaptureReceiver:Lcom/android/server/wm/WmScreenshotController$3;

.field public final mContext:Landroid/content/Context;

.field public final mFileController:Lcom/android/server/wm/WmScreenshotFileController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBlockedBySensitiveContents:Z

.field public final mPalmMotionReceiver:Lcom/android/server/wm/WmScreenshotController$3;

.field public mReasonForFailure:I

.field public final mScreenshotConnections:Ljava/util/HashMap;

.field public final mScreenshotLock:Ljava/lang/Object;

.field public mSecuredWindowName:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

.field public final mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

.field public final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/WmScreenshotController;)V

    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    new-instance v3, Lcom/android/server/wm/WmScreenshotController$3;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/WmScreenshotController$3;-><init>(Lcom/android/server/wm/WmScreenshotController;I)V

    iput-object v3, p0, Lcom/android/server/wm/WmScreenshotController;->mPalmMotionReceiver:Lcom/android/server/wm/WmScreenshotController$3;

    new-instance v1, Lcom/android/server/wm/WmScreenshotController$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WmScreenshotController$3;-><init>(Lcom/android/server/wm/WmScreenshotController;I)V

    iput-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mCaptureReceiver:Lcom/android/server/wm/WmScreenshotController$3;

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/WmScreenshotShellCommand;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x7df

    iput v4, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mWindowType:I

    iput v0, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mDisplayId:I

    iput-boolean v0, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mScreenshotRotationLayer:Z

    iput-object p2, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v2, Lcom/android/server/wm/WmScreenshotShellCommand;->mController:Lcom/android/server/wm/WmScreenshotController;

    iput-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mShellCommand:Lcom/android/server/wm/WmScreenshotShellCommand;

    new-instance v0, Lcom/android/server/wm/WmScreenshotFileController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p2, v0, Lcom/android/server/wm/WmScreenshotFileController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mFileController:Lcom/android/server/wm/WmScreenshotFileController;

    const-string/jumbo p0, "com.samsung.android.motion.SWEEP_LEFT"

    const-string/jumbo p2, "com.samsung.android.motion.SWEEP_RIGHT"

    const-string/jumbo v0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-static {p0, p2, v0}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x2

    const-string/jumbo v6, "com.samsung.permission.PALM_MOTION"

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo p0, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    const/4 v10, 0x2

    const-string/jumbo v8, "com.samsung.permission.CAPTURE"

    const/4 v9, 0x0

    move-object v5, v1

    move-object v6, v4

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static adjustCropForOneHandOp(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    iget p0, v0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->scale(F)V

    iget p0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int p0, p0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object p1

    :cond_24
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/2addr p0, v2

    invoke-direct {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static putCutoutSafeInsets(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_9

    goto :goto_4b

    :cond_9
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4b

    :cond_17
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_4b

    :cond_27
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const-string/jumbo v1, "safeInsetLeft"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetTop"

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetRight"

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "safeInsetBottom"

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4b
    :goto_4b
    return-void
.end method


# virtual methods
.method public final failedReasonToString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_e

    const-string v1, " InvalidDisplay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_17

    const-string v1, " InvalidSystemWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_20

    const-string v1, " InvalidDefaultTaskDisplayArea"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_29

    const-string v1, " EmptyBitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_37

    const-string v1, " Secureflags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_45

    const-string p1, " Mdm:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final findTargetSurfaceForSystemWindowTarget(Lcom/android/server/wm/DisplayContent;IZLjava/lang/StringBuilder;)Landroid/view/SurfaceControl;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    new-instance v0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WmScreenshotController;[ZIZ)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_19

    iget p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    const/4 p0, 0x0

    return-object p0

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[Window_Target:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "]"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    const-string/jumbo v2, "true"

    goto :goto_b

    :cond_8
    const-string/jumbo v2, "false"

    :goto_b
    const-string/jumbo v3, "debug.sf.hdr_capture"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5e

    new-array v2, v0, [Z

    aput-boolean v1, v2, v1

    iget-object v3, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_1f
    new-instance v4, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p2, v2}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WmScreenshotController;Z[Z)V

    invoke-virtual {p1, v4, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    aget-boolean p0, v2, v1

    if-eqz p0, :cond_5e

    if-eqz p2, :cond_5e

    :try_start_31
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    const-string/jumbo p1, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "InterruptedException "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :catchall_58
    move-exception p0

    :try_start_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_5e
    :goto_5e
    return-void
.end method

.method public final isScreenshotAllowedByPolicy(Lcom/android/server/wm/DisplayContent;)Z
    .registers 7

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_e

    return v0

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSensitiveContentPackages:Lcom/android/server/wm/SensitiveContentPackages;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/wm/SensitiveContentPackages;->shouldBlockScreenCaptureForApp(ILandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    iput-boolean v0, p0, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    return v0

    :cond_31
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    goto :goto_46

    :cond_40
    iget v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    :goto_46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public final putFocusedWindowInfo(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)Z
    .registers 6

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_d

    goto :goto_25

    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    :goto_25
    const/4 p0, 0x0

    return p0

    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p0, "windowCapture"

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return v0
.end method

.method public final putSystemBarHeight(Landroid/os/Bundle;Lcom/android/server/wm/DisplayContent;)V
    .registers 7

    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v2, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    const-string/jumbo v0, "statusBarHeight"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p2, v1, Landroid/graphics/Insets;->left:I

    const-string/jumbo v0, "navigationBarHeight"

    if-lez p2, :cond_3b

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_3b
    iget p2, v1, Landroid/graphics/Insets;->right:I

    if-lez p2, :cond_47

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_47
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final resetConnection(Landroid/content/ServiceConnection;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_29

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mScreenshotConnections:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :catchall_27
    move-exception p0

    goto :goto_2b

    :cond_29
    :goto_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_27

    throw p0
.end method

.method public final screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZZ)Landroid/graphics/Bitmap;
    .registers 9

    if-eqz p1, :cond_5a

    new-instance v0, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-direct {v0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, p6}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {p1, p3, p4}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSize(II)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setLayer(Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p1

    check-cast p1, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    move-result-object p1

    invoke-static {p1}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2c

    move-object p3, p2

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    :goto_30
    const-string/jumbo p4, "WindowManager"

    if-nez p3, :cond_3b

    const-string p0, "Failed to take screenshot with sourceCrop"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3b
    if-nez p7, :cond_59

    invoke-virtual {p1}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result p1

    if-eqz p1, :cond_59

    iget-boolean p1, p0, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    if-eqz p1, :cond_4d

    const-string p0, "Failed to take screenshot with contains sensitive contents"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_4d
    const-string p1, "Failed to take screenshot with contains secure layers"

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    return-object p2

    :cond_59
    return-object p3

    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "displayToken must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/WmScreenshotInfo;

    iput p1, v1, Lcom/android/server/wm/WmScreenshotInfo;->mType:I

    iput p2, v1, Lcom/android/server/wm/WmScreenshotInfo;->mSweepDirection:I

    iput p3, v1, Lcom/android/server/wm/WmScreenshotInfo;->mDisplayId:I

    iput p4, v1, Lcom/android/server/wm/WmScreenshotInfo;->mOrigin:I

    iput-object p5, v1, Lcom/android/server/wm/WmScreenshotInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZZZ)Lcom/samsung/android/view/ScreenshotResult;
    .registers 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p8

    const-string/jumbo v4, "takeScreenshotToTargetWindow: targetSurface="

    const-string/jumbo v5, "takeScreenshotToTargetWindow: display="

    const-string v6, ", target="

    const-string v7, ", containsTarget="

    invoke-static {v0, v2, v5, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", crop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    const-string v7, ", useIdentityTransform="

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static {v9, v10, v6, v7, v5}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v6, ", ignorePolicy="

    const-string v7, ", caller="

    move/from16 v11, p7

    invoke-static {v5, v11, v6, v8, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WindowManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/samsung/android/view/ScreenshotResult$Builder;

    invoke-direct {v12}, Lcom/samsung/android/view/ScreenshotResult$Builder;-><init>()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    iput v5, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    const-string v6, ""

    iput-object v6, v1, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/android/server/wm/WmScreenshotController;->mIsBlockedBySensitiveContents:Z

    const/4 v14, 0x6

    const/4 v15, 0x0

    :try_start_67
    iget-object v5, v1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_1e9

    :try_start_6f
    iget-object v6, v1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_cb

    iget v0, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    monitor-exit v5
    :try_end_80
    .catchall {:try_start_6f .. :try_end_80} :catchall_c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "takeScreenshotToTargetWindow, bitmap=null, failedReason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_8e
    iget v3, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    :goto_a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v15}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setCapturedBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    move-result-object v0

    :goto_ae
    iget v2, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setFailedReason(I)Lcom/samsung/android/view/ScreenshotResult$Builder;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setTargetWindowName(Ljava/lang/String;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/wm/WmScreenshotController;->mSecuredWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setSecuredWindowName(Ljava/lang/String;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    invoke-virtual {v12}, Lcom/samsung/android/view/ScreenshotResult$Builder;->build()Lcom/samsung/android/view/ScreenshotResult;

    move-result-object v0

    return-object v0

    :catchall_c6
    move-exception v0

    move/from16 v16, v14

    goto/16 :goto_1e4

    :cond_cb
    if-nez v8, :cond_e3

    :try_start_cd
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WmScreenshotController;->isScreenshotAllowedByPolicy(Lcom/android/server/wm/DisplayContent;)Z

    move-result v16

    if-nez v16, :cond_e3

    monitor-exit v5
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "takeScreenshotToTargetWindow, bitmap=null, failedReason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8e

    :cond_e3
    move/from16 v16, v14

    const/16 v14, 0x7d0

    if-lt v2, v14, :cond_f5

    const/16 v14, 0xbb7

    if-gt v2, v14, :cond_f5

    :try_start_ed
    invoke-virtual {v1, v6, v2, v3, v13}, Lcom/android/server/wm/WmScreenshotController;->findTargetSurfaceForSystemWindowTarget(Lcom/android/server/wm/DisplayContent;IZLjava/lang/StringBuilder;)Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_118

    :catchall_f2
    move-exception v0

    goto/16 :goto_1e4

    :cond_f5
    if-lt v2, v7, :cond_117

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_117

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_111

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_10a

    goto :goto_111

    :cond_10a
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_118

    :cond_111
    :goto_111
    iget v2, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    :cond_117
    move-object v2, v15

    :goto_118
    if-eqz v8, :cond_127

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    move-result v3

    if-eqz v3, :cond_127

    move-object/from16 v3, p4

    invoke-static {v6, v3}, Lcom/android/server/wm/WmScreenshotController;->adjustCropForOneHandOp(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_129

    :cond_127
    move-object/from16 v3, p4

    :goto_129
    const-string/jumbo v14, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", sourceCrop="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->FW_SCREENSHOT_FOR_HDR:Z

    if-eqz v14, :cond_149

    move-object v15, v6

    goto :goto_14a

    :cond_149
    const/4 v15, 0x0

    :goto_14a
    monitor-exit v5
    :try_end_14b
    .catchall {:try_start_ed .. :try_end_14b} :catchall_f2

    :try_start_14b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    if-eqz v4, :cond_182

    iget v5, v4, Landroid/view/DisplayInfo;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_169

    iget-object v4, v1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v0}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_183

    :catchall_166
    :goto_166
    const/4 v15, 0x0

    goto/16 :goto_1ed

    :cond_169
    iget v5, v4, Landroid/view/DisplayInfo;->flags:I

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_179

    iget-object v4, v1, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, v0}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_183

    :cond_179
    iget-object v0, v4, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v0, :cond_182

    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_183

    :cond_182
    const/4 v0, 0x0

    :goto_183
    if-eqz v14, :cond_18a

    if-eqz p9, :cond_18a

    invoke-virtual {v1, v15, v7}, Lcom/android/server/wm/WmScreenshotController;->invalidateForScreenShot(Lcom/android/server/wm/DisplayContent;Z)V

    :cond_18a
    move-object v6, v2

    move v4, v9

    move v5, v10

    move v7, v11

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WmScreenshotController;->screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_193
    .catchall {:try_start_14b .. :try_end_193} :catchall_166

    if-eqz v14, :cond_1a7

    if-eqz p9, :cond_1a7

    :try_start_197
    iget-object v2, v1, Lcom/android/server/wm/WmScreenshotController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v15, v4}, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WmScreenshotController;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a7

    :catchall_1a5
    move-object v15, v0

    goto :goto_1ed

    :cond_1a7
    :goto_1a7
    if-nez v0, :cond_1af

    iget v2, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I
    :try_end_1af
    .catchall {:try_start_197 .. :try_end_1af} :catchall_1a5

    :cond_1af
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "takeScreenshotToTargetWindow, bitmap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", failedReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v0}, Lcom/samsung/android/view/ScreenshotResult$Builder;->setCapturedBitmap(Landroid/graphics/Bitmap;)Lcom/samsung/android/view/ScreenshotResult$Builder;

    move-result-object v0

    goto/16 :goto_ae

    :goto_1e4
    :try_start_1e4
    monitor-exit v5
    :try_end_1e5
    .catchall {:try_start_1e4 .. :try_end_1e5} :catchall_f2

    :try_start_1e5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1e9
    .catchall {:try_start_1e5 .. :try_end_1e9} :catchall_166

    :catchall_1e9
    move/from16 v16, v14

    goto/16 :goto_166

    :goto_1ed
    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "takeScreenshotToTargetWindow, bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", failedReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/WmScreenshotController;->mReasonForFailure:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WmScreenshotController;->failedReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a0
.end method
