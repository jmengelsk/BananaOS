.class public final Lcom/android/server/usage/UsageStatsService$ActivityData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public lastEvent:I

.field public final mTaskRootClass:Ljava/lang/String;

.field public final mTaskRootPackage:Ljava/lang/String;

.field public final mUsageSourcePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mUsageSourcePackage:Ljava/lang/String;

    return-void
.end method
