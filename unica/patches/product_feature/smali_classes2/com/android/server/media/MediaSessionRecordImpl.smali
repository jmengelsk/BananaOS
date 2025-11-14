.class public abstract Lcom/android/server/media/MediaSessionRecordImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sNextMediaSessionRecordId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mUniqueId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/media/MediaSessionRecordImpl;->sNextMediaSessionRecordId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/media/MediaSessionRecordImpl;->sNextMediaSessionRecordId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    return-void
.end method


# virtual methods
.method public abstract checkPlaybackActiveState(Z)Z
.end method

.method public abstract close()V
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/server/media/MediaSessionRecordImpl;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/media/MediaSessionRecordImpl;

    iget p0, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    iget p1, p1, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSessionPolicies()I
.end method

.method public abstract getUid()I
.end method

.method public abstract getUserId()I
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/media/MediaSessionRecordImpl;->mUniqueId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public abstract isActive()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isLinkedToNotification(Landroid/app/Notification;)Z
.end method

.method public abstract isSystemPriority()Z
.end method
