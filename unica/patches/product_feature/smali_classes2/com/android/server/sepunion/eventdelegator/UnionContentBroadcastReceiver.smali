.class public Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mRegisteredUserId:I

.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    const-string/jumbo v0, "SemDeviceInfoManagerService"

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;I)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iput p2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mRegisteredUserId:I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onReceive : "

    const-string v3, ", userId = "

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mRegisteredUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_37

    :cond_49
    if-ltz v1, :cond_56

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mRegisteredUserId:I

    if-eq v1, p1, :cond_55

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    :cond_55
    return-void

    :cond_56
    iget p1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mRegisteredUserId:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public final sendIntentAsUser(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V

    goto :goto_23

    :catchall_21
    move-exception p0

    goto :goto_25

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_21

    throw p0
.end method
