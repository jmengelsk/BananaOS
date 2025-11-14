.class public final synthetic Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/pu/HotAppsWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/pu/HotAppsWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/pu/HotAppsWrapper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/pu/HotAppsWrapper;

    check-cast p1, Lcom/android/server/pm/pu/App;

    new-instance v0, Lcom/android/server/pm/pu/PackageMetricsLogger;

    iget-object p0, p0, Lcom/android/server/pm/pu/HotAppsWrapper;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object v1, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    const-string v2, "005"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/pu/AbstractLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pu/PackageMetricsLogger;->collectDataFrom(Lcom/android/server/pm/pu/ProfileUtilizationService;)V

    iget-object p0, p1, Lcom/android/server/pm/pu/App;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "pkg_name"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lcom/android/server/pm/pu/App;->mResultingPos:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "pkg_prefix"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lcom/android/server/pm/pu/App;->mF1Score:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "pkg_f1_pref"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lcom/android/server/pm/pu/App;->mPrecision:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "pkg_prec_pref"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p1, Lcom/android/server/pm/pu/App;->mRecall:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v1, "pkg_rec_pref"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p1, Lcom/android/server/pm/pu/App;->mOptimizedTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v1, "pkg_ts_opt"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide p0, p1, Lcom/android/server/pm/pu/App;->mLaunchTimeMs:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo p1, "pkg_ts_start"

    invoke-virtual {v0, p1, p0}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/pm/pu/AbstractLogger;->sendEvent()V

    return-void
.end method
