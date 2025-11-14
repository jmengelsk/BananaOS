.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(IIILandroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$0:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$3:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 11

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$0:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$2:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda5;->f$3:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/wm/WindowState;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ScreenshotAnimation"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_29

    goto/16 :goto_c4

    :cond_29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_c4

    :cond_31
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_37

    goto/16 :goto_c4

    :cond_37
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_42

    goto/16 :goto_c4

    :cond_42
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER:Z

    if-eqz v6, :cond_4c

    const/16 v6, 0xa2c

    if-ne v4, v6, :cond_4c

    goto/16 :goto_c4

    :cond_4c
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5e

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_c4

    :cond_5e
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-ne v2, v4, :cond_88

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_ac

    :cond_88
    const/4 v6, 0x2

    if-eq v2, v6, :cond_8e

    const/4 v6, 0x3

    if-ne v2, v6, :cond_ac

    :cond_8e
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    iput v2, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    :cond_ac
    :goto_ac
    and-int/lit8 v2, v5, 0x28

    if-nez v2, :cond_b2

    move v2, v4

    goto :goto_b3

    :cond_b2
    move v2, v7

    :goto_b3
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_bb

    if-eqz v2, :cond_c4

    :cond_bb
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eq p1, p0, :cond_c4

    return v4

    :cond_c4
    :goto_c4
    return v7
.end method
