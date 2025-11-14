.class public final Lcom/android/server/print/RemotePrintService$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/print/RemotePrintService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/print/RemotePrintService$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
