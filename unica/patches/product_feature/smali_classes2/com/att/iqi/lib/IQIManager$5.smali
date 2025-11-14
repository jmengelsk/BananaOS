.class Lcom/att/iqi/lib/IQIManager$5;
.super Lcom/att/iqi/IServiceStateChangeCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$5;->this$0:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {p0}, Lcom/att/iqi/IServiceStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager$5;->this$0:Lcom/att/iqi/lib/IQIManager;

    invoke-static {p0}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
