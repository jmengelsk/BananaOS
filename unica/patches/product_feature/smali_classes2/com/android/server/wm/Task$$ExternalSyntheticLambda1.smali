.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$0:Z

    iget-boolean p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-nez v1, :cond_28

    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_1e

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v0, :cond_28

    :cond_1e
    if-nez p0, :cond_26

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method
