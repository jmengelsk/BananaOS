.class public final Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAlignment:I

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mRecomputeConfiguration:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;->mRecomputeConfiguration:Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy$$ExternalSyntheticLambda0;

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;->mAlignment:I

    iput-object p1, p0, Lcom/android/server/wm/CoverLauncherAppCompatReachabilityPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method
