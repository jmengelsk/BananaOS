.class Lcom/att/iqi/libs/IQIServiceBroker$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string/jumbo p1, "com.att.iqi.extra.IQI_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo p2, "service_state"

    const/4 v1, 0x1

    if-eqz p1, :cond_2c

    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v3, v2, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    if-nez v3, :cond_2c

    iput v1, v2, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v0, v0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    invoke-virtual {p1, p2, v0}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V

    return-void

    :cond_2c
    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v2, p1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    if-ne v2, v1, :cond_4b

    iput v0, p1, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    iget v0, v0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    invoke-virtual {p1, p2, v0}, Lcom/att/iqi/libs/PreferenceStore;->setInteger(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->tryDisconnecting()V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$2;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$munregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V

    :cond_4b
    return-void
.end method
