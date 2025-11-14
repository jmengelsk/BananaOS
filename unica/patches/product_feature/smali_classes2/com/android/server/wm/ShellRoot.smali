.class public final Lcom/android/server/wm/ShellRoot;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAccessibilityWindow:Landroid/view/IWindow;

.field public mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

.field public mClient:Landroid/view/IWindow;

.field public final mDeathRecipient:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public mToken:Lcom/android/server/wm/WindowToken;

.field public final mWindowType:I


# direct methods
.method public constructor <init>(Landroid/view/IWindow;Lcom/android/server/wm/DisplayContent;I)V
    .locals 12

    const-string/jumbo v1, "ShellRoot"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p2, p0, Lcom/android/server/wm/ShellRoot;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ShellRoot;I)V

    iput-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    :try_start_0
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    const/16 p3, 0x7f6

    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " is not an acceptable shell root layer."

    invoke-static {p3, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p3, 0x7f2

    iput p3, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    :goto_0
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/ShellRoot;->mWindowType:I

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x1

    if-eqz p1, :cond_2

    const/16 p1, 0xa48

    if-ne v5, p1, :cond_2

    new-instance v2, Lcom/android/server/wm/TransientLaunchOverlayToken;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v5, 0xa48

    move-object v7, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    iget-object p1, v7, Lcom/android/server/wm/DisplayContent;->mTransientLaunchOverlayTokens:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v7, p2

    new-instance v2, Lcom/android/server/wm/WindowToken;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    :goto_1
    iput-object v2, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Shell Root Leash "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :catch_0
    move-exception v0

    move-object v7, p2

    move-object p0, v0

    const-string/jumbo p1, "Unable to add shell root layer "

    const-string p2, " on display "

    invoke-static {p3, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mDeathRecipient:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mClient:Landroid/view/IWindow;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    iput-object v1, p0, Lcom/android/server/wm/ShellRoot;->mToken:Lcom/android/server/wm/WindowToken;

    :cond_1
    return-void
.end method

.method public final setAccessibilityWindow(Landroid/view/IWindow;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ShellRoot;)V

    iput-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindowDeath:Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda1;

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot;->mAccessibilityWindow:Landroid/view/IWindow;

    :cond_1
    return-void
.end method
