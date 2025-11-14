.class public final Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/remoteappmode/ProximityManager;


# direct methods
.method public constructor <init>(Lcom/android/server/remoteappmode/ProximityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive(), action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ProximityManager"

    invoke-static {v1, v0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    iget-object v0, v0, Lcom/android/server/remoteappmode/ProximityManager;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    const-string/jumbo v0, "com.samsung.android.mdx.proximity.ACTION_USER_PRESENT"

    invoke-static {p2, p1, v0}, Lcom/android/server/remoteappmode/ProximityManager;->-$$Nest$msendIntent(Lcom/android/server/remoteappmode/ProximityManager;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    const-string/jumbo v0, "com.samsung.android.mdx.proximity.ACTION_SCREEN_OFF"

    invoke-static {p2, p1, v0}, Lcom/android/server/remoteappmode/ProximityManager;->-$$Nest$msendIntent(Lcom/android/server/remoteappmode/ProximityManager;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/remoteappmode/ProximityManager$ProximityReceiver;->this$0:Lcom/android/server/remoteappmode/ProximityManager;

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->isValid()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/remoteappmode/ProximityManager;->disableSendingUserPresentIntent()V

    :cond_2
    return-void
.end method
