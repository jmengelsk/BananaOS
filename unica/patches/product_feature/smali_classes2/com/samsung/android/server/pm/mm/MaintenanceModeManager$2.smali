.class public final Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

.field public final synthetic val$actionResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    iput-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->val$actionResponse:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->val$actionResponse:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceive: "

    const-string/jumbo v0, "MaintenanceMode"

    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    iget-object p2, p2, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    iget-object p1, p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mRemainingPkgs:Ljava/util/Set;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$2;->this$0:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
