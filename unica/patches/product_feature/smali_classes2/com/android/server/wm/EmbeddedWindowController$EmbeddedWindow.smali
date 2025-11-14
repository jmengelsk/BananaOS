.class public final Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/InputTarget;


# instance fields
.field public final mClient:Landroid/os/IBinder;

.field public final mDisplayId:I

.field public mFocusGranted:Z

.field public mGestureToEmbedded:Z

.field public final mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mHostWindowState:Lcom/android/server/wm/WindowState;

.field public mInputChannel:Landroid/view/InputChannel;

.field public final mInputTransferToken:Landroid/window/InputTransferToken;

.field public mIsFocusable:Z

.field public final mName:Ljava/lang/String;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public mRequestedVisibleTypes:I

.field public final mSession:Lcom/android/server/wm/Session;

.field public final mShowUserId:I

.field public mSurface:Landroid/view/SurfaceControl;

.field public mTaskToken:Landroid/window/WindowContainerToken;

.field public final mWindowType:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Lcom/android/server/wm/WindowState;IIIILandroid/window/InputTransferToken;Ljava/lang/String;ZLandroid/view/SurfaceControl;Landroid/window/WindowContainerToken;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    iput-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_POPUP:Z

    if-eqz v0, :cond_0

    iput-object p12, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSurface:Landroid/view/SurfaceControl;

    iput-object p13, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mTaskToken:Landroid/window/WindowContainerToken;

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_1

    iget-object p2, p4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iput p7, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    iput p8, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    iput-object p9, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    if-eqz p4, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    :goto_1
    iput-boolean p11, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    const-string p3, "Embedded{"

    const-string/jumbo p4, "}"

    invoke-static {p3, p10, p2, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mShowUserId:I

    return-void
.end method


# virtual methods
.method public final canScreenshotIme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public final getApplicationHandle()Landroid/view/InputApplicationHandle;
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget-object p0, p0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    invoke-direct {v0, p0}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayId()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mDisplayId:I

    return p0
.end method

.method public final getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0
.end method

.method public final getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    return p0
.end method

.method public final getRequestedVisibleTypes()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    return p0
.end method

.method public final getWindowState()Lcom/android/server/wm/WindowState;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public final getWindowToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    return-object p0
.end method

.method public final handleTap(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->handleTapOutsideFocusInsideSelf()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    :cond_1
    return-void
.end method

.method public final handleTapOutsideFocusInsideSelf()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    return-void
.end method

.method public final handleTapOutsideFocusOutsideSelf()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->handleTap(Z)V

    return-void
.end method

.method public final isInputMethodClientFocus(II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mRequestedVisibleTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onRemoved()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mFocusGranted:Z

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(ILcom/android/server/wm/ActivityRecord;)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_POPUP:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mTaskToken:Landroid/window/WindowContainerToken;

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mSurface:Landroid/view/SurfaceControl;

    :cond_4
    return-void
.end method

.method public final receiveFocusFromTapOutside()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mIsFocusable:Z

    return p0
.end method

.method public final shouldControlIme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mName:Ljava/lang/String;

    return-object p0
.end method
