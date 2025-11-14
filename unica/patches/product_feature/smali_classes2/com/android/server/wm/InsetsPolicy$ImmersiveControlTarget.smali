.class public final Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;
.super Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mVisibleTypes:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->mVisibleTypes:I

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {p0, p3, p4}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    return-void
.end method


# virtual methods
.method public final getRequestedVisibleTypes()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->mVisibleTypes:I

    return p0
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->mVisibleTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
