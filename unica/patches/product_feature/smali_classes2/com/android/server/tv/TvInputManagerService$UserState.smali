.class public final Lcom/android/server/tv/TvInputManagerService$UserState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final callbackPidUidMap:Ljava/util/Map;

.field public final clientStateMap:Ljava/util/Map;

.field public final contentRatingSystemList:Ljava/util/List;

.field public inputMap:Ljava/util/Map;

.field public final mAppTagMap:Ljava/util/Map;

.field public final mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

.field public mNextAppTag:I

.field public mainSessionToken:Landroid/os/IBinder;

.field public final packageSet:Ljava/util/Set;

.field public final persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

.field public final serviceStateMap:Ljava/util/Map;

.field public final sessionStateMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    invoke-direct {v0, p1}, Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Lcom/android/server/tv/TvInputManagerService$TvInputManagerCallbackList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->callbackPidUidMap:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mAppTagMap:Ljava/util/Map;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->mNextAppTag:I

    new-instance p1, Lcom/android/server/tv/PersistentDataStore;

    invoke-direct {p1, p2, p3}, Lcom/android/server/tv/PersistentDataStore;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;

    return-void
.end method
