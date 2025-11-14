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
    .locals 1

    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

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
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "monitor_call_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const-string/jumbo v1, "monitor_activity_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo p1, "component_list"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v2, p1, :cond_2

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

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "monitor_package_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "package_list"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_2

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

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getCustomEventMessageId(Ljava/lang/String;Z)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "monitor_call_state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const-string/jumbo p1, "monitor_activity_state"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :cond_4
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public clearEventListenersAsUser(I)V
    .locals 7

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

    :try_start_0
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

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, p1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v4, v1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final clearPendingIntentAsUser(Ljava/lang/String;I)V
    .locals 2

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
    .locals 12

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
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

    :cond_0
    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_2

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

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    if-eqz v8, :cond_0

    iget-object v8, v10, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v6

    :cond_3
    :goto_2
    if-ge v5, v2, :cond_5

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

    if-eqz v10, :cond_4

    move v10, v8

    goto :goto_3

    :cond_4
    move v10, v6

    :goto_3
    if-eqz v10, :cond_3

    iget-object v9, v9, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    move p1, v6

    :cond_6
    :goto_4
    if-ge p1, p0, :cond_8

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

    if-eqz v5, :cond_7

    move v5, v8

    goto :goto_5

    :cond_7
    move v5, v6

    :goto_5
    if-eqz v5, :cond_6

    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "Listener containers(Users: "

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
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

    :goto_0
    if-ge v0, v2, :cond_9

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

    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

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

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

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

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_5

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

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

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

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_7

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

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

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

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    const-string/jumbo p0, "SemDeviceInfoManagerService"

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceCallingPermission(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
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
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    return-object p0
.end method

.method public final getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    invoke-direct {v1, p1}, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .locals 6

    const-string/jumbo v0, "getNumPendingIntentAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    move v2, v1

    :cond_2
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v3, v1

    :cond_3
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    move v3, v1

    :cond_5
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_2

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_b

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    const/4 p0, 0x3

    if-eq p1, p0, :cond_8

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

    :cond_8
    return v2

    :cond_9
    return v3

    :cond_a
    return v1

    :cond_b
    add-int/2addr v1, v3

    add-int/2addr v1, v2

    return v1

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;
    .locals 2

    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    invoke-direct {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;-><init>()V

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mSystemCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSystemListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 0

    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    return-void
.end method

.method public final onUserStarting(I)V
    .locals 7

    iget-boolean p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mIsWatchingPackageRemoved:Z

    if-nez p1, :cond_0

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

    :cond_0
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 0

    return-void
.end method

.method public final onUserStopping(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearEventListenersAsUser(I)V

    return-void
.end method

.method public final onUserSwitching(II)V
    .locals 0

    return-void
.end method

.method public final onUserUnlocked(I)V
    .locals 0

    return-void
.end method

.method public final onUserUnlocking(I)V
    .locals 0

    return-void
.end method

.method public final registerContentObserver(ZLandroid/net/Uri;I)V
    .locals 10

    const-string v0, "Creating new UnionContentObserver for the uri:"

    if-ltz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

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

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .locals 1
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
    .locals 9

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
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

    :try_start_0
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_0
    if-ge v4, v2, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    iget-object v5, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_2

    new-instance v6, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {v6, p2, v3, v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {v5, p4, v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    new-instance v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    new-instance v8, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {v8, p2, v3, v7}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {v6, p4, v8}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    iget-object v7, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_3
    return-void
.end method

.method public final registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 8

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
    .locals 0

    const-string/jumbo p1, "registerPendingIntentForIntentForAllUsers"

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    const-string/jumbo p0, "SemDeviceInfoManagerService"

    const-string p1, "Do not support observing Intent for all users"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 6

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
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

    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object p0, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    invoke-direct {p1, p2, v4, v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    invoke-virtual {p0, p3, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
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

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .locals 6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-lez v0, :cond_5

    if-eqz p2, :cond_5

    if-nez p5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p3, :cond_1

    and-int/lit8 v0, p3, 0x3

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

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

    goto :goto_0

    :cond_2
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

    if-nez p3, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p4, v3

    :goto_1
    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0, p6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p3

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p4

    iget-object v3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    invoke-virtual {v3, p5, v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    iget-object p3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p6, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerReceiver(ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    iget-object p3, p3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-virtual {p3, p5, v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    :goto_3
    monitor-exit p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_5
    return-void
.end method

.method public final registerReceiver(ILjava/lang/String;)V
    .locals 5

    const-string v0, "Adding new UnionBroadcastReceiver for the action: "

    if-ltz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

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

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :goto_1
    if-ge v0, v7, :cond_1

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
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
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_2
    move v0, v9

    goto :goto_1

    :cond_1
    move-object/from16 v8, p3

    goto :goto_0

    :cond_2
    monitor-exit v4

    :goto_3
    return-void

    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :goto_1
    if-ge v0, v7, :cond_1

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
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
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_2
    move v0, v9

    goto :goto_1

    :cond_1
    move/from16 v8, p3

    goto :goto_0

    :cond_2
    monitor-exit v4

    :goto_3
    return-void

    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

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

    :goto_1
    if-ge v0, v7, :cond_1

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
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
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_2
    move v0, v9

    goto :goto_1

    :cond_1
    move-object/from16 v8, p3

    goto :goto_0

    :cond_2
    monitor-exit v4

    :goto_3
    return-void

    :goto_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

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

    :goto_1
    if-ge v0, v6, :cond_5

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

    if-eqz p5, :cond_1

    const-string/jumbo v0, "notify_for_descendants"

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_1
    move v0, v7

    :goto_2
    if-nez v0, :cond_3

    if-nez p5, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v10, p4

    goto :goto_6

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    :try_start_1
    const-string/jumbo v0, "SemDeviceInfoManagerService"

    const-string/jumbo v11, "Notifying descendants changes."

    invoke-static {v0, v11}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_0
    move-exception v0

    move/from16 v10, p4

    goto :goto_5

    :cond_4
    :goto_4
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
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v10, p4

    :try_start_2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " by uri change"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "SemDeviceInfoManagerService"

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "SemDeviceInfoManagerService"

    invoke-static {v11, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_5
    :try_start_3
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_6
    move v0, v9

    goto :goto_1

    :cond_5
    move-object/from16 v8, p3

    move/from16 v10, p4

    goto/16 :goto_0

    :cond_6
    monitor-exit v3

    :goto_7
    return-void

    :goto_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v4, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

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

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    iget-object v6, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_b

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    check-cast v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    iget v0, v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mFlag:I

    const/4 v11, 0x1

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v12, v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    if-ne v0, v11, :cond_5

    if-eqz v12, :cond_4

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_4
    :goto_2
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

    :goto_3
    move v11, v0

    goto :goto_6

    :cond_5
    const/4 v14, 0x2

    if-ne v0, v14, :cond_9

    if-eqz v12, :cond_9

    if-nez v13, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_9

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v0, v8, v13}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_8
    const-string/jumbo v0, "SemDeviceInfoManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " has no data. It doesn\'t match with the flag."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/samsung/android/sepunion/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    const/4 v11, 0x0

    :goto_6
    if-nez v11, :cond_a

    :goto_7
    move v0, v10

    goto/16 :goto_1

    :cond_a
    iget-object v0, v9, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v8, p3

    :try_start_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " by broadcast"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "SemDeviceInfoManagerService"

    invoke-static {v9, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "SemDeviceInfoManagerService"

    invoke-static {v9, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v8, p3

    :goto_8
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_b
    move/from16 v8, p3

    goto/16 :goto_0

    :cond_c
    monitor-exit v4

    :goto_9
    return-void

    :goto_a
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final unregisterContentObserver(ILandroid/net/Uri;)V
    .locals 3

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/ContentObserver;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "unregisterPendingIntent"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public final unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 8

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v0, "monitor_activity_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
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

    :try_start_0
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v6, :cond_2

    invoke-virtual {v6, p2, p4}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    iget-object v7, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public final unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "unregisterPendingIntentForIntentAsUser"

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforceCallingPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public final unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
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

    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p2, p3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object p2, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterContentObserver(ILandroid/net/Uri;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-ge v2, v3, :cond_1

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

    goto :goto_0

    :cond_1
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

    :goto_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-nez v4, :cond_2

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {v4, p2, p3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Landroid/app/PendingIntent;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p4, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterReceiver(ILjava/lang/String;)V

    :cond_3
    monitor-exit v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_4
    return-void
.end method

.method public final unregisterReceiver(ILjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getSystemCallbacks(I)Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$SystemCallbacks;->mBroadcastReceivers:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    new-instance v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method
