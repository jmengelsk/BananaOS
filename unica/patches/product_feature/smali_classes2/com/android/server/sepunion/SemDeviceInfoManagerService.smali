.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.super Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;
.implements Lcom/android/server/sepunion/AbsSemSystemServiceForS;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCallbackLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

.field public mIsWatchingPackageRemoved:Z

.field public final mListenerContainers:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mSystemCallbacks:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    const-string/jumbo v0, "SemDeviceInfoManagerService"

    invoke-static {v0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemEventDelegationHandler"

    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    return-void
.end method

.method public static getCustomEventKeys(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    const-string/jumbo v1, "monitor_call_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_18
    const-string/jumbo v1, "monitor_activity_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    const-string/jumbo p1, "component_list"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_8f

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2f
    if-ge v2, p1, :cond_8f

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "monitor_activity_state;"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_5c
    const-string/jumbo v1, "monitor_package_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    const-string/jumbo p1, "package_list"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_8f

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_72
    if-ge v2, p1, :cond_8f

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "monitor_package_state;"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_8f
    return-object v0
.end method

.method public static getCustomEventMessageId(Ljava/lang/String;Z)I
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "monitor_call_state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x2

    return p0

    :cond_15
    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_22

    const/4 p0, 0x3

    return p0

    :cond_22
    const/4 p0, 0x4

    return p0

    :cond_24
    const-string/jumbo p1, "monitor_activity_state"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :cond_2a
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public clearEventListenersAsUser(I)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clear event listeners for User "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_32
    if-ge v5, v3, :cond_42

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    goto :goto_32

    :catchall_40
    move-exception p0

    goto :goto_79

    :cond_42
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_51
    if-ge v4, v1, :cond_5f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    goto :goto_51

    :cond_5f
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_62
    .catchall {:try_start_1d .. :try_end_62} :catchall_40

    :try_start_62
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_76

    :try_start_68
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_40

    :try_start_6b
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_73

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_40

    return-void

    :catchall_73
    move-exception p0

    :try_start_74
    monitor-exit v1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_40

    :catchall_76
    move-exception p0

    :try_start_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    :try_start_78
    throw p0

    :goto_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_40

    throw p0
.end method

.method public final clearPendingIntentAsUser(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "clearPendingIntentAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clear pending intents for package = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearPendingIntentAsUserInternal(ILjava/lang/String;)V

    return-void
.end method

.method public final clearPendingIntentAsUserInternal(ILjava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :cond_2e
    :goto_2e
    const/4 v8, 0x1

    if-ge v7, v5, :cond_63

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Landroid/net/Uri;

    iget-object v10, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    iget-object v11, v10, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v11, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_4c

    goto :goto_4d

    :cond_4c
    move v8, v6

    :goto_4d
    if-eqz v8, :cond_2e

    iget-object v8, v10, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2e

    iget-object v8, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    goto :goto_2e

    :catchall_60
    move-exception p0

    goto/16 :goto_d0

    :cond_63
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v6

    :cond_68
    :goto_68
    if-ge v5, v2, :cond_9a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    iget-object v10, v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v10, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_86

    move v10, v8

    goto :goto_87

    :cond_86
    move v10, v6

    :goto_87
    if-eqz v10, :cond_68

    iget-object v9, v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_68

    iget-object v9, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    goto :goto_68

    :cond_9a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v6

    :cond_9f
    :goto_9f
    if-ge p1, p0, :cond_ce

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    iget-object v5, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_bd

    move v5, v8

    goto :goto_be

    :cond_bd
    move v5, v6

    :goto_be
    if-eqz v5, :cond_9f

    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9f

    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    :cond_ce
    monitor-exit v0

    return-void

    :goto_d0
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_3 .. :try_end_d1} :catchall_60

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "Listener containers(Users: "

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    const-string v2, "\n##### SEM DEVICE INFO MANAGER SERVICE #####\n##### (dumpsys sepunion semeventdelegator) #####\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_197

    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Listener container for User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    if-eqz v3, :cond_193

    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_bf

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_bf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Custom Event Map(registered event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_80
    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ba

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_80

    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    :catchall_b7
    move-exception p0

    goto/16 :goto_19f

    :cond_ba
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_bf
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_12a

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_12a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Intent Action Map(registered action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ee
    :goto_ee
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_125

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_ee

    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ee

    :cond_125
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12a
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_190

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_190

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    URI Event Map(registered uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_159
    :goto_159
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_190

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_159

    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_159

    :cond_190
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_193
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    :cond_197
    const-string/jumbo p0, "SemDeviceInfoManagerService"

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_19f
    monitor-exit v1
    :try_end_1a0
    .catchall {:try_start_6 .. :try_end_1a0} :catchall_b7

    throw p0
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    :cond_13
    const-string/jumbo p0, "Permission denied: "

    const-string v1, " callingUid="

    const-string v2, ", you need system uid of to be signed with the system certificate."

    invoke-static {v0, p0, p1, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemDeviceInfoManagerService"

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEventProcessHandler()Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    return-object p0
.end method

.method public final getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    invoke-direct {v1, p1}, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    :cond_1a
    :goto_1a
    monitor-exit v0

    return-object v1

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public final getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .registers 10

    const-string/jumbo v0, "getNumPendingIntentAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_4a

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_4a

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, v1

    :cond_21
    :goto_21
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v3, :cond_21

    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_21

    :catchall_47
    move-exception p0

    goto/16 :goto_e6

    :cond_4a
    move v2, v1

    :cond_4b
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_84

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_84

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v3, v1

    :cond_5e
    :goto_5e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v4, :cond_5e

    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5e

    :cond_84
    move v3, v1

    :cond_85
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_bd

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_bd

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_97
    :goto_97
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v4, :cond_97

    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_97

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_97

    :cond_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_9 .. :try_end_be} :catchall_47

    if-eqz p1, :cond_e3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e0

    const-string/jumbo p0, "SemDeviceInfoManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getNumPendingIntent(): Invalid type request. Requested type = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_e0
    return v2

    :cond_e1
    return v3

    :cond_e2
    return v1

    :cond_e3
    add-int/2addr v1, v3

    add-int/2addr v1, v2

    return v1

    :goto_e6
    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_47

    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    invoke-direct {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;-><init>()V

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1c

    :cond_1a
    :goto_1a
    monitor-exit v0

    return-object v1

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_18

    throw p0
.end method

.method public final getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .registers 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    return-object p0
.end method

.method public final onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public final onCleanupUser(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final onDestroy()V
    .registers 1

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStartUser(I)V
    .registers 2

    return-void
.end method

.method public final onStopUser(I)V
    .registers 2

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public final onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final onUserStarting(I)V
    .registers 9

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    if-nez p1, :cond_28

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v6, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    :cond_28
    return-void
.end method

.method public final onUserStopped(I)V
    .registers 2

    return-void
.end method

.method public final onUserStopping(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearEventListenersAsUser(I)V

    return-void
.end method

.method public final onUserSwitching(II)V
    .registers 3

    return-void
.end method

.method public final onUserUnlocked(I)V
    .registers 2

    return-void
.end method

.method public final onUserUnlocking(I)V
    .registers 2

    return-void
.end method

.method public final registerContentObserver(ZLandroid/net/Uri;I)V
    .registers 14

    const-string v0, "Creating new UnionContentObserver for the uri:"

    if-ltz p3, :cond_47

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_43

    const-string/jumbo v3, "SemDeviceInfoManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {v8, v0, p0}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;-><init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iget-object v0, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    new-instance v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;

    move-object v5, p0

    move v7, p1

    move-object v6, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/net/Uri;ZLcom/android/server/sepunion/eventdelegator/UnionContentObserver;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_43

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_45

    :cond_43
    :goto_43
    monitor-exit v1

    return-void

    :goto_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_40

    throw p0

    :cond_47
    return-void
.end method

.method public final registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "registerPendingIntent"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public final registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 15

    if-eqz p1, :cond_cb

    if-nez p2, :cond_6

    goto/16 :goto_cb

    :cond_6
    if-nez p3, :cond_1c

    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_cb

    :cond_1c
    const-string/jumbo v0, "registerPendingIntentForCustomEventAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Register custom event = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_54
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_5e
    :goto_5e
    if-ge v4, v2, :cond_c7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_86

    iget-object v5, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_5e

    new-instance v6, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {v6, p2, v3, v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {v5, p4, v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    goto :goto_5e

    :catchall_84
    move-exception p0

    goto :goto_c9

    :cond_86
    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_90
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    goto :goto_b4

    :cond_a3
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_b4
    new-instance v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    new-instance v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {v8, p2, v3, v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {v6, p4, v8}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    iget-object v7, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_c7
    monitor-exit v1

    return-void

    :goto_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_54 .. :try_end_ca} :catchall_84

    throw p0

    :cond_cb
    :goto_cb
    return-void
.end method

.method public final registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 13

    const-string/jumbo v0, "registerPendingIntentForIntentAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public final registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo p1, "registerPendingIntentForIntentForAllUsers"

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const-string/jumbo p0, "SemDeviceInfoManagerService"

    const-string p1, "Do not support observing Intent for all users"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 11

    if-eqz p1, :cond_88

    if-eqz p2, :cond_88

    if-nez p3, :cond_8

    goto/16 :goto_88

    :cond_8
    const-string/jumbo v0, "registerPendingIntentForUriAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Register uri = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_40
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_64

    iget-object p0, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {p1, p2, v4, v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    goto :goto_84

    :catchall_62
    move-exception p0

    goto :goto_86

    :cond_64
    new-instance v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    new-instance v5, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {v5, p2, v4, v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {v2, p3, v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    iget-object p3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string/jumbo p3, "notify_for_descendants"

    invoke-virtual {p2, p3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p2, p1, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerContentObserver(ZLandroid/net/Uri;I)V

    :goto_84
    monitor-exit v0

    return-void

    :goto_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_40 .. :try_end_87} :catchall_62

    throw p0

    :cond_88
    :goto_88
    return-void
.end method

.method public final registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .registers 13

    if-eqz p1, :cond_bc

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-lez v0, :cond_bc

    if-eqz p2, :cond_bc

    if-nez p5, :cond_e

    goto/16 :goto_bc

    :cond_e
    if-eqz p3, :cond_16

    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_16

    goto/16 :goto_bc

    :cond_16
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v0, :cond_3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Register intent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " package = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flag = "

    const-string v4, ", conditions = "

    invoke-static {p6, p3, v1, v4, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SemDeviceInfoManagerService"

    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SemDeviceInfoManagerService"

    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    if-nez p3, :cond_7a

    const/4 p4, 0x0

    goto :goto_80

    :cond_7a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p4, v3

    :goto_80
    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    :goto_83
    if-ge v2, v0, :cond_bc

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_88
    invoke-virtual {p0, p6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p3

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p4

    iget-object v3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ab

    new-instance v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    invoke-virtual {v3, p5, v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    iget-object p3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p6, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerReceiver(ILjava/lang/String;)V

    goto :goto_b6

    :catchall_a9
    move-exception p0

    goto :goto_ba

    :cond_ab
    iget-object p3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-virtual {p3, p5, v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    :goto_b6
    monitor-exit p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    :goto_ba
    monitor-exit p2
    :try_end_bb
    .catchall {:try_start_88 .. :try_end_bb} :catchall_a9

    throw p0

    :cond_bc
    :goto_bc
    return-void
.end method

.method public final registerReceiver(ILjava/lang/String;)V
    .registers 8

    const-string v0, "Adding new UnionBroadcastReceiver for the action: "

    if-ltz p1, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4f

    :cond_b
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4b

    const-string/jumbo v3, "SemDeviceInfoManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in User "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;I)V

    iget-object v2, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    new-instance v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    :catchall_49
    move-exception p0

    goto :goto_4d

    :cond_4b
    :goto_4b
    monitor-exit v1

    return-void

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_49

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method

.method public final reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    if-nez v2, :cond_a

    goto/16 :goto_82

    :cond_a
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v7, :cond_7e

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget-object v10, v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v0, "call_state"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "phone_number"

    move-object/from16 v8, p3

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4f
    .catchall {:try_start_d .. :try_end_4f} :catchall_76

    :try_start_4f
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Report call state changed, state = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "SemDeviceInfoManagerService"

    invoke-static {v10, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "SemDeviceInfoManagerService"

    invoke-static {v10, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4f .. :try_end_75} :catch_78
    .catchall {:try_start_4f .. :try_end_75} :catchall_76

    goto :goto_7c

    :catchall_76
    move-exception v0

    goto :goto_83

    :catch_78
    move-exception v0

    :try_start_79
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_7c
    move v0, v9

    goto :goto_31

    :cond_7e
    move-object/from16 v8, p3

    goto :goto_17

    :cond_81
    monitor-exit v4

    :goto_82
    return-void

    :goto_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_76

    throw v0
.end method

.method public final reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v2, :cond_a

    goto/16 :goto_82

    :cond_a
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v7, :cond_7e

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget-object v10, v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v0, "component"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v0, "is_resumed"

    move/from16 v8, p3

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4f
    .catchall {:try_start_d .. :try_end_4f} :catchall_76

    :try_start_4f
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Report component state changed, componentName = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "SemDeviceInfoManagerService"

    invoke-static {v10, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "SemDeviceInfoManagerService"

    invoke-static {v10, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4f .. :try_end_75} :catch_78
    .catchall {:try_start_4f .. :try_end_75} :catchall_76

    goto :goto_7c

    :catchall_76
    move-exception v0

    goto :goto_83

    :catch_78
    move-exception v0

    :try_start_79
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_7c
    move v0, v9

    goto :goto_31

    :cond_7e
    move/from16 v8, p3

    goto :goto_17

    :cond_81
    monitor-exit v4

    :goto_82
    return-void

    :goto_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_76

    throw v0
.end method

.method public final reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v2, :cond_a

    goto/16 :goto_82

    :cond_a
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_31
    if-ge v0, v7, :cond_7e

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget-object v10, v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v0, "package_name"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "package_state"

    move-object/from16 v8, p3

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4f
    .catchall {:try_start_d .. :try_end_4f} :catchall_76

    :try_start_4f
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Report package changed for "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "SemDeviceInfoManagerService"

    invoke-static {v10, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "SemDeviceInfoManagerService"

    invoke-static {v10, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4f .. :try_end_75} :catch_78
    .catchall {:try_start_4f .. :try_end_75} :catchall_76

    goto :goto_7c

    :catchall_76
    move-exception v0

    goto :goto_83

    :catch_78
    move-exception v0

    :try_start_79
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_7c
    move v0, v9

    goto :goto_31

    :cond_7e
    move-object/from16 v8, p3

    goto :goto_17

    :cond_81
    monitor-exit v4

    :goto_82
    return-void

    :goto_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_76

    throw v0
.end method

.method public final reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_8

    goto/16 :goto_b4

    :cond_8
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move v0, v7

    :goto_30
    if-ge v0, v6, :cond_ad

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    check-cast v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget-object v10, v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string/jumbo v0, "uri"

    move-object/from16 v8, p3

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p5, :cond_54

    const-string/jumbo v0, "notify_for_descendants"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_51
    .catchall {:try_start_b .. :try_end_51} :catchall_52

    goto :goto_55

    :catchall_52
    move-exception v0

    goto :goto_b5

    :cond_54
    move v0, v7

    :goto_55
    if-nez v0, :cond_5d

    if-nez p5, :cond_5a

    goto :goto_5d

    :cond_5a
    move/from16 v10, p4

    goto :goto_ab

    :cond_5d
    :goto_5d
    if-eqz v0, :cond_6d

    :try_start_5f
    const-string/jumbo v0, "SemDeviceInfoManagerService"

    const-string/jumbo v11, "Notifying descendants changes."

    invoke-static {v0, v11}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :catch_69
    move-exception v0

    move/from16 v10, p4

    goto :goto_a8

    :cond_6d
    :goto_6d
    iget-object v11, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Send intent: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", userId: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5f .. :try_end_8c} :catch_69
    .catchall {:try_start_5f .. :try_end_8c} :catchall_52

    move/from16 v10, p4

    :try_start_8e
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " by uri change"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "SemDeviceInfoManagerService"

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "SemDeviceInfoManagerService"

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_8e .. :try_end_a6} :catch_a7
    .catchall {:try_start_8e .. :try_end_a6} :catchall_52

    goto :goto_ab

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_ab
    move v0, v9

    goto :goto_30

    :cond_ad
    move-object/from16 v8, p3

    move/from16 v10, p4

    goto/16 :goto_15

    :cond_b3
    monitor-exit v3

    :goto_b4
    return-void

    :goto_b5
    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_52

    throw v0
.end method

.method public final sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v2, :cond_a

    goto/16 :goto_179

    :cond_a
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_178

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_61

    const-string/jumbo v7, "SemDeviceInfoManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data cleared package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", key = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catchall_5e
    move-exception v0

    goto/16 :goto_17a

    :cond_61
    iget-object v6, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_6f
    if-ge v0, v7, :cond_174

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget v0, v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    const/4 v11, 0x1

    if-nez v0, :cond_80

    goto/16 :goto_fd

    :cond_80
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_e5

    iget-object v12, v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    if-ne v0, v11, :cond_bc

    if-eqz v12, :cond_9c

    if-nez v13, :cond_97

    goto :goto_9c

    :cond_97
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_ba

    :cond_9c
    :goto_9c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "containsPackageName() packageNameList = "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", packageName = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "SemDeviceInfoManagerService"

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_ba
    move v11, v0

    goto :goto_fd

    :cond_bc
    const/4 v14, 0x2

    if-ne v0, v14, :cond_fc

    if-eqz v12, :cond_fc

    if-nez v13, :cond_c4

    goto :goto_fc

    :cond_c4
    iget-object v0, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_cf
    if-ge v15, v14, :cond_fc

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_e2

    invoke-virtual {v0, v8, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_e2

    goto :goto_fd

    :cond_e2
    add-int/lit8 v15, v15, 0x1

    goto :goto_cf

    :cond_e5
    const-string/jumbo v0, "SemDeviceInfoManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has no data. It doesn\'t match with the flag."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fc
    :goto_fc
    const/4 v11, 0x0

    :goto_fd
    if-nez v11, :cond_102

    :goto_ff
    move v0, v10

    goto/16 :goto_6f

    :cond_102
    iget-object v0, v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_104
    .catchall {:try_start_d .. :try_end_104} :catchall_5e

    :try_start_104
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string/jumbo v9, "action_origin"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v8

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v22}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Send intent "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", userId: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_150
    .catch Ljava/lang/NullPointerException; {:try_start_104 .. :try_end_150} :catch_16d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_104 .. :try_end_150} :catch_16d
    .catchall {:try_start_104 .. :try_end_150} :catchall_5e

    move/from16 v8, p3

    :try_start_152
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " by broadcast"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "SemDeviceInfoManagerService"

    invoke-static {v9, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "SemDeviceInfoManagerService"

    invoke-static {v9, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/NullPointerException; {:try_start_152 .. :try_end_16a} :catch_16b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_152 .. :try_end_16a} :catch_16b
    .catchall {:try_start_152 .. :try_end_16a} :catchall_5e

    goto :goto_ff

    :catch_16b
    move-exception v0

    goto :goto_170

    :catch_16d
    move-exception v0

    move/from16 v8, p3

    :goto_170
    :try_start_170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ff

    :cond_174
    move/from16 v8, p3

    goto/16 :goto_17

    :cond_178
    monitor-exit v4

    :goto_179
    return-void

    :goto_17a
    monitor-exit v4
    :try_end_17b
    .catchall {:try_start_170 .. :try_end_17b} :catchall_5e

    throw v0
.end method

.method public final unregisterContentObserver(ILandroid/net/Uri;)V
    .registers 6

    if-ltz p1, :cond_28

    if-nez p2, :cond_5

    goto :goto_28

    :cond_5
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/ContentObserver;

    if-eqz p1, :cond_24

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_22

    throw p0

    :cond_28
    :goto_28
    return-void
.end method

.method public final unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v0, "unregisterPendingIntent"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public final unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 14

    if-eqz p1, :cond_9f

    if-nez p2, :cond_6

    goto/16 :goto_9f

    :cond_6
    if-nez p3, :cond_1c

    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_9f

    :cond_1c
    const-string/jumbo v0, "unregisterPendingIntentForCustomEventAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unregister custom event = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_54
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_5e
    :goto_5e
    if-ge v4, v2, :cond_9b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v6, :cond_5e

    invoke-virtual {v6, p2, p4}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_95

    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5e

    :catchall_93
    move-exception p0

    goto :goto_9d

    :cond_95
    iget-object v7, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    :cond_9b
    monitor-exit v1

    return-void

    :goto_9d
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_54 .. :try_end_9e} :catchall_93

    throw p0

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v0, "unregisterPendingIntentForIntentAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public final unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    if-nez p3, :cond_7

    goto :goto_63

    :cond_7
    const-string/jumbo v0, "unregisterPendingIntentForUriAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unregister uri = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemDeviceInfoManagerService"

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3b
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v2, :cond_5f

    invoke-virtual {v2, p2, p3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object p2, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5f

    iget-object p2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    goto :goto_5f

    :catchall_5d
    move-exception p0

    goto :goto_61

    :cond_5f
    :goto_5f
    monitor-exit v0

    return-void

    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3b .. :try_end_62} :catchall_5d

    throw p0

    :cond_63
    :goto_63
    return-void
.end method

.method public final unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 10

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-lez v0, :cond_a3

    if-eqz p2, :cond_a3

    if-nez p3, :cond_14

    goto/16 :goto_a3

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1b
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-ge v2, v3, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unregister intent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", package = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SemDeviceInfoManagerService"

    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SemDeviceInfoManagerService"

    invoke-static {v2, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6b
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v1, v0, :cond_a3

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_78
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-nez v4, :cond_8a

    monitor-exit v2

    goto :goto_9e

    :catchall_88
    move-exception p0

    goto :goto_a1

    :cond_8a
    invoke-virtual {v4, p2, p3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9d

    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    :cond_9d
    monitor-exit v2

    :goto_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    :goto_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_78 .. :try_end_a2} :catchall_88

    throw p0

    :cond_a3
    :goto_a3
    return-void
.end method

.method public final unregisterReceiver(ILjava/lang/String;)V
    .registers 6

    if-ltz p1, :cond_2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2c

    :cond_9
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_28

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_26

    throw p0

    :cond_2c
    :goto_2c
    return-void
.end method
