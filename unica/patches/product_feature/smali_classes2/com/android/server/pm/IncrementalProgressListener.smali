.class public final Lcom/android/server/pm/IncrementalProgressListener;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final onPackageLoadingProgressChanged(F)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_4c

    :cond_f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    new-instance v3, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;-><init>(F)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x322bcc77  # 1.0E-8f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4c

    iget-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPackageName:Ljava/lang/String;

    new-instance v2, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    iget-object p1, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/incremental/IncrementalManager;->unregisterLoadingProgressCallbacks(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/IncrementalProgressListener;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    :cond_4c
    :goto_4c
    return-void
.end method
