.class public final synthetic Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Landroid/service/displayhash/IDisplayHashingService;

    check-cast p2, Landroid/os/RemoteCallback;

    packed-switch p0, :pswitch_data_26

    :try_start_9
    invoke-interface {p1, p2}, Landroid/service/displayhash/IDisplayHashingService;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_16

    :catch_d
    move-exception p0

    const-string/jumbo p1, "WindowManager"

    const-string p2, "Failed to invoke getDisplayHashAlgorithms command"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void

    :pswitch_17  #0x0
    :try_start_17
    invoke-interface {p1, p2}, Landroid/service/displayhash/IDisplayHashingService;->getIntervalBetweenRequestsMillis(Landroid/os/RemoteCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception p0

    const-string/jumbo p1, "WindowManager"

    const-string p2, "Failed to invoke getDisplayHashAlgorithms command"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_17  #00000000
    .end packed-switch
.end method
