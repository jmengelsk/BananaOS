.class public final Lcom/android/server/print/RemotePrintService$6;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$priorityList:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/print/RemotePrintService$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/server/print/RemotePrintService$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_16

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void

    :pswitch_d  #0x0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d  #00000000
    .end packed-switch
.end method
