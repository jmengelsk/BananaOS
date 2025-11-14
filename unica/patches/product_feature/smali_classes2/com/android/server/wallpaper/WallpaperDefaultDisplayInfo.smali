.class public final Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final defaultDisplaySizes:Landroid/util/SparseArray;

.field final foldableOrientations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;",
            ">;"
        }
    .end annotation
.end field

.field public final isFoldable:Z

.field public final isLargeScreen:Z


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->getPossibleMaximumWindowMetrics(I)Ljava/util/Set;

    move-result-object p1

    const v1, 0x1070108

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    array-length p2, p2

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_3

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v4

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowMetrics;

    invoke-virtual {v7}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v9, v10, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v9}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v8

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v9

    int-to-float v9, v10

    invoke-virtual {v7}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v10

    invoke-virtual {v7}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v7

    mul-float/2addr v7, v10

    div-float/2addr v9, v7

    cmpg-float v7, v6, v4

    if-gtz v7, :cond_2

    move v5, v8

    move v6, v9

    goto :goto_1

    :cond_2
    cmpl-float v7, v9, v6

    if-lez v7, :cond_3

    new-instance v7, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    invoke-direct {v7, v5, v8}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    invoke-direct {v7, v8, v5}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    :goto_2
    new-instance v8, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v9, v7, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    invoke-static {v9}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v9

    iget v10, v7, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    invoke-static {v10}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    goto :goto_4

    :cond_5
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    :goto_4
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowMetrics;

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v5, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    if-eqz v7, :cond_8

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v7

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v9

    if-ge v8, v7, :cond_7

    :cond_8
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowMetrics;

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v3

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_6

    :cond_a
    const/high16 p1, 0x44160000    # 600.0f

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_b

    move v0, v1

    :cond_b
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    iput-boolean p2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    iget-boolean v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-ne v3, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    iget-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getUnfoldedOrientation(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v1, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    if-ne v1, p1, :cond_0

    iget p0, v0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
