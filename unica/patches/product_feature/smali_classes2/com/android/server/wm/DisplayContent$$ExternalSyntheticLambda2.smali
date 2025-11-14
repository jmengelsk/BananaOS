.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:Landroid/graphics/Matrix;

.field public final synthetic f$3:[F


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Matrix;[F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$3:[F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$2:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda2;->f$3:[F

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v3

    if-nez v3, :cond_44

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    invoke-virtual {p1, v3, v2, p0}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    move-result-object v3

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    invoke-virtual {p1, v0, v2, p0}, Lcom/android/server/wm/WindowState;->getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;

    move-result-object p0

    move-object v0, v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz p0, :cond_44

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->getEffectiveTouchableRegion(Landroid/graphics/Region;)V

    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/graphics/Region;->recycle()V

    :cond_44
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_52

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-ne p0, v0, :cond_52

    return v0

    :cond_52
    const/4 p0, 0x0

    return p0
.end method
