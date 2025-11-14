.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    return-void
.end method


# virtual methods
.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "android:media_routing_control"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    :cond_a
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_f
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$2;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {p0, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$mrevokeManagerRecordAccessIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl;Ljava/lang/String;I)V

    monitor-exit p1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0
.end method
