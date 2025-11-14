.class public final synthetic Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/android/server/pinner/PinnerService;

    sget p0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    monitor-enter p1

    :try_start_5
    iget-object p0, p1, Lcom/android/server/pinner/PinnerService;->mPinKeys:Landroid/util/ArraySet;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_21

    monitor-exit p1

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_20

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/pinner/PinnerService;->unpinApp(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_20
    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method
