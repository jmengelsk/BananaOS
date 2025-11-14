.class public final Lcom/android/server/statusbar/TileRequestTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/TileRequestTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/TileRequestTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string/jumbo p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_1c

    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    const-string/jumbo v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object v1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v1, v1, Lcom/android/server/statusbar/TileRequestTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v2, v2, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v2, v2, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v3, v3, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v3

    move v4, v0

    :goto_46
    if-ge v4, v2, :cond_69

    iget-object v5, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v5, v5, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    iget-object v6, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v6, v6, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :catchall_64
    move-exception p0

    goto :goto_89

    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_69
    iget-object p1, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object p1, p1, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_71
    if-ge v0, p1, :cond_87

    iget-object v2, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v2, v2, Lcom/android/server/statusbar/TileRequestTracker;->mComponentsToRemove:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/statusbar/TileRequestTracker$1;->this$0:Lcom/android/server/statusbar/TileRequestTracker;

    iget-object v3, v3, Lcom/android/server/statusbar/TileRequestTracker;->mTrackingMap:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_87
    monitor-exit v1

    return-void

    :goto_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_2e .. :try_end_8a} :catchall_64

    throw p0
.end method
