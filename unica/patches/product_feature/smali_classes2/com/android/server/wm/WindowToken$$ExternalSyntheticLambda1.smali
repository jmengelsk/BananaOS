.class public final synthetic Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowToken;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowToken;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowToken;

    iput-boolean p2, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/WindowToken;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v1, v0, :cond_24

    if-eqz p0, :cond_21

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    if-nez p0, :cond_24

    new-instance p0, Landroid/view/InsetsState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    return-void

    :cond_21
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    :cond_24
    return-void
.end method
