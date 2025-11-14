.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$0:I

    iget-boolean p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda39;->f$1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setHiddenWhileProfileLockedStateLocked(Z)V

    :cond_0
    return-void
.end method
