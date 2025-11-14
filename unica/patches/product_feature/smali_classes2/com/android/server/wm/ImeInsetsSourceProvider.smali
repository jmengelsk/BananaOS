.class public final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mFrozen:Z

.field public mGivenInsetsReady:Z

.field public mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeShowing:Z

.field public mLastDrawn:Z

.field public final mLastSource:Landroid/view/InsetsSource;

.field public mPrevDrawn:Z

.field public mServerVisible:Z

.field public mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    new-instance p1, Landroid/view/InsetsSource;

    sget p2, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/view/InsetsSource;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mPrevDrawn:Z

    return-void
.end method

.method public static isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final abortShowImePostLayout()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x5a9e73097f00c6dbL    # -1.265973829348816E-128

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v3, 0x20

    const-string/jumbo v0, "WMS.showImePostLayout"

    invoke-static {v3, v4, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v3, 0x2b

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mImeShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLastDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "showImePostLayout pending for mImeRequester="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "showImePostLayout not scheduled, mImeRequester=null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-wide v0, 0x10b00000004L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .locals 7

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p1, :cond_1

    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object p1, v4, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iput-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-nez p1, :cond_7

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x60d73407f00dc92fL    # -1.4110003621359615E-158

    invoke-static {p0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x6

    const/16 v3, 0x2e

    invoke-interface {p0, v1, p1, v3, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 v1, 0x37

    invoke-interface {p0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl;->setImeStatsToken(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_8
    return-object v0
.end method

.method public final invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 10

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mOnImeRequestedChangedListener:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    if-eqz v3, :cond_e

    const/4 v0, 0x5

    const/16 v1, 0x3f

    const-string/jumbo v2, "MT_IME_DEBUG"

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v6

    if-eqz p2, :cond_0

    move-object v4, p2

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    const/4 v7, 0x6

    const/16 v8, 0x3b

    const/4 v9, 0x0

    invoke-interface {v4, v5, v7, v8, v9}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v4

    :goto_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v5

    invoke-interface {v5, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->asRemoteInsetsControlTarget()Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    move-result-object v1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->shouldShowImeForExternalDesktop()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v7, v1, Lcom/android/server/wm/DexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    goto :goto_4

    :cond_3
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    iget-object v9, v8, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_2
    if-eqz v9, :cond_6

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v7, v7, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_3
    invoke-interface {v7}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    :cond_6
    :goto_4
    iget-object v1, v1, Lcom/android/server/wm/DexController;->mImeTarget:Lcom/android/server/wm/WindowState;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ImeInsetsSourceProvider: findCandidateInvokeTarget: candidate="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", controlTarget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", externalInputTarget="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason=fallback_for_desktop"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    :goto_5
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->asRemoteInsetsControlTarget()Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object v1, v5

    :goto_6
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    :cond_a
    :goto_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "ImeInsetsSourceProvider: invokeOnImeRequestedChangedListener: \n    controlTarget="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n    imeInputTarget="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n    statsToken="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n    candidateInvokeTarget="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n    imeAnimating=false, imeVisible="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "\n    callers="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    move-object v2, v4

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InsetsControlTarget;Z)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_c
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ImeInsetsSourceProvider: invokeOnImeRequestedChangedListener: failed, reason=no_control_target, Callers="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public final isFrozen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    return p0
.end method

.method public final isLeashReadyForDispatching()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isScheduledAndReadyToShowIme()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v3, :cond_5

    goto/16 :goto_4

    :cond_5
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    if-eq v3, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v4, v4, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_9

    goto/16 :goto_4

    :cond_9
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_b

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x5c027c1947a5c1abL    # -2.537980424092208E-135

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v6, v7, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-nez v4, :cond_c

    if-ne v3, v2, :cond_c

    goto :goto_3

    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v3, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_d

    goto :goto_2

    :cond_d
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_2
    if-ne v2, v4, :cond_e

    goto :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-ne v2, v0, :cond_f

    goto :goto_3

    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p0, v2, :cond_10

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_3

    :cond_10
    return v1

    :cond_11
    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_12
    :goto_4
    return v1
.end method

.method public final isSurfaceVisible()Z
    .locals 9

    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isSurfaceVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getImeInputTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isSurfaceVisible()Z

    move-result v6

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-eq v7, v4, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    move v7, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v4

    :goto_1
    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ImeInsetsSourceProvider: isSurfaceVisibleWhileDrawing: true\n    imeWin="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n    drawState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    imeInputTarget="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n    callers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    const-string/jumbo v1, "MT_IME_DEBUG"

    invoke-static {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    return v4

    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    if-eqz v2, :cond_7

    iget-boolean p0, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez p0, :cond_7

    :cond_5
    return v4

    :cond_6
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    if-eqz p0, :cond_8

    if-nez v2, :cond_8

    :cond_7
    return v5

    :cond_8
    return v0
.end method

.method public final logIsScheduledAndReadyToShowIme(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "showImePostLayout "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo p1, "aborted"

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "cancelled"

    :goto_1
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isScheduledAndReadyToShowIme: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isScheduledAndReadyToShowIme()Z

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mImeRequester: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", serverVisible: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", frozen: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mWindowContainer is: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    const-string/jumbo v7, "null"

    const-string/jumbo v8, "non-null"

    if-eqz p1, :cond_2

    move-object p1, v8

    goto :goto_2

    :cond_2
    move-object p1, v7

    :goto_2
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", windowState: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string p1, ", isDrawn: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mGivenInsetsPending: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, ", dcTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", controlTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p1, :cond_10

    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    const-string p1, "\ncontrolTarget == DisplayContent.controlTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    const/4 v0, 0x1

    if-ne v5, p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", hasPendingControls: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object p1, p1, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v5, p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    move p1, v0

    goto :goto_4

    :cond_6
    move p1, v3

    :goto_4
    const-string v1, ", leash is: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    move-object v1, v8

    goto :goto_5

    :cond_7
    move-object v1, v7

    :goto_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_9

    const-string p1, ", control is: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_8

    move-object v7, v8

    :cond_8
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsLeashInitialized: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_9
    const-string p1, ", isImeLayeringTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_a

    if-ne p1, v4, :cond_a

    move p1, v0

    goto :goto_6

    :cond_a
    move p1, v3

    :goto_6
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAboveImeLayeringTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1, v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isImeFallbackTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getUserMainDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    :goto_7
    if-ne p1, v4, :cond_c

    move p1, v0

    goto :goto_8

    :cond_c
    move p1, v3

    :goto_8
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isImeInputTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-ne p1, v1, :cond_d

    move p1, v0

    goto :goto_9

    :cond_d
    move p1, v3

    :goto_9
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sameAsImeControlTarget: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p0, p1, :cond_f

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeTargetWindowClosing(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-nez p0, :cond_f

    :cond_e
    move v3, v0

    :cond_f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_10
    const-string p0, "ImeInsetsSourceProvider"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onInputTargetChanged(Lcom/android/server/wm/InputTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImeInsetsSourceProvider: onInputTargetChanged: report to remote, target="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MT_IME_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eq p1, p2, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x38

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-interface {v1, v2, v4, v0, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_3
    return-void
.end method

.method public final onPostLayout()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v5, v1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    iget-boolean v6, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    iget-object v8, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    const/16 v9, 0x32

    if-nez v6, :cond_4

    iget-boolean v10, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v10, :cond_4

    if-nez v5, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v10, :cond_4

    aget-boolean v0, v7, v4

    if-eqz v0, :cond_3

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x4ae62e73b9b83516L    # 6.639253577910478E52

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v0, v1, v9}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v1, v8, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    iput-boolean v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    goto/16 :goto_3

    :cond_4
    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v3, :cond_6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    const/4 v0, 0x3

    aget-boolean v0, v7, v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x7cfd90b104eacc05L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v0, v1, v9}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    goto/16 :goto_3

    :cond_6
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-nez v0, :cond_8

    aget-boolean v0, v7, v4

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x294ded5644b4cb63L    # -4.244498087820314E109

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    iput-boolean v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mPrevDrawn:Z

    if-eq v1, v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isLeashReadyForDispatching()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v0, v2, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPostLayout: drawn changed. send leash to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeInsetsSourceProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v1, v8, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mPrevDrawn:Z

    return-void
.end method

.method public final onSourceChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final receiveImeStatsToken(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x32422c4c521ecab5L    # -3.141145557157463E66

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1
    const/16 v0, 0x2b

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method public final reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v0}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    if-eqz p0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    iget-object p0, p0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p0, p1}, Landroid/window/ITaskOrganizer;->onImeDrawnOnTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "TaskOrganizerController"

    const-string v0, "Exception sending onImeDrawnOnTask callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v0

    const/16 v1, 0x31

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-interface {p2, v0, p3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_0
    instance-of p2, p1, Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-interface {v2, v0, p3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_2
    return-void
.end method

.method public final scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x20

    const-string/jumbo v0, "WMS.showImePostLayout"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v3, 0x12

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6

    aget-boolean p1, p2, v1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0xae9b1cc0d74cbe1L

    const/4 p2, 0x0

    invoke-static {p1, v3, v4, v1, p2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isScheduledAndReadyToShowIme()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez p1, :cond_5

    iget p1, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p0, p1}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    return-void

    :cond_7
    aget-boolean p1, p2, v1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x24905cd2effc3fc2L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_9
    iget-object p0, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public final setClientVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    const-string v1, "ImeInsetsSourceProvider: setClientVisible: "

    const-string/jumbo v2, "MT_IME_DEBUG"

    invoke-static {v1, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_1
    iget-boolean p0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-boolean v0, p0, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->updateImeWindowStateForExternalDesktop()Z

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    iget-object v0, p0, Lcom/android/server/wm/DexController;->mUpdateImeStateRunnable:Lcom/android/server/wm/DexController$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/server/wm/DexController;->mH:Lcom/android/server/wm/DexController$H;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final setFrozen(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setServerVisible(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImeInsetsSourceProvider: setServerVisible: "

    const-string v4, ", mFrozen="

    invoke-static {v0, v4, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n    mControlTarget="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n    ImeInputTarget="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "MT_IME_DEBUG"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    :cond_2
    iget-object v0, v3, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;

    iget-object v4, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    if-eqz p1, :cond_7

    iget p1, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAlignment:I

    and-int/lit8 p1, p1, 0x70

    const/16 v5, 0x30

    if-eq p1, v5, :cond_7

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_7

    iget-object v5, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v5, v5, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_3

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v5, :cond_3

    iget-boolean v4, v4, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4}, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->isLetterboxedByAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMethodWindowVisibleHeight()I

    move-result v3

    if-lez v3, :cond_7

    iget-boolean v3, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mControlTargetHeight:I

    if-ne v5, v4, :cond_4

    if-nez v3, :cond_8

    :cond_4
    iput v4, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mControlTargetHeight:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lt v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    :goto_1
    invoke-static {p1, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :cond_8
    :goto_3
    if-nez v3, :cond_9

    iput v2, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mControlTargetHeight:I

    :cond_9
    iget-boolean p0, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    if-eq p0, v3, :cond_b

    iput-boolean v3, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mIsIntersectWithIme:Z

    iget-object p0, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v0, v0, Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy;->mRecomputeConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_4
    return-void
.end method

.method public final updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImeInsetsSourceProvider: updateClientVisibility: isClientVisible="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRequestedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n    callerTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    controlTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    statsToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MT_IME_DEBUG"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v3, 0x43

    if-eq p1, v0, :cond_4

    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v5, 0x0

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return v5

    :cond_2
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x39db2d8160933509L    # 5.359867179729214E-30

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v6, v7, v5, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v5

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_6

    instance-of v5, p1, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    move-object v6, p1

    check-cast v6, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->isRequestedVisible(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "shouldInvokeOnImeRequestedChangedListener: caller="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", imeInputTarget="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImeInsetsSourceProvider"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :goto_1
    move v1, v4

    :goto_2
    if-eqz v1, :cond_7

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return v1

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1
.end method

.method public final updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DISPLAY_IME_DEBUG:Z

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ImeInsetsSourceProvider: updateControlForTarget: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    target="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    mControlTarget="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    force="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", statsToken=null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "MT_IME_DEBUG"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, p2, :cond_3

    iget-object p2, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    :cond_3
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x3e82738122d23a38L    # 1.3747207231293894E-7

    const/4 p1, 0x0

    invoke-static {p2, v0, v1, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final updateSourceFrame(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method

.method public final updateVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method
