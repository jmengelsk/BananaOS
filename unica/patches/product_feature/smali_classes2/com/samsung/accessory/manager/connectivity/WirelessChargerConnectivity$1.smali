.class public final Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onReceive: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", misc_event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "misc_event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg state: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    iget v2, v2, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    const-string/jumbo v3, "SAccessoryManager_WirelessChargerConnectivity"

    invoke-static {p1, v2, v3}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v2, 0x400

    and-int/2addr p1, v2

    const/4 v4, 0x1

    if-ne p1, v2, :cond_57

    iget-object p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    iget p1, p1, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    if-ne p1, v4, :cond_57

    const-string/jumbo p1, "read bit set"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    const/4 p1, 0x2

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    return-void

    :cond_57
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    and-int/2addr p1, v2

    if-eq p1, v2, :cond_68

    const-string/jumbo p1, "read bit clear"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity$1;->this$0:Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;

    iput v4, p0, Lcom/samsung/accessory/manager/connectivity/WirelessChargerConnectivity;->msgState:I

    :cond_68
    return-void
.end method
