.class public Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mSessionIdLock:Ljava/lang/Object;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getCurrentSessionId()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionSessionIdGenerator;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "media_projection_session_id_key"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
