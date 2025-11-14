.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;->f$0:I

    iput p3, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;->f$1:I

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;->f$0:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda3;->f$2:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/wm/WindowState;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v8

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v8

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v8

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v7

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    if-eq v4, v7, :cond_4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v8

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v8

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v8

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v7

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_0
    and-int/lit8 v3, v3, 0x28

    if-nez v3, :cond_6

    move v3, v6

    goto :goto_1

    :cond_6
    move v3, v5

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eq p1, p0, :cond_8

    return v6

    :cond_8
    :goto_2
    return v5
.end method
