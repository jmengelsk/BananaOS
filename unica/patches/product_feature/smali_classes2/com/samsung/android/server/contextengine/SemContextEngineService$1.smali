.class public final Lcom/samsung/android/server/contextengine/SemContextEngineService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/contextengine/SemContextEngineService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "com.samsung.android.mcfds"

    const-string/jumbo v2, "SemContextEngineService"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    iget-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    if-nez p2, :cond_5

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    const-string p1, "ACTION_SCREEN_ON"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.ce.SCREEN_ON"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    iget-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/samsung/android/server/contextengine/SemContextEngineService;->isScreenOn:Z

    const-string p1, "ACTION_SCREEN_OFF"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.ce.SCREEN_OFF"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.ce.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    const-string/jumbo v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ACTION_SIM_CARD_STATE_CHANGED"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.ce.SIM_CARD_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService$1;->this$0:Lcom/samsung/android/server/contextengine/SemContextEngineService;

    iget-object p0, p0, Lcom/samsung/android/server/contextengine/SemContextEngineService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    return-void
.end method
