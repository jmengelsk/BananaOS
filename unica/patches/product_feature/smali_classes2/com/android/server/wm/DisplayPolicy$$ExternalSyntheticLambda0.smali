.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowState;

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowState;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/android/server/wm/DisplayFrames;

    check-cast p2, Lcom/android/server/wm/WindowContainer;

    check-cast p3, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    aget-object v1, v2, v1

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getSource()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 p2, 0x2

    if-eq v3, p2, :cond_1

    const/4 p2, 0x3

    if-eq v3, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getArbitraryRectangle()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_4

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    :goto_0
    const/4 p2, -0x1

    if-ne p0, p2, :cond_5

    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    move-result-object p2

    aget-object p0, p2, p0

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getInsetsSize()Landroid/graphics/Insets;

    move-result-object p0

    :goto_1
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    invoke-static {p3, p0}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    if-eqz v4, :cond_7

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, v2, p3, p0}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_7
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, v2, p0, p2}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
