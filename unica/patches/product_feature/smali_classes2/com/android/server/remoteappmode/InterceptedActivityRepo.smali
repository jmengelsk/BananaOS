.class public final Lcom/android/server/remoteappmode/InterceptedActivityRepo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;-><init>(Lcom/android/server/remoteappmode/InterceptedActivityRepo;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method
