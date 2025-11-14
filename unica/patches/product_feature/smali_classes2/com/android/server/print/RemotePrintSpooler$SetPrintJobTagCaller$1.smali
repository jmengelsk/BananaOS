.class public final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;B)V
    .registers 3

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;BB)V
    .registers 4

    const/4 p2, 0x6

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;BZ)V
    .registers 4

    const/4 p2, 0x5

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;C)V
    .registers 3

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;I)V
    .registers 3

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;S)V
    .registers 3

    const/4 p2, 0x4

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_e

    return-void

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$500(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;I)V

    return-void

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public final customPrinterIconCacheCleared$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(I)V
    .registers 2

    return-void
.end method

.method public final onCancelPrintJobResult(ZI)V
    .registers 3

    return-void
.end method

.method public onCustomPrinterIconCached(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_e

    return-void

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$400(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;I)V

    return-void

    :pswitch_data_e
    .packed-switch 0x5
        :pswitch_6  #00000005
    .end packed-switch
.end method

.method public final onCustomPrinterIconCached$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(I)V
    .registers 2

    return-void
.end method

.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .registers 4

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_e

    return-void

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$600(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    return-void

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method public final onGetCustomPrinterIconResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(Landroid/graphics/drawable/Icon;I)V
    .registers 3

    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .registers 4

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_e

    return-void

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$100(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    return-void

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_6  #00000003
    .end packed-switch
.end method

.method public final onGetPrintJobInfoResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(Landroid/print/PrintJobInfo;I)V
    .registers 3

    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .registers 4

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_e

    return-void

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$000(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    return-void

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_6  #00000004
    .end packed-switch
.end method

.method public final onGetPrintJobInfosResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(Ljava/util/List;I)V
    .registers 3

    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .registers 4

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    return-void

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$200(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    return-void

    :pswitch_data_12
    .packed-switch 0x6
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public final onSetPrintJobStateResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(ZI)V
    .registers 3

    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .registers 4

    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    return-void

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$300(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public final onSetPrintJobTagResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(ZI)V
    .registers 3

    return-void
.end method
