.class public final Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CONTROLLABLE_TYPES:I


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFocusedWin:Lcom/android/server/wm/WindowState;

.field public mForcedShowingTypes:I

.field public final mHideNavBarForKeyboard:Z

.field public mLastTransientRequestedByPolicyControl:Z

.field public final mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

.field public final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

.field public mShowingTransientTypes:I

.field public final mSplitImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mToggleImmersiveControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

.field public final mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    new-instance v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11101cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const-string/jumbo v0, "TransientControlTarget"

    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const-string/jumbo v0, "PermanentControlTarget"

    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    not-int v0, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    const-string v2, "DwToggleImmersiveControlTarget"

    invoke-direct {p1, p2, v2, v0, v1}, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mToggleImmersiveControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    not-int v0, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    const-string/jumbo v2, "SplitImmersiveControlTarget"

    invoke-direct {p1, p2, v2, v0, v1}, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mSplitImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    return-void
.end method

.method public static adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 5

    if-eqz p0, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v1

    if-nez v1, :cond_32

    if-eqz p2, :cond_20

    new-instance p2, Landroid/view/InsetsState;

    invoke-direct {p2, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object p1, p2

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    :goto_2f
    invoke-virtual {p1, p0}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    :cond_32
    return-object p1
.end method

.method public static adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;
    .registers 5

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    if-ne v0, p1, :cond_25

    if-nez p3, :cond_9

    goto :goto_25

    :cond_9
    invoke-interface {p3, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result p1

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p3

    if-ne p3, p1, :cond_14

    goto :goto_25

    :cond_14
    new-instance p3, Landroid/view/InsetsState;

    invoke-direct {p3, p0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    new-instance p0, Landroid/view/InsetsSource;

    invoke-direct {p0, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    invoke-virtual {p3, p0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-object p3

    :cond_25
    :goto_25
    return-object p0
.end method

.method public static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v2, v1, :cond_10

    const/16 v3, 0x63

    if-gt v2, v3, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    if-eqz v3, :cond_2f

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_2f

    move v3, v1

    goto :goto_30

    :cond_2f
    move v3, v0

    :goto_30
    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v2

    if-nez v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_48

    if-eqz v3, :cond_4f

    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result p0

    if-nez p0, :cond_4f

    return v1

    :cond_4f
    return v0
.end method


# virtual methods
.method public final abortTransient()V
    .registers 5

    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_27

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransient(II)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v2, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v2

    if-eqz v2, :cond_27

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(II)V

    :cond_27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    return-void
.end method

.method public final adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .registers 13

    const/4 v0, 0x1

    if-nez p3, :cond_40

    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-nez p3, :cond_c

    goto :goto_1c

    :cond_c
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-ne v1, p3, :cond_1d

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_1d

    :goto_1c
    goto :goto_40

    :cond_1d
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result p3

    sub-int/2addr p3, v0

    move-object v1, p2

    :goto_23
    if-ltz p3, :cond_41

    invoke-virtual {v1, p3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v1, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v1, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    move-result-object v1

    add-int/lit8 p3, p3, -0x1

    goto :goto_23

    :cond_40
    :goto_40
    move-object v1, p2

    :cond_41
    const/4 p3, 0x0

    if-ne v1, p2, :cond_46

    move v2, v0

    goto :goto_47

    :cond_46
    move v2, p3

    :goto_47
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v3, :cond_84

    iget-boolean v3, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    xor-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v4

    sub-int/2addr v4, v0

    move-object v5, v1

    :goto_54
    if-ltz v4, :cond_82

    invoke-virtual {v1, v4}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v8

    if-ne v7, v8, :cond_7f

    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v7

    if-ne v7, v3, :cond_6b

    goto :goto_7f

    :cond_6b
    if-ne v5, v1, :cond_74

    if-eqz v2, :cond_74

    new-instance v5, Landroid/view/InsetsState;

    invoke-direct {v5, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    :cond_74
    new-instance v7, Landroid/view/InsetsSource;

    invoke-direct {v7, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v7, v3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    invoke-virtual {v5, v7}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, -0x1

    goto :goto_54

    :cond_82
    move-object v1, v5

    goto :goto_db

    :cond_84
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    if-eqz v3, :cond_aa

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v3, :cond_db

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_db

    if-eqz v2, :cond_9e

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v1, v2

    :cond_9e
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v3}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, p3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    goto :goto_db

    :cond_aa
    iget v3, p1, Lcom/android/server/wm/WindowContainer;->mMergedExcludeInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_db

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    if-eqz v3, :cond_db

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_db

    if-eqz v2, :cond_c9

    new-instance v2, Landroid/view/InsetsState;

    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v1, v2

    :cond_c9
    new-instance v2, Landroid/view/InsetsSource;

    invoke-direct {v2, v3}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    invoke-virtual {v2, p3, p3, p3, p3}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    :cond_db
    :goto_db
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v1, p2, :cond_e4

    goto :goto_e5

    :cond_e4
    move v0, p3

    :goto_e5
    invoke-static {p0, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_2f

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2f

    :cond_a
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2f

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    iget-object v0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_2f

    :cond_1e
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;IZZ)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final getInsetsForWindowMetrics(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;)V
    .registers 7

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    goto :goto_1b

    :cond_15
    const/4 v0, 0x0

    goto :goto_1b

    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    :goto_1b
    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/UdcCutoutPolicy;->adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)V

    :cond_2e
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_33
    const/4 v1, 0x0

    if-ltz v0, :cond_4a

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_33

    :cond_4a
    invoke-static {p1, p2, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    move-result p0

    if-eqz p0, :cond_5f

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result p1

    div-float/2addr p0, p1

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->scale(F)V

    :cond_5f
    return-void
.end method

.method public final getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    if-nez v0, :cond_15

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto/16 :goto_14d

    :cond_15
    if-nez p2, :cond_25

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto/16 :goto_14d

    :cond_25
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    goto/16 :goto_14d

    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_37

    goto/16 :goto_14d

    :cond_37
    const/4 v0, 0x1

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFullImmersiveModeFreeform()Z

    move-result v2

    if-eqz v2, :cond_42

    move v2, v0

    goto :goto_54

    :cond_42
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_53

    new-instance v3, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    goto :goto_54

    :cond_53
    move v2, v1

    :goto_54
    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_65

    :cond_61
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mToggleImmersiveControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    goto/16 :goto_14d

    :cond_65
    :goto_65
    if-eqz p1, :cond_88

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-nez v2, :cond_6f

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v2, :cond_77

    :cond_6f
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_77

    move v2, v0

    goto :goto_78

    :cond_77
    move v2, v1

    :goto_78
    if-eqz v2, :cond_88

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_88

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mSplitImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    goto/16 :goto_14d

    :cond_88
    if-eqz p1, :cond_9e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v2

    if-eqz v2, :cond_9e

    iget-object v2, v2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_9e

    goto/16 :goto_14d

    :cond_9e
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_a9

    move v2, v0

    goto :goto_aa

    :cond_a9
    move v2, v1

    :goto_aa
    if-eqz v2, :cond_b0

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto/16 :goto_14d

    :cond_b0
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_bc

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFreeformDisallowedToControlSysUi()Z

    move-result v2

    if-eqz v2, :cond_bc

    :goto_ba
    move v2, v0

    goto :goto_d8

    :cond_bc
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_d7

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v2

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-boolean v2, v2, Lcom/android/server/wm/DexController;->mImeWindowVisibleInDefaultDisplay:Z

    if-eqz v2, :cond_d7

    goto :goto_ba

    :cond_d7
    move v2, v1

    :goto_d8
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v3

    if-eqz v3, :cond_112

    if-eqz p1, :cond_112

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_112

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    if-eq v4, v3, :cond_112

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getNavControlTargetInner: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has a parent task that is not included in the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string v4, "InsetsPolicy"

    invoke-static {v2, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move v2, v0

    :cond_112
    if-eqz v2, :cond_117

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto :goto_14d

    :cond_117
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    iget v2, v2, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_123

    goto :goto_124

    :cond_123
    move v0, v1

    :goto_124
    if-eqz v0, :cond_12b

    if-nez p2, :cond_12b

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto :goto_14d

    :cond_12b
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_14d

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result v0

    if-eqz v0, :cond_14d

    if-eqz p2, :cond_149

    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p2

    if-nez p2, :cond_14d

    :cond_149
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :cond_14d
    :goto_14d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p2

    if-eqz p2, :cond_16c

    aget p2, p3, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    not-int v0, v0

    and-int/2addr p2, v0

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    aput p1, p3, v1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_16c
    return-object p1
.end method

.method public getPermanentControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    return-object p0
.end method

.method public final getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_11

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto/16 :goto_e3

    :cond_11
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    goto/16 :goto_e3

    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_3a

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_e3

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_e3

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_e3

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto/16 :goto_e3

    :cond_3a
    const/4 v2, 0x1

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFullImmersiveModeFreeform()Z

    move-result v3

    if-eqz v3, :cond_45

    move v3, v2

    goto :goto_57

    :cond_45
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_56

    new-instance v4, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/wm/PolicyControl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;)Z

    move-result v3

    goto :goto_57

    :cond_56
    move v3, v0

    :goto_57
    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_64

    goto :goto_68

    :cond_64
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mToggleImmersiveControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    goto/16 :goto_e3

    :cond_68
    :goto_68
    if-eqz p1, :cond_86

    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eqz v3, :cond_76

    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_76

    move v3, v2

    goto :goto_77

    :cond_76
    move v3, v0

    :goto_77
    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_86

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mSplitImmersiveModeControlTarget:Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;

    goto :goto_e3

    :cond_86
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_91

    move v3, v2

    goto :goto_92

    :cond_91
    move v3, v0

    :goto_92
    if-eqz v3, :cond_97

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto :goto_e3

    :cond_97
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v2, v0

    :goto_a4
    if-eqz v2, :cond_ab

    if-nez p2, :cond_ab

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    goto :goto_e3

    :cond_ab
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-nez p2, :cond_ca

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    move-result p2

    if-eqz p2, :cond_ca

    if-eqz v1, :cond_c5

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    move-result p2

    if-nez p2, :cond_ca

    :cond_c5
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_e3

    :cond_ca
    if-eqz p1, :cond_d7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFreeformDisallowedToControlSysUi()Z

    move-result p2

    if-eqz p2, :cond_d7

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_e3

    :cond_d7
    if-eqz p1, :cond_e3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result p2

    if-eqz p2, :cond_e3

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :cond_e3
    :goto_e3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p2

    if-eqz p2, :cond_102

    aget p2, p3, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    not-int v1, v1

    and-int/2addr p2, v1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    and-int/2addr p1, v1

    or-int/2addr p1, p2

    aput p1, p3, v0

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    return-object p0

    :cond_102
    return-object p1
.end method

.method public getTransientControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    return-object p0
.end method

.method public final hasHiddenSources(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v0

    :cond_15
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_1b
    if-ltz p0, :cond_3d

    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-nez v3, :cond_29

    goto :goto_3a

    :cond_29
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-nez v2, :cond_3a

    return v1

    :cond_3a
    :goto_3a
    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransient(I)Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final onRequestedVisibleTypesChanged(Lcom/android/server/wm/InputTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    iget p2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-nez p2, :cond_a

    goto :goto_6c

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    iget-object p3, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    if-ltz p3, :cond_32

    iget-object v3, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v4, v3, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, v4, :cond_2f

    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    or-int/2addr v2, v3

    :cond_2f
    add-int/lit8 p3, p3, -0x1

    goto :goto_1a

    :cond_32
    invoke-interface {p1}, Lcom/android/server/wm/InsetsTarget;->getRequestedVisibleTypes()I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p2, :cond_3d

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    :cond_3d
    or-int/2addr p1, v1

    iget p2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    not-int p3, p1

    and-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eqz p1, :cond_6c

    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object p3, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p3

    if-eqz p3, :cond_6c

    iget v0, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3, v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransient(II)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v0, :cond_6c

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p3, p2, p1}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(II)V

    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    if-nez v0, :cond_e

    return v1

    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_23

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-nez p0, :cond_17

    goto :goto_23

    :cond_17
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, 0x1

    if-lt p0, p1, :cond_23

    const/16 v0, 0x63

    if-gt p0, v0, :cond_23

    return p1

    :cond_23
    :goto_23
    return v1
.end method

.method public final showTransient(IZ)V
    .registers 12

    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v1, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    move-result-object v1

    :cond_19
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1f
    if-ltz v2, :cond_3c

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_39

    :cond_2c
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-nez v4, :cond_38

    goto :goto_39

    :cond_38
    or-int/2addr v0, v5

    :goto_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_3c
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-eq p1, v0, :cond_ee

    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_d6

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v4, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->isVisibleBackgroundUserOnDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_6c

    :cond_58
    iget-object v4, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v4

    iget v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    or-int/2addr v5, v0

    iput v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    iget-object v4, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v4, :cond_6c

    :try_start_69
    invoke-interface {v4, v2, v0, p2}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(IIZ)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6c} :catch_6c

    :catch_6c
    :cond_6c
    :goto_6c
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    if-eqz v2, :cond_d6

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    move-result v4

    if-eqz v4, :cond_d6

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    move-result-object v5

    iget v7, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    or-int/2addr v7, v0

    iput v7, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    iget-object v5, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, v5, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8d
    iget-object v7, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v7, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_ad

    if-eqz v7, :cond_b9

    :try_start_9b
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {p1, v4, v0, p2}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(IIZ)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_ac} :catch_af
    .catchall {:try_start_9b .. :try_end_ac} :catchall_ad

    goto :goto_d2

    :catchall_ad
    move-exception p0

    goto :goto_d4

    :catch_af
    :try_start_af
    const-string/jumbo p1, "StatusBarManagerService"

    const-string/jumbo v2, "RemoteException for showTransient"

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    :cond_b9
    if-eqz v2, :cond_d2

    iget-object v2, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_ad

    if-eqz v2, :cond_d2

    :try_start_c1
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    invoke-interface {p1, v4, v0, p2}, Lcom/android/internal/carlife/IStatusBarCarLife;->showTransient(IIZ)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c8} :catch_c9
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_ad

    goto :goto_d2

    :catch_c9
    :try_start_c9
    const-string/jumbo p1, "StatusBarManagerService"

    const-string/jumbo v2, "RemoteException for showTransient"

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    monitor-exit v5

    goto :goto_d6

    :goto_d4
    monitor-exit v5
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_ad

    throw p0

    :cond_d6
    :goto_d6
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    or-int/2addr v2, v4

    and-int/2addr v0, v2

    if-eqz v0, :cond_ea

    goto :goto_eb

    :cond_ea
    move v3, v1

    :goto_eb
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    :cond_ee
    return-void
.end method

.method public final updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_7

    goto :goto_14

    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6d

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inFullImmersiveModeFreeform()Z

    move-result v0

    if-eqz v0, :cond_39

    if-eqz p1, :cond_39

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    iget-object v0, v0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    if-ne v0, v1, :cond_39

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d8

    if-ne v0, v1, :cond_39

    goto :goto_6d

    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v0, p1, :cond_41

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    goto :goto_6d

    :cond_41
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    if-gtz v0, :cond_6d

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    if-nez v0, :cond_4a

    goto :goto_6d

    :cond_4a
    if-eqz p1, :cond_6d

    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_6d

    :cond_59
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_6d

    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    :cond_6d
    :goto_6d
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v0, 0x0

    if-eqz p1, :cond_75

    iget v1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    goto :goto_76

    :cond_75
    move v1, v0

    :goto_76
    filled-new-array {v1}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_91

    invoke-virtual {p0, p1, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    goto :goto_99

    :cond_91
    if-ne v4, v2, :cond_98

    invoke-virtual {p0, v3, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    goto :goto_99

    :cond_98
    move-object v5, v6

    :goto_99
    iput-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    if-ne v5, v8, :cond_a8

    invoke-virtual {p0, p1, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    goto :goto_b0

    :cond_a8
    if-ne v5, v2, :cond_af

    invoke-virtual {p0, v3, v7, v1}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z[I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    goto :goto_b0

    :cond_af
    move-object v2, v6

    :goto_b0
    iput-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    iget-object v9, v3, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_bd
    if-ltz v9, :cond_e9

    iget-object v10, v3, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v11, v10, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v11}, Landroid/view/InsetsSource;->getType()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v12

    if-ne v11, v12, :cond_da

    invoke-virtual {v3, v4, v10, v0}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    invoke-virtual {v3, v8, v10, v7}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    goto :goto_e6

    :cond_da
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v12

    if-ne v11, v12, :cond_e6

    invoke-virtual {v3, v5, v10, v0}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    invoke-virtual {v3, v2, v10, v7}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    :cond_e6
    :goto_e6
    add-int/lit8 v9, v9, -0x1

    goto :goto_bd

    :cond_e9
    invoke-virtual {v3}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    if-ne v4, v2, :cond_121

    if-ne v5, v2, :cond_121

    aget v0, v1, v0

    if-nez p1, :cond_f9

    goto :goto_121

    :cond_f9
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_ff

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    :cond_ff
    iget-object p1, v2, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mTopFocusedComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_10e

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10e

    iget p1, v2, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mTopFocusedRequestedVisibleTypes:I

    if-ne p1, v0, :cond_10e

    goto :goto_121

    :cond_10e
    iput-object v6, v2, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mTopFocusedComponentName:Landroid/content/ComponentName;

    iput v0, v2, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mTopFocusedRequestedVisibleTypes:I

    :try_start_112
    iget-object p1, v2, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    invoke-interface {p1, v6, v0}, Landroid/view/IDisplayWindowInsetsController;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_112 .. :try_end_117} :catch_118

    goto :goto_121

    :catch_118
    move-exception p1

    const-string/jumbo v0, "WindowManager"

    const-string v1, "Failed to deliver package in top focused window change"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_121
    :goto_121
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {p1, v4, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-static {p0, v5, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    return-void
.end method
