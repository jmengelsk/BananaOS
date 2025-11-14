.class public final synthetic Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;->f$0:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda0;->f$0:F

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;

    iget-object p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$StateWriteWrapper;->mState:Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    iput p0, p1, Lcom/android/server/pm/PackageSetting;->mLoadingProgress:F

    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    :cond_0
    return-void
.end method
