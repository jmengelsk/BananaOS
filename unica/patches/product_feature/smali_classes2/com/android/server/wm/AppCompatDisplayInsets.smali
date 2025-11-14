.class public Lcom/android/server/wm/AppCompatDisplayInsets;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHeight:I

.field public final mIsFloating:Z

.field public final mIsInFixedOrientationOrAspectRatioLetterbox:Z

.field public final mIsRotationCompatMode:Z

.field public final mNonDecorInsets:[Landroid/graphics/Rect;

.field public final mOriginalRequestedOrientation:I

.field public mOverrideConfig:Landroid/content/res/Configuration;

.field public final mStableInsets:[Landroid/graphics/Rect;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/Rect;

    iput-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-array v4, v3, [Landroid/graphics/Rect;

    iput-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    iget-object v5, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldCreateAppCompatDisplayInsetsForRotationCompat(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v7, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    if-eqz v6, :cond_1

    iget-boolean v5, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsRotationCompatMode:Z

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    move-object/from16 v5, p3

    :goto_1
    iget-object v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget v8, v8, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v9

    iput v9, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move v2, v4

    :goto_2
    if-ge v2, v3, :cond_3

    iget-object v5, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object v1, v5, v2

    iget-object v5, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object v1, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    return-void

    :cond_4
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v5, :cond_5

    move v9, v7

    goto :goto_3

    :cond_5
    move v9, v4

    :goto_3
    iput-boolean v9, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    :goto_4
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    :goto_5
    const/4 v8, 0x3

    if-eq v2, v7, :cond_a

    if-ne v2, v8, :cond_9

    goto :goto_6

    :cond_9
    move v9, v4

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v7

    :goto_7
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-eqz v9, :cond_b

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_8

    :cond_b
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    :goto_8
    iget v10, v9, Landroid/graphics/Point;->x:I

    iput v10, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    iput v9, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_9

    :cond_c
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    :goto_9
    iget-object v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    move v10, v4

    :goto_a
    if-ge v10, v3, :cond_13

    iget-object v11, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v11, v10

    iget-object v11, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v11, v10

    if-eq v10, v7, :cond_e

    if-ne v10, v8, :cond_d

    goto :goto_b

    :cond_d
    move v11, v4

    goto :goto_c

    :cond_e
    :goto_b
    move v11, v7

    :goto_c
    if-eqz v11, :cond_f

    iget v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_d

    :cond_f
    iget v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_d
    if-eqz v11, :cond_10

    iget v11, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_e

    :cond_10
    iget v11, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_e
    invoke-virtual {v9, v10, v12, v11}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v13

    if-eqz p4, :cond_11

    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v14, v14, v10

    iget-object v15, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v14, v14, v10

    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    :cond_11
    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v14, v14, v10

    iget-object v15, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v14, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v14, v14, v10

    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_f
    if-nez v6, :cond_12

    goto :goto_10

    :cond_12
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2, v10, v6}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v13, v13, v10

    invoke-static {v12, v11, v6, v13}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v13, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v13, v13, v10

    invoke-static {v12, v11, v6, v13}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_13
    return-void
.end method

.method public static updateInsetsForBounds(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    iget p0, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->right:I

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AppCompatDisplayInsets:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_0

    const-string v0, ", mIsFloating=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-eqz v0, :cond_1

    const-string v0, ", mIsInFixedOrientationOrAspectRatioLetterbox=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mOverrideConfig="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public getBoundsByRotation(ILandroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    if-eqz v1, :cond_2

    move v2, p0

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move p1, p0

    :goto_2
    invoke-virtual {p2, v0, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getFrameByOrientation(ILandroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, p0

    :goto_1
    if-eqz p1, :cond_2

    move v1, p0

    :cond_2
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
