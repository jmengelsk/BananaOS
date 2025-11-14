.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    if-nez p0, :cond_15

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    iput-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    :cond_15
    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mReturnSizeCompatBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p0, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    :cond_27
    return-object p0
.end method
