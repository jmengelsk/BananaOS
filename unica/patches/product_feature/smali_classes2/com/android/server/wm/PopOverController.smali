.class public final Lcom/android/server/wm/PopOverController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final POP_OVER_DIM_AMOUNT_FOR_CHILD:F = 0.0f

.field static final POP_OVER_DIM_AMOUNT_FOR_NIGHT:F = 0.5f

.field static final POP_OVER_DIM_DURATION:J = 0x96L


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    goto :goto_4c

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    const-wide/16 v2, 0x96

    if-eqz p0, :cond_23

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p0, 0x3f000000  # 0.5f

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_44

    :cond_23
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_36

    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p0, v1

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, 0x0

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    goto :goto_44

    :cond_36
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p0, p0, -0x3

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget p0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    iput p0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-wide v2, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    iput-wide v2, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    :goto_44
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_4c

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final updateTransparency(Lcom/android/server/wm/WindowState;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1f

    :cond_e
    const/4 v1, 0x1

    new-array v1, v1, [Z

    aput-boolean v0, v1, v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    :cond_1f
    :goto_1f
    return-void
.end method
