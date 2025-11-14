.class public final Lcom/android/server/pdp/PdpService$1;
.super Landroid/os/HandlerThread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    const-string/jumbo p1, "mSvcPdpThread"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    new-instance v1, Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    iget-object p0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    iget-object v2, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Lcom/android/server/pdp/PdpService$1;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;-><init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    return-void
.end method
