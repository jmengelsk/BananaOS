.class Lcom/att/iqi/libs/IQIServiceBroker$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string/jumbo p0, "com.att.iqi.extra.IQI_DEBUG"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eq p0, p1, :cond_1b

    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    const-string/jumbo p2, "log_enabled"

    invoke-virtual {p1, p2, p0}, Lcom/att/iqi/libs/PreferenceStore;->setBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->enableLogging(Z)V

    :cond_1b
    return-void
.end method
