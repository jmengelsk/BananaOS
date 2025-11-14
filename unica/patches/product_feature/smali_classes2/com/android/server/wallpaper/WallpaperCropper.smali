.class public final Lcom/android/server/wallpaper/WallpaperCropper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final ADD:I = 0x1

.field static final BALANCE:I = 0x3

.field static final MAX_PARALLAX:F = 1.0f

.field static final REMOVE:I = 0x2


# instance fields
.field public final mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-void
.end method

.method public static getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;
    .registers 14

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1c

    return-object p0

    :cond_1c
    if-lez v3, :cond_8b

    if-nez p3, :cond_66

    iget p3, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p3

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p0, v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Point;

    iget p0, p1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-direct {v3, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    iget p0, p2, Landroid/graphics/Point;->y:I

    iget p1, p2, Landroid/graphics/Point;->x:I

    invoke-direct {v4, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x0

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    iget p3, v3, Landroid/graphics/Point;->x:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr p0, p3

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p1, p3, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4

    :cond_66
    move v6, p4

    div-float/2addr v1, v2

    const/high16 p1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    cmpl-float p2, v1, p1

    if-lez p2, :cond_8a

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    float-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    if-eqz v6, :cond_85

    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->left:I

    return-object v0

    :cond_85
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_8a
    return-object v0

    :cond_8b
    move v7, p5

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-ne v7, p3, :cond_92

    move p4, p2

    goto :goto_bb

    :cond_92
    const/4 p4, 0x1

    if-ne v7, p4, :cond_a3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p4, p5

    float-to-int p4, p4

    goto :goto_bb

    :cond_a3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p4

    neg-int p4, p4

    int-to-double p4, p4

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v3, p4

    double-to-int p4, v3

    :goto_bb
    iget p5, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr p5, v1

    if-lt p5, p4, :cond_e9

    div-int/lit8 p2, p4, 0x2

    rem-int/2addr p4, p3

    add-int/2addr p4, p2

    iget p5, p0, Landroid/graphics/Rect;->left:I

    if-ge p5, p2, :cond_d0

    sub-int/2addr p2, p5

    add-int/2addr p4, p2

    move p2, p5

    goto :goto_de

    :cond_d0
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget p5, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, p5

    if-ge v1, p4, :cond_de

    sub-int v1, p1, p5

    sub-int/2addr p4, v1

    add-int/2addr p2, p4

    sub-int p4, p1, p5

    :cond_de
    :goto_de
    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_ef

    :cond_e9
    iput p2, v0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_ef
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p0, p1

    float-to-int p0, p0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 p2, p0, 0x2

    rem-int/2addr p0, p3

    add-int/2addr p0, p2

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p2

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public static getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;
    .registers 18

    move-object/from16 v0, p3

    move/from16 v4, p4

    invoke-static {p0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v2

    const/4 v3, -0x1

    const-string v5, " , orientation = "

    const-string/jumbo v6, "WallpaperCropper"

    const/4 v7, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-nez v8, :cond_1a

    :cond_17
    move v9, v4

    goto/16 :goto_1c7

    :cond_1a
    move v8, v7

    :goto_1b
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_65

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_41

    iget v10, v9, Landroid/graphics/Rect;->left:I

    if-ltz v10, :cond_41

    iget v10, v9, Landroid/graphics/Rect;->top:I

    if-ltz v10, :cond_41

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v11, p2, Landroid/graphics/Point;->x:I

    if-gt v10, v11, :cond_41

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    iget v11, p2, Landroid/graphics/Point;->y:I

    if-le v10, v11, :cond_3e

    goto :goto_41

    :cond_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid crop: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for bitmap size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, p2, v0, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_65
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    if-eqz v8, :cond_77

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_77
    invoke-static {v2}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    iget-object v10, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Point;

    if-eqz v9, :cond_98

    invoke-static {v9, v10, p2, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v2, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_98
    invoke-virtual {p1, v2}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget-object v11, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    if-eqz v10, :cond_e7

    invoke-static {v10, v9, p2, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v2, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_e5

    if-eqz p4, :cond_cf

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_d9

    :cond_cf
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_d9
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v0, p1

    move-object v1, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_e5
    move-object v0, p1

    return-object v0

    :cond_e7
    iget-object v9, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_ed
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_100

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v11, v10, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    if-ne v11, v2, :cond_ed

    iget v9, v10, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    goto :goto_101

    :cond_100
    move v9, v3

    :goto_101
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget-object v11, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    if-eqz v10, :cond_136

    invoke-static {v10, v9, p2, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCrop: suggestedCrop = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_136
    move v9, v4

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    if-eqz v5, :cond_182

    iget-object v10, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_147
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_159

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v12, v11, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    if-ne v12, v8, :cond_147

    iget v3, v11, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    :cond_159
    invoke-virtual {p1, v8}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v10

    filled-new-array {v3, v10}, [I

    move-result-object v3

    :goto_161
    const/4 v10, 0x2

    if-ge v7, v10, :cond_182

    aget v10, v3, v7

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    if-eqz v10, :cond_17f

    invoke-static {v5, p1, p2, v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p0, p1, p2, v2, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_17f
    add-int/lit8 v7, v7, 0x1

    goto :goto_161

    :cond_182
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Could not find a proper default crop for display: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", bitmap size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", suggested crops: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", orientation: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rtl: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", defaultDisplaySizes: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p0, p1, p2, v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :goto_1c7
    new-instance v8, Landroid/graphics/Rect;

    iget v10, p2, Landroid/graphics/Point;->x:I

    iget v11, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v7, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-boolean v10, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v10, :cond_1de

    sget-boolean v10, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v10, :cond_1de

    const/4 v10, 0x1

    if-eqz v2, :cond_1dd

    if-ne v2, v10, :cond_1de

    :cond_1dd
    move v7, v10

    :cond_1de
    invoke-virtual {p1, v2}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v10

    if-nez v7, :cond_1f3

    if-eq v10, v3, :cond_1f3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p0, p1, p2, v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1f3
    if-eqz v7, :cond_21a

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getCrop: foldedOrientation, newSuggestedCrops = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_21a
    iget-boolean v2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-eqz v2, :cond_24d

    iget-boolean v2, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-nez v2, :cond_24d

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget v3, p0, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_24d

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, Landroid/graphics/Point;->y:I

    iget v5, p0, Landroid/graphics/Point;->x:I

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v2, p1, p2, v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1, v2, p2, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v8

    if-eqz p4, :cond_249

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, v8, Landroid/graphics/Rect;->left:I

    goto :goto_24d

    :cond_249
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, v8, Landroid/graphics/Rect;->right:I

    :cond_24d
    :goto_24d
    move-object v0, v8

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getOriginalCropHints(Lcom/android/server/wallpaper/WallpaperData;Ljava/util/List;)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->scale(F)V

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_2d
    return-object v0
.end method

.method public static getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;
    .registers 7

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    const/high16 v5, 0x3f000000  # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_60
    return-object v0
.end method

.method public static getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;
    .registers 8

    const v0, 0x7fffffff

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    :goto_a
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_31

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v6, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_31
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;
    .registers 10

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p1, p2

    iget p2, v2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    if-eqz v4, :cond_2f

    iget p2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->left:I

    return-object p0

    :cond_2f
    iget p2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/graphics/Rect;->right:I

    return-object p0
.end method


# virtual methods
.method public final generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string/jumbo v3, "WallpaperCropper"

    invoke-direct {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "WPMS.generateCrop"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    const-string v4, "  estimateCrop="

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v7

    new-instance v8, Landroid/view/DisplayInfo;

    invoke-direct {v8}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v9, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v9, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1, v6}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v10, :cond_44

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v10, :cond_48

    :cond_44
    move-object/from16 v18, v2

    goto/16 :goto_4c6

    :cond_48
    new-instance v10, Landroid/graphics/Point;

    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v10, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    new-instance v12, Landroid/graphics/Rect;

    iget v13, v10, Landroid/graphics/Point;->x:I

    iget v14, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v12, v6, v6, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move v13, v6

    :goto_5b
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_b1

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    iget-object v15, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_81

    invoke-virtual {v12, v15}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v16

    if-nez v16, :cond_7e

    goto :goto_81

    :cond_7e
    add-int/lit8 v13, v13, 0x1

    goto :goto_5b

    :cond_81
    :goto_81
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v9, "Invalid crop "

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for orientation "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and bitmap size "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; clearing suggested crops."

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_b1
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v9, :cond_c6

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    :cond_c6
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_104

    iget v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v12, v10}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v0

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move v12, v6

    :goto_dc
    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v12, v14, :cond_f8

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    if-eqz v15, :cond_f5

    invoke-virtual {v9, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f5
    add-int/lit8 v12, v12, 0x1

    goto :goto_dc

    :cond_f8
    iput-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_167

    :cond_104
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_111

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_111
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_139

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "Ignoring wallpaper.cropHint = "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "; not within the bitmap of size "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_139
    new-instance v9, Landroid/graphics/Point;

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-direct {v9, v12, v14}, Landroid/graphics/Point;-><init>(II)V

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v12, v14, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v14, v12}, Landroid/graphics/Rect;->offset(II)V

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_167
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-gt v12, v14, :cond_17a

    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v12, v14, :cond_178

    goto :goto_17a

    :cond_178
    move v12, v6

    goto :goto_17b

    :cond_17a
    :goto_17a
    const/4 v12, 0x1

    :goto_17b
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget v15, v7, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-gt v14, v15, :cond_18f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    sget v15, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    if-gt v14, v15, :cond_18f

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    :cond_18f
    const v14, 0x7f7fffff  # Float.MAX_VALUE

    move v15, v6

    :goto_193
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v13

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-ge v15, v13, :cond_1f3

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    if-nez v6, :cond_1b2

    move-object/from16 v18, v2

    goto :goto_1ed

    :cond_1b2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget v11, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v13, v11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v18, v2

    iget v2, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v11, v2

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v11, v6, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    div-float/2addr v2, v11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v11, v6

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v14, v2

    :goto_1ed
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v18

    const/4 v6, 0x0

    goto :goto_193

    :cond_1f3
    move-object/from16 v18, v2

    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    const/4 v5, 0x0

    const/4 v13, -0x1

    :goto_1f9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_214

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v11, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f9

    :cond_214
    mul-int/lit8 v13, v13, 0x2

    sget v2, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v2

    const/high16 v11, 0x3f800000  # 1.0f

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v5, v2, v11

    if-lez v5, :cond_23d

    const/4 v5, 0x1

    goto :goto_23e

    :cond_23d
    const/4 v5, 0x0

    :goto_23e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "crop: w="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " h="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "defaultCrops: "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "meas: w="

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "crop?="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " scale?="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v6

    if-eqz v6, :cond_2b0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :cond_2b0
    if-nez v12, :cond_2cc

    if-nez v5, :cond_2cc

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_4cc

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_4cc

    :cond_2cc
    const/4 v5, 0x0

    :try_start_2cd
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, v7, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    div-int/2addr v6, v7

    const/4 v7, 0x1

    :goto_2d5
    mul-int/lit8 v11, v7, 0x2

    if-gt v11, v6, :cond_2db

    move v7, v11

    goto :goto_2d5

    :cond_2db
    iput v7, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x0

    iput-boolean v6, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    div-float/2addr v8, v2

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v8, v11

    iput v8, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    div-float/2addr v8, v2

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v8, v11

    iput v8, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    div-float/2addr v8, v2

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v8, v11

    iput v8, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    div-float/2addr v8, v2

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v8, v11

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    const/high16 v11, 0x3f000000  # 0.5f

    add-float/2addr v8, v11

    float-to-int v8, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v2

    add-float/2addr v12, v11

    float-to-int v11, v12

    const-string v12, "Decode parameters:"

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  cropHint="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  sampleSize="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  user defined crops: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  all crops: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  targetSize="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  maxTextureSize="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/wallpaper/GLHelper;->sMaxTextureSize:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "wallpaper_orig"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ea

    const-string/jumbo v0, "decode_record"

    goto :goto_3ed

    :catchall_3e2
    move-exception v0

    move-object v2, v5

    goto/16 :goto_4bf

    :catch_3e6
    move-exception v0

    move-object v2, v5

    goto/16 :goto_4b3

    :cond_3ea
    const-string/jumbo v0, "decode_lock_record"

    :goto_3ed
    new-instance v8, Ljava/io/File;

    iget v9, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v9}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "record path ="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", record name ="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    iget v9, v10, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    div-float/2addr v9, v2

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v9, v11

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    div-float/2addr v10, v2

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v11, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v7, v9, v10, v6}, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;-><init>(IIILandroid/graphics/Rect;)V

    invoke-static {v0, v4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46a
    .catch Ljava/lang/Exception; {:try_start_2cd .. :try_end_46a} :catch_3e6
    .catchall {:try_start_2cd .. :try_end_46a} :catchall_3e2

    :try_start_46a
    new-instance v4, Ljava/io/BufferedOutputStream;

    const v6, 0x8000

    invoke-direct {v4, v2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_472
    .catch Ljava/lang/Exception; {:try_start_46a .. :try_end_472} :catch_4b2
    .catchall {:try_start_46a .. :try_end_472} :catchall_4b0

    :try_start_472
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/android/server/wallpaper/SemWallpaperData;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wallpaper/SemWallpaperData;->getLastCallingPackage(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x64

    if-nez v6, :cond_4a0

    const-string/jumbo v6, "android.app.cts.wallpapers"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49a

    const-string/jumbo v6, "com.android.wallpaperbackup"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a0

    goto :goto_49a

    :catchall_494
    move-exception v0

    move-object v5, v4

    goto :goto_4bf

    :catch_497
    move-exception v0

    move-object v5, v4

    goto :goto_4b3

    :cond_49a
    :goto_49a
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4a5

    :cond_4a0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v5, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_4a5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4a8
    .catch Ljava/lang/Exception; {:try_start_472 .. :try_end_4a8} :catch_497
    .catchall {:try_start_472 .. :try_end_4a8} :catchall_494

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v9, 0x1

    goto :goto_4cc

    :catchall_4b0
    move-exception v0

    goto :goto_4bf

    :catch_4b2
    move-exception v0

    :goto_4b3
    :try_start_4b3
    const-string v4, "Error decoding crop"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b8
    .catchall {:try_start_4b3 .. :try_end_4b8} :catchall_4b0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4cb

    :goto_4bf
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :goto_4c6
    const-string v0, "Invalid wallpaper data"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4cb
    const/4 v9, 0x0

    :cond_4cc
    :goto_4cc
    if-nez v9, :cond_4ea

    const-string/jumbo v0, "Unable to apply new wallpaper"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/high16 v11, 0x3f800000  # 1.0f

    iput v11, v1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    :cond_4ea
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4ff

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_4ff
    invoke-virtual/range {v18 .. v18}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void
.end method

.method public final getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;
    .registers 12

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Point;->x:I

    iget v5, p3, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v1, :cond_4e

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_4e

    :cond_21
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p2, p3, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    :goto_37
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_4d

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_4d
    return-object p0

    :cond_4e
    :goto_4e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t get default crops from suggested crops "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " for bitmap of size "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; ignoring suggested crops"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "WallpaperCropper"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(ILandroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0

    :cond_79
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    if-eqz v0, :cond_ea

    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    if-nez v0, :cond_ea

    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_91

    iget-object p1, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    goto :goto_ee

    :cond_91
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_b3

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_cb

    :cond_b3
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_cb
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDefaultDisplaySizes which = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , sizes = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "WallpaperDisplayHelper"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v3

    goto :goto_ee

    :cond_ea
    iget-object p1, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    :goto_ee
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_f9

    goto :goto_fa

    :cond_f9
    move v1, v2

    :goto_fa
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move v3, v2

    :goto_100
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-ge v3, v4, :cond_124

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_121

    invoke-static {v6, v5, p3, p2, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_121
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_124
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    :goto_128
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v2, p2, :cond_149

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_139

    goto :goto_146

    :cond_139
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-static {v3, v5, p3, v0, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_146
    add-int/lit8 v2, v2, 0x1

    goto :goto_128

    :cond_149
    return-object p0
.end method

.method public isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperData;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p1, :cond_5

    goto/16 :goto_b7

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_b7

    :cond_12
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance p1, Landroid/graphics/Point;

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {p1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v3

    new-instance v4, Landroid/graphics/Point;

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v1, v1}, Landroid/graphics/Point;->equals(II)Z

    move-result v5

    if-eqz v5, :cond_6f

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Point;->set(II)V

    :cond_6f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v0, :cond_7b

    move v2, v0

    goto :goto_7c

    :cond_7b
    move v2, v1

    :goto_7c
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-static {p1, p0, v4, p2, v2}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object p0

    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-double v5, p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-double v7, p2

    div-double/2addr v5, v7

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v7, p0

    div-double/2addr p1, v7

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide/high16 v5, 0x3ff8000000000000L  # 1.5

    cmpl-double p0, p0, v5

    if-lez p0, :cond_a3

    goto :goto_b6

    :cond_a3
    if-ne v3, v0, :cond_b7

    iget p0, v4, Landroid/graphics/Point;->x:I

    int-to-double p0, p0

    iget p2, v4, Landroid/graphics/Point;->y:I

    int-to-double v2, p2

    div-double/2addr p0, v2

    const-wide v2, 0x3feb13b13b13b13bL  # 0.8461538461538461

    cmpl-double p0, p0, v2

    if-ltz p0, :cond_b6

    goto :goto_b7

    :cond_b6
    :goto_b6
    return v1

    :cond_b7
    :goto_b7
    return v0
.end method
