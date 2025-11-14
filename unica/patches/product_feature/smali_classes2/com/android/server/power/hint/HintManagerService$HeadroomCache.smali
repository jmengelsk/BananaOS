.class public final Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mItemExpDurationMillis:J

.field public final mItemList:Ljava/util/List;

.field public final mKeyItemMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemExpDurationMillis:J

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemExpDurationMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mExpTime:J

    iput-object p1, v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mKey:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mValue:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    check-cast p2, Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    iget-wide v0, v0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mExpTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mItemList:Ljava/util/List;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mKey:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;->mKeyItemMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$HeadroomCache$HeadroomCacheItem;->mValue:Ljava/lang/Object;

    return-object p0
.end method
