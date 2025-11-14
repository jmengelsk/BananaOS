.class public final synthetic Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget p0, p0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_68

    check-cast p1, Lcom/android/server/pinner/PinnerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p2, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    invoke-virtual {p1, p0, v1}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    return-void

    :pswitch_15  #0x2
    move-object p0, p1

    check-cast p0, Lcom/android/server/pinner/PinnerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v1, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pinner/PinnerService;->updateActiveState(IZ)V

    monitor-enter p0

    :try_start_24
    iget-object p1, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3b

    monitor-exit p0

    goto :goto_48

    :catchall_39
    move-exception p1

    goto :goto_49

    :cond_3b
    iget-object v1, p0, Lcom/android/server/pinner/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_39

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pinner/PinnerService;->pinApp(IIZ)V

    :goto_48
    return-void

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_39

    throw p1

    :pswitch_4b  #0x1
    check-cast p1, Lcom/android/server/pinner/PinnerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p2, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    invoke-virtual {p1, p0, v1}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    return-void

    :pswitch_59  #0x0
    check-cast p1, Lcom/android/server/pinner/PinnerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p2, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    invoke-virtual {p1, p0, v0}, Lcom/android/server/pinner/PinnerService;->pinAppsInternal(IZ)V

    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_59  #00000000
        :pswitch_4b  #00000001
        :pswitch_15  #00000002
    .end packed-switch
.end method
