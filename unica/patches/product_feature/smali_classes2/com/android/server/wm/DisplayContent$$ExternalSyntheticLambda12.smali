.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:Landroid/graphics/Region;

.field public final synthetic f$2:Landroid/graphics/Region;

.field public final synthetic f$3:Landroid/graphics/Region;

.field public final synthetic f$4:[I

.field public final synthetic f$5:Landroid/graphics/Region;

.field public final synthetic f$6:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region;[ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/Region;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$2:Landroid/graphics/Region;

    iput-object p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$3:Landroid/graphics/Region;

    iput-object p5, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$4:[I

    iput-object p6, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$5:Landroid/graphics/Region;

    iput-object p7, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$6:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$1:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$2:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$3:Landroid/graphics/Region;

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$4:[I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$5:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda12;->f$6:Landroid/graphics/Region;

    move-object v7, p1

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_7

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0xa29

    if-eq p1, v5, :cond_7

    const/16 v5, 0xa28

    if-eq p1, v5, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p1, p1, Landroid/view/InsetsFlags;->behavior:I

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-eqz p1, :cond_2

    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v5, 0x1d

    if-ge p1, v5, :cond_2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_2

    :cond_2
    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v10

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget p1, v7, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {v3, p1}, Landroid/graphics/Region;->scale(F)V

    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, p1}, Landroid/graphics/Region;->translate(II)V

    sget-object p1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_2
    invoke-static {v7, v10}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result p1

    const/4 v11, 0x1

    if-eqz p1, :cond_4

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    aget v6, v9, v10

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result p1

    aput p1, v9, v10

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    aget v6, v9, v11

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    move-result p1

    aput p1, v9, v11

    invoke-static {v3}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object p1

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    goto :goto_3

    :cond_4
    invoke-static {v7, v11}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameLeft:Landroid/graphics/Rect;

    const v6, 0x7fffffff

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mSystemGestureFrameRight:Landroid/graphics/Rect;

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/DisplayContent;->addToGlobalAndConsumeLimit(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;ILcom/android/server/wm/WindowState;I)I

    :cond_5
    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_3
    if-eqz p0, :cond_6

    sget-object p1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, v3, p1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_6
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_7
    :goto_4
    return-void
.end method
