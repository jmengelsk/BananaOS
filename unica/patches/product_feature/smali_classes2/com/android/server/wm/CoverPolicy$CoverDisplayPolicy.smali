.class public final Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/ExtraDisplayPolicy;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CoverPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CoverPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->this$0:Lcom/android/server/wm/CoverPolicy;

    return-void
.end method


# virtual methods
.method public final getOtherDisplayId(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_0

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final hasCoverHome(I)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isCoverClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->this$0:Lcom/android/server/wm/CoverPolicy;

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mViewCoverDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDisplayControlledByPolicy(I)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldChooseDefaultTaskDisplayArea(I)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldNotTopDisplay(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x4

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final shouldSkipAppTransition(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;->isCoverClosed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
