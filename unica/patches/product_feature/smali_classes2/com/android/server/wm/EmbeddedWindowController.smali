.class public final Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public final mWindows:Landroid/util/ArrayMap;

.field public final mWindowsByInputTransferToken:Landroid/util/ArrayMap;

.field public final mWindowsByWindowToken:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-void
.end method

.method public static isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z
    .locals 6

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez p1, :cond_0

    aget-boolean p0, v0, v2

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x18f294284d81c31cL    # -2.5602865557940637E188

    invoke-static {p0, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v4, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_1

    aget-boolean p0, v0, v2

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0xce7e638d4a03bf1L

    invoke-static {p0, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_1
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_2

    aget-boolean p0, v0, v2

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x96251081c1431a2L

    invoke-static {p0, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_4

    aget-boolean p0, v0, v2

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x7ad897a35fe3389L

    invoke-static {p0, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return v3

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-nez p0, :cond_6

    aget-boolean p0, v0, v2

    if-eqz p0, :cond_5

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x7871a9458b81c6baL    # -2.80409086366314E-272

    invoke-static {p0, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5
    return v3

    :cond_6
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget v4, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v5, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    iget-object v6, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v3, "WindowManager"

    const-string v4, "Could not find the embedding process."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    move-result-object v3

    aget v4, v3, v2

    or-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :goto_0
    iget-object p2, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    new-instance v3, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final remove(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {p1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    iget-object v0, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    iget-object p1, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final transferToEmbedded(ILcom/android/server/wm/WindowState;Landroid/window/InputTransferToken;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-static {p2, p3}, Lcom/android/server/wm/EmbeddedWindowController;->isValidTouchGestureParams(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne p1, v0, :cond_4

    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    iget-object v0, p3, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v2, p3, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mGestureToEmbedded:Z

    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    iget-object p3, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mNavigatingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_3

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "TouchGestureTransferred"

    invoke-virtual {p2, p3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$NavigationMonitor;->mObserver:Landroid/os/RemoteCallback;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return p1

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Transfer request must originate from owner of transferFromToken"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
