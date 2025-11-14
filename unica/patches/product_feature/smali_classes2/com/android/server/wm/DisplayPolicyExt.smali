.class public final Lcom/android/server/wm/DisplayPolicyExt;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

.field public final mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsWindow:Lcom/android/server/wm/WindowState;

.field public final mLastPayHandlerFrame:Landroid/graphics/Rect;

.field public mLastPayHandlerVisible:Z

.field public mNavBarImeBtnAllRotationsAllowed:Z

.field public mNavigationMode:I

.field public final mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

.field public mPayHandlerWin:Lcom/android/server/wm/WindowState;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTaskbarController:Lcom/android/server/wm/TaskbarController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, v1, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    iput-boolean v2, v1, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    new-instance v3, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    invoke-direct {v3, v1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    iput-object v3, v1, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    new-instance v3, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    iput-object v3, v1, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    iput-object p1, v1, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    iput-object p2, v1, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v1, :cond_1

    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/wm/CoverPolicy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    new-instance v0, Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    iput-object p0, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p3, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p2, v1, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    new-instance p3, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;

    invoke-direct {p3, v1}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    iput-object p3, p2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    :cond_1
    new-instance p2, Lcom/android/server/wm/TaskbarController;

    invoke-direct {p2, p0}, Lcom/android/server/wm/TaskbarController;-><init>(Lcom/android/server/wm/DisplayPolicyExt;)V

    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    invoke-static {p1}, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    return-void
.end method

.method public static isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x833

    if-eq v0, v1, :cond_5

    const/16 v1, 0x96f

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_AOD_FACE_WIDGET:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    iget-object p0, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p0

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    :pswitch_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final finishWindowsDrawn()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/TspStateController;->updateWindowPolicy(Lcom/android/server/wm/WindowState;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_DEADZONE_LARGE_FLIP_COVER:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    iput-boolean v2, p0, Lcom/android/server/wm/TspStateController;->mAwake:Z

    iget-object p0, p0, Lcom/android/server/wm/TspStateController;->mH:Lcom/android/server/wm/TspStateController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method public final notifyRequestedGameToolsWin(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "notifyRequestedGameToolsWin attached="

    const-string/jumbo v1, "StatusBarManagerService"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->notifyRequestedGameToolsWin(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
