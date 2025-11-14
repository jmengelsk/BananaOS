.class public final Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;
.super Lcom/samsung/android/sepunion/SemUnionManagerLocal;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final accessoryStateChanged(Z[B[B)V
    .registers 4

    return-void
.end method

.method public final createSemSystemService(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Already existing service : "

    sget-object v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sSemSystemServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_27
    move-exception p0

    goto :goto_32

    :cond_29
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    monitor-exit v1

    return-void

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_27

    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 3

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final notifyCoverSwitchStateChanged(JZ)V
    .registers 5

    sget-object p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    const-string/jumbo p0, "SemUnionMainServiceImpl"

    const-string/jumbo v0, "notifyCoverSwitchStateChanged"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->notifyCoverSwitchStateChanged(JZ)V

    return-void

    :cond_17
    const-string/jumbo p1, "notifyCoverSwitchStateChanged : there is no system"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->sConstructorMap:Ljava/util/HashMap;

    const-string/jumbo v0, "SemUnionMainServiceImpl"

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    if-nez v1, :cond_24

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;

    const-string/jumbo v1, "plugin"

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->createSemSystemService(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService()Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    :cond_24
    if-eqz v1, :cond_2a

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemPluginManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    return-void

    :cond_2a
    const-string/jumbo p0, "notifySmartCoverAttachStateChanged : create system fail"

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final screenTurnedOff()V
    .registers 1

    return-void
.end method
