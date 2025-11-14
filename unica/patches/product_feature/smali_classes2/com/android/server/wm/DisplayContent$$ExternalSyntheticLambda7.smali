.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p1, p0, p2, p4}, Landroid/app/ActivityManagerInternal;->killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V

    return-void
.end method
