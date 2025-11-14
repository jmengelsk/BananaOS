.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;[ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iput-object p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$1:[Z

    iput p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object v1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$1:[Z

    iget v2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda1;->f$3:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    aget-boolean v0, v1, v3

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne p1, v2, :cond_3

    if-eqz p0, :cond_2

    :goto_0
    return v4

    :cond_2
    aput-boolean v4, v1, v3

    :cond_3
    :goto_1
    return v3
.end method
