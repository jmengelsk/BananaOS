.class public final synthetic Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

.field public final synthetic f$1:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/util/SparseArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_27

    iget v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mTempLayer:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    return-void
.end method
