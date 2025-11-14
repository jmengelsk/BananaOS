.class public final Lcom/android/server/wm/utils/DimenPxIntSupplier;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastDensity:F

.field public final mResourceId:I

.field public mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mLastDensity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mValue:I

    iput-object p1, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mResourceId:I

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mLastDensity:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mLastDensity:F

    iget-object v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mValue:I

    :cond_0
    iget p0, p0, Lcom/android/server/wm/utils/DimenPxIntSupplier;->mValue:I

    return p0
.end method
