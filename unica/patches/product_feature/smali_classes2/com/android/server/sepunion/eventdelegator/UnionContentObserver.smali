.class public Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->$r8$clinit:I

    const-string/jumbo v0, "SemDeviceInfoManagerService"

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UnionContentObserver onChange u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_3f

    const/4 p3, 0x0

    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p3, v1, :cond_42

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v1, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->reportUriChanged(ZLandroid/net/Uri;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_25

    :catchall_3d
    move-exception p0

    goto :goto_44

    :cond_3f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->reportUriChanged(ZLandroid/net/Uri;I)V

    :cond_42
    monitor-exit v0

    return-void

    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_3d

    throw p0
.end method

.method public final reportUriChanged(ZLandroid/net/Uri;I)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Uri matches exactly. Reporting changes..."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_10

    :cond_41
    move-object v3, v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_10

    :cond_60
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    const/4 v6, 0x1

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_10

    :cond_76
    return-void
.end method
