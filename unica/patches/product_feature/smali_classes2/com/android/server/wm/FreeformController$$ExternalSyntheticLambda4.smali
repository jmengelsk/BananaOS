.class public final synthetic Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(ZFF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;->f$0:Z

    iput p2, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;->f$1:F

    iput p3, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;->f$2:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;->f$0:Z

    iget v1, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;->f$1:F

    iget p0, p0, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda4;->f$2:F

    check-cast p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDeskRootTask()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_79

    :cond_1a
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v2, v1, v0

    if-nez v2, :cond_25

    cmpl-float v3, p0, v0

    if-nez v3, :cond_25

    goto :goto_79

    :cond_25
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_79

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_79

    iget-object v3, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v3, 0x3f000000  # 0.5f

    if-eqz v2, :cond_52

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    :cond_52
    cmpl-float v0, p0, v0

    if-eqz v0, :cond_6e

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v1, v3

    float-to-int p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_6e
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;)V

    iget-object p0, p1, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/wm/Task;->resize(ILandroid/graphics/Rect;)V

    :cond_79
    :goto_79
    return-void
.end method
