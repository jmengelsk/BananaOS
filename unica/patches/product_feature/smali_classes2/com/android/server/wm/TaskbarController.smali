.class public final Lcom/android/server/wm/TaskbarController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mTaskbarWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicyExt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object p1, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method


# virtual methods
.method public final adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->removeSource(I)V

    return-object v0

    :cond_4
    :goto_2
    return-object p1
.end method

.method public final getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    return-object p0
.end method
