.class public final Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppCategoryCallback:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

.field public mEnabled:Z

.field public mLock:Ljava/lang/Object;

.field public mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;


# direct methods
.method public static -$$Nest$mmakeChangedAppList(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;)Ljava/util/ArrayList;
    .locals 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Ljava/util/ArrayList;)V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p2, p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public clearItemsLocked()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final getPackageCategory(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadItemsInternalLocked(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->parseAppCategoryList()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    return-void
.end method
