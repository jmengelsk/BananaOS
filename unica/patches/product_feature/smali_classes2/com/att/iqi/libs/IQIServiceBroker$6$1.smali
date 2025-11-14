.class Lcom/att/iqi/libs/IQIServiceBroker$6$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$6;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    iget-object v0, v0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "binderDied"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
