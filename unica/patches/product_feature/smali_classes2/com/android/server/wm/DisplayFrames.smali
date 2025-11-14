.class public final Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ID_DISPLAY_CUTOUT_BOTTOM:I

.field public static final ID_DISPLAY_CUTOUT_LEFT:I

.field public static final ID_DISPLAY_CUTOUT_RIGHT:I

.field public static final ID_DISPLAY_CUTOUT_TOP:I


# instance fields
.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mHeight:I

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRotation:I

.field public final mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

.field public final mUnrestricted:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    const/4 v0, 0x1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    const/4 v0, 0x2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    const/4 v0, 0x3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {v2, v0, v1}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iput-object p7, p0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    iput-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget p1, p2, Landroid/view/DisplayInfo;->rotation:I

    move-object p7, p2

    iget p2, p7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p7, p7, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v1, p4

    move-object p4, p3

    move p3, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, v1

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    return-void
.end method


# virtual methods
.method public final update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v9, p4

    iget-object v1, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    iget-object v5, v0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    const/4 v7, 0x1

    if-eqz v6, :cond_5b

    iget-object v8, v6, Lcom/android/server/wm/UdcCutoutPolicy;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v10, v6, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v8, v2, v10}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v13, v8, Lcom/android/server/wm/utils/WmDisplayCutout;->mInner:Landroid/view/DisplayCutout;

    iget-object v8, v6, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    if-nez v8, :cond_43

    new-instance v12, Landroid/view/DisplayInfo;

    invoke-direct {v12}, Landroid/view/DisplayInfo;-><init>()V

    iput v2, v12, Landroid/view/DisplayInfo;->rotation:I

    iput v3, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v4, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    new-instance v10, Lcom/android/server/wm/DisplayFrames;

    new-instance v11, Landroid/view/InsetsState;

    invoke-direct {v11, v1, v7}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    const/16 v17, 0x0

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v10 .. v17}, Lcom/android/server/wm/DisplayFrames;-><init>(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;Lcom/android/server/wm/UdcCutoutPolicy;)V

    iput-object v10, v6, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    goto :goto_5b

    :cond_43
    iget-object v8, v8, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v8, v1, v7}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    iget-object v6, v6, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    move-object/from16 v8, p7

    move-object v10, v1

    move-object v11, v5

    move-object v1, v6

    move v12, v7

    move-object v5, v13

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/DisplayFrames;->update(IIILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;)Z

    move-object v14, v6

    move-object v15, v7

    goto :goto_62

    :cond_5b
    :goto_5b
    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object v10, v1

    move-object v11, v5

    move v12, v7

    :goto_62
    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    const/4 v5, 0x0

    if-ne v1, v2, :cond_90

    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    if-ne v1, v3, :cond_90

    iget v1, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    if-ne v1, v4, :cond_90

    iget-object v1, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v10}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v10}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    return v5

    :cond_90
    iput v2, v0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v3, v0, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    iput v4, v0, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v10, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v9}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    invoke-virtual {v10, v14}, Landroid/view/InsetsState;->setRoundedCorners(Landroid/view/RoundedCorners;)V

    invoke-virtual {v10, v15}, Landroid/view/InsetsState;->setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V

    move-object/from16 v8, p7

    invoke-virtual {v10, v8}, Landroid/view/InsetsState;->setDisplayShape(Landroid/view/DisplayShape;)V

    invoke-virtual {v10, v11}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    iget v1, v11, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_LEFT:I

    if-le v1, v2, :cond_cf

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v10, v3, v1}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    goto :goto_d2

    :cond_cf
    invoke-virtual {v10, v3}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_d2
    iget v1, v11, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_TOP:I

    if-le v1, v2, :cond_f2

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v10, v3, v1}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    goto :goto_f5

    :cond_f2
    invoke-virtual {v10, v3}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_f5
    iget v1, v11, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_RIGHT:I

    if-ge v1, v2, :cond_115

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v10, v3, v1}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v11, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    goto :goto_118

    :cond_115
    invoke-virtual {v10, v3}, Landroid/view/InsetsState;->removeSource(I)V

    :goto_118
    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/server/wm/DisplayFrames;->ID_DISPLAY_CUTOUT_BOTTOM:I

    if-ge v1, v2, :cond_138

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v10, v3, v1}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    return v12

    :cond_138
    invoke-virtual {v10, v3}, Landroid/view/InsetsState;->removeSource(I)V

    return v12
.end method
