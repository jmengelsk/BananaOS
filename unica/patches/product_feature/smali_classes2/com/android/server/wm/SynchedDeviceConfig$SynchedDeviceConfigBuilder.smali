.class public final Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeviceConfigEntries:Ljava/util/Map;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    const-string/jumbo v0, "window_manager"

    iput-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mNamespace:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final addDeviceConfigEntry(Ljava/lang/String;ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    new-instance v0, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;-><init>(Ljava/lang/String;ZZ)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    const-string p2, "Key already present: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
