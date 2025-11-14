.class public final Lcom/android/server/wm/AppCompatSafeRegionPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowSafeRegionLetterboxing:Lcom/android/server/wm/AppCompatUtils$1;

.field public final mLatestSafeRegionBounds:Landroid/graphics/Rect;

.field public final mNeedsSafeRegionBounds:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance p1, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatSafeRegionPolicy;Landroid/content/pm/PackageManager;)V

    new-instance p2, Lcom/android/server/wm/AppCompatUtils$1;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mAllowSafeRegionLetterboxing:Lcom/android/server/wm/AppCompatUtils$1;

    return-void
.end method


# virtual methods
.method public final getLatestSafeRegionBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mAllowSafeRegionLetterboxing:Lcom/android/server/wm/AppCompatUtils$1;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatUtils$1;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p0, 0x0

    return-object p0

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0

    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0
.end method

.method public final isLetterboxedForSafeRegionOnlyAllowed()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
