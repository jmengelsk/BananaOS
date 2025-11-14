.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/print/RemotePrintService;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    iget-object p0, p1, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    return-void

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
