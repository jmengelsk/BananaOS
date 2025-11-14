.class public final Lcom/android/server/wm/MultiWindowFoldController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCoverDisplayBounds:[Landroid/graphics/Rect;

.field public mFoldingState:I

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Lcom/android/server/wm/MultiWindowFoldController$H;

.field public final mMainDisplayBounds:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public final getCoverDisplayBounds(Z)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    aget-object p0, p0, v2

    return-object p0
.end method

.method public final getMainDisplayBounds(Z)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowFoldController;->initDisplayBounds(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final initDisplayBounds(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const-string/jumbo v1, "MultiWindowFoldController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "initDisplayBounds: cannot find display!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    if-eqz p1, :cond_1

    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/MultiWindowFoldController;->updateCoverDisplayBounds(II)V

    goto :goto_0

    :cond_1
    iget v0, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/MultiWindowFoldController;->updateMainDisplayBounds(II)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "initDisplayBounds: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCoverDisplay="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initialize()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/MultiWindowFoldController$H;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiWindowFoldController$H;-><init>(Lcom/android/server/wm/MultiWindowFoldController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mH:Lcom/android/server/wm/MultiWindowFoldController$H;

    return-void
.end method

.method public final setFoldingState(ILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFoldingState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    const-string v2, "->"

    const-string v3, ", reason="

    invoke-static {v1, p1, v2, v3, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "MultiWindowFoldController"

    invoke-static {v0, p2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    :cond_0
    return-void
.end method

.method public final updateCoverDisplayBounds(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_2

    :cond_2
    move v5, p1

    :goto_2
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v0

    if-eqz v2, :cond_3

    move v0, p2

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move p1, p2

    :goto_4
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final updateMainDisplayBounds(II)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-eqz v2, :cond_2

    move v5, p2

    goto :goto_2

    :cond_2
    move v5, p1

    :goto_2
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, v0

    if-eqz v2, :cond_3

    move v0, p2

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move p1, p2

    :goto_4
    invoke-virtual {p0, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
