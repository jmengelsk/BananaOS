.class public final Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "reason"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "EMERGENCY_STATE_CHANGED : "

    const-string/jumbo v0, "[MCF_DS_SYS]_SemContinuityServiceImpl"

    invoke-static {p1, p2, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    return-void

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    iget-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    return-void
.end method
