.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceive: "

    const-string/jumbo v0, "MaintenanceMode"

    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2f

    const-string/jumbo p2, "com.samsung.android.intent.action.HIDE_MAINTENANCE_MODE_MARK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_29

    const-string/jumbo p2, "com.samsung.android.intent.action.SHOW_MAINTENANCE_MODE_MARK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2f

    :cond_22
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->setOverlayVisibility(Z)V

    return-void

    :cond_29
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$1;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->setOverlayVisibility(Z)V

    :cond_2f
    :goto_2f
    return-void
.end method
