.class public final Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    if-eq p1, p2, :cond_2f

    const/16 p2, 0xc

    if-eq p1, p2, :cond_28

    goto :goto_35

    :cond_28
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onStateChanged(I)V

    return-void

    :cond_2f
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onStateChanged(I)V

    :cond_35
    :goto_35
    return-void
.end method
