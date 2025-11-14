.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/util/function/QuintPredicate;


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Landroid/content/Intent;

    check-cast p5, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p3

    if-eqz p3, :cond_32

    iget p3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq p3, p0, :cond_1d

    goto :goto_32

    :cond_1d
    if-eqz p2, :cond_28

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_32

    goto :goto_30

    :cond_28
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    :goto_30
    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method
