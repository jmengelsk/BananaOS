.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;->$r8$classId:I

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    packed-switch p0, :pswitch_data_32

    check-cast p2, Landroid/print/PrinterId;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void

    :pswitch_d  #0x5
    check-cast p2, Landroid/print/PrinterId;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    return-void

    :pswitch_13  #0x4
    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void

    :pswitch_19  #0x3
    check-cast p2, Landroid/print/PrintJobInfo;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    return-void

    :pswitch_1f  #0x2
    check-cast p2, Landroid/print/PrintJobInfo;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    return-void

    :pswitch_25  #0x1
    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void

    :pswitch_2b  #0x0
    check-cast p2, Landroid/print/PrinterId;

    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_25  #00000001
        :pswitch_1f  #00000002
        :pswitch_19  #00000003
        :pswitch_13  #00000004
        :pswitch_d  #00000005
    .end packed-switch
.end method
