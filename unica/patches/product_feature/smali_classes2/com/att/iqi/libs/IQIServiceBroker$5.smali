.class Lcom/att/iqi/libs/IQIServiceBroker$5;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Message received by dispatcher: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const-string/jumbo p0, "Unknown message"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "Timed out waiting for packages to be uploaded"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->checkPkgValidity()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    const-string p0, "Bad or disabled package"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/libs/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v0, "Trying to connect with empty bundle"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mtryConnecting(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V

    :cond_6
    return-void
.end method
