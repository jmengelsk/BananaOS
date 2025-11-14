.class public final Lcom/android/server/usage/UsageStatsHandlerThread;
.super Lcom/android/server/ServiceThread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sLock:Ljava/lang/Object;

    return-void
.end method
