.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    packed-switch p0, :pswitch_data_34

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void

    :pswitch_b  #0x4
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void

    :pswitch_f  #0x3
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    iget-object p0, p1, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz p0, :cond_19

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    :cond_19
    iget-boolean p0, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz p0, :cond_20

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    :cond_20
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return-void

    :pswitch_27  #0x2
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void

    :pswitch_2b  #0x1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void

    :pswitch_2f  #0x0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f  #00000000
        :pswitch_2b  #00000001
        :pswitch_27  #00000002
        :pswitch_f  #00000003
        :pswitch_b  #00000004
    .end packed-switch
.end method
