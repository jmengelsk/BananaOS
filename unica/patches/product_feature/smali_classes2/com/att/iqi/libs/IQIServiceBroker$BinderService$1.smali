.class Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$BinderService;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    iput-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    iget-object p2, p2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    iget-object p2, p2, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
