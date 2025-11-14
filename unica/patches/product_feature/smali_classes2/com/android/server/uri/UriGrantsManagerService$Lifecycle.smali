.class public final Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "uri-grants"

    invoke-direct {p1, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .registers 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_34

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    iget-object p1, p0, Lcom/android/server/uri/UriMetricsHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/StatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatsManager;

    sget-object v0, Lcom/android/server/uri/UriMetricsHelper;->DAILY_PULL_METADATA:Landroid/app/StatsManager$PullAtomMetadata;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/uri/UriMetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/uri/UriMetricsHelper;)V

    const/16 p0, 0x27a4

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_34
    return-void
.end method

.method public final onStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mService:Lcom/android/server/uri/UriGrantsManagerService;

    const-string/jumbo v1, "uri_grants"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v1, Lcom/android/server/uri/UriMetricsHelper;

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/android/server/uri/UriMetricsHelper;-><init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService;)V

    iput-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    new-instance p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
