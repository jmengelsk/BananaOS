.class public final Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;


# direct methods
.method public constructor <init>(Lcom/samsung/iqi/IQIServiceBrokerExt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    return-void
.end method


# virtual methods
.method public final onServiceChange(Z)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt$serviceStateListnerForIQI;->this$0:Lcom/samsung/iqi/IQIServiceBrokerExt;

    iput-boolean p1, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    const-string v1, "IQIServiceBrokerExt"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onIQIServiceChangeCallback : IQIService enable: "

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->mServiceRunning:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "running"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "stopped"

    :goto_0
    const-string/jumbo v2, "onIQIServiceChangeCallback : newServiceState "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p1

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x7e7

    invoke-virtual {p1, v2, v3}, Lcom/att/iqi/lib/IQIManager;->setUnlockCode(J)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/samsung/iqi/IQIServiceBrokerExt;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "main unlock key was successfully set: #*xxx*2023#"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/iqi/IQIServiceBrokerExt;->-$$Nest$smsubmitSS2S(Z)V

    :cond_4
    return-void
.end method
