.class public final Lcom/android/server/wm/UdcCutoutPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

.field public mTmpBarContentFrame:Landroid/graphics/Rect;

.field public mUdcConfiguration:Landroid/content/res/Configuration;

.field public mUdcCutout:Landroid/view/DisplayCutout;

.field public mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/utils/RotationCache;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    return-void
.end method

.method public static supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z
    .registers 3

    if-eqz p0, :cond_11

    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_11

    const-string/jumbo v0, "com.samsung.android.supports_udc_cutout"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static updateUseLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_10

    iget-boolean v1, v3, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    :cond_e
    :goto_e
    move v2, v1

    goto :goto_4b

    :cond_10
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-nez v4, :cond_4b

    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const-wide/16 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_4b

    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/wm/UdcCutoutPolicy;->supportsUdcCutout(Landroid/content/pm/PackageItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_e

    :cond_4a
    move v1, v2

    :cond_4b
    :goto_4b
    iput-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    return-void
.end method


# virtual methods
.method public final adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)V
    .registers 7

    instance-of v0, p1, Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v1, p1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_3e

    :cond_15
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3e

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_2e

    :cond_2d
    move-object v0, v1

    :goto_2e
    if-nez v0, :cond_3d

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    iget-object v1, p1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_3e

    :cond_3d
    move-object v1, v0

    :cond_3e
    :goto_3e
    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :goto_43
    iget-object p0, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CAN_DISPATCH_UDC_CUTOUT:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_53

    iput-boolean v0, p2, Landroid/view/InsetsState;->mCanDispatchUdcCutout:Z

    :cond_53
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_74

    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result p0

    sub-int/2addr p0, v0

    :goto_5e
    if-ltz p0, :cond_c8

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    if-ne p1, v0, :cond_71

    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->removeSourceAt(I)V

    :cond_71
    add-int/lit8 p0, p0, -0x1

    goto :goto_5e

    :cond_74
    iget-object p0, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object p1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_7d
    if-ltz v1, :cond_c8

    invoke-virtual {p2, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    if-ne v2, v3, :cond_c5

    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-eqz p2, :cond_9b

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1, v1, p2, p0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    return-void

    :cond_9b
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-eqz p2, :cond_a9

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p1, v1, p0, p2}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    return-void

    :cond_a9
    iget p2, p1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_b7

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p2, p1, v1, p0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    return-void

    :cond_b7
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_c8

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p2, p1, v1, p0}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    return-void

    :cond_c5
    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    :cond_c8
    return-void
.end method
