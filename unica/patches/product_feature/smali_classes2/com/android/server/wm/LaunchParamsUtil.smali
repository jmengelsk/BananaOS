.class public abstract Lcom/android/server/wm/LaunchParamsUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TMP_STABLE_BOUNDS:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public static applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f000000  # 0.5f

    if-eq p1, v2, :cond_17

    const/4 v2, 0x5

    if-eq p1, v2, :cond_15

    move p1, v5

    goto :goto_18

    :cond_15
    move p1, v4

    goto :goto_18

    :cond_17
    move p1, v3

    :goto_18
    const/16 v2, 0x30

    if-eq p0, v2, :cond_23

    const/16 v2, 0x50

    if-eq p0, v2, :cond_22

    move v3, v5

    goto :goto_23

    :cond_22
    move v3, v4

    :cond_23
    :goto_23
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    :cond_9
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p1, p0

    add-int/2addr p2, v0

    invoke-virtual {p3, p0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
