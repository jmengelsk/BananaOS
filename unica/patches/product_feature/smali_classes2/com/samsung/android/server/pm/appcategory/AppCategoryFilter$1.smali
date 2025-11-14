.class public final Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    return-void
.end method


# virtual methods
.method public final onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .locals 0

    return-void
.end method

.method public final onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;)V
    .locals 2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    iget-object v0, v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    iget-object v1, v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    iget-object v1, p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    invoke-static {p2, v1, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->-$$Nest$mmakeChangedAppList(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;->this$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "AppCategoryHintHelper"

    const-string p1, "AppCategoryHintHelper is not initialized, updateScpmAppCategory is not required."

    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
