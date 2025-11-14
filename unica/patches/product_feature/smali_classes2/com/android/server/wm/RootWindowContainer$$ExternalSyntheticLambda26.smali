.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(I[Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 7

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;->f$0:I

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda26;->f$1:[Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_14

    aput-boolean v2, p0, v3

    :cond_14
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f8

    if-ne v1, v4, :cond_25

    aget-boolean p0, p0, v3

    if-eqz p0, :cond_25

    iget p0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq p0, v0, :cond_25

    return v2

    :cond_25
    return v3
.end method
