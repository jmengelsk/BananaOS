.class public final synthetic Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UserUsageStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UserUsageStatsService;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/usage/UserUsageStatsService;

    iput-wide p2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/usage/UserUsageStatsService;

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$1:J

    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;->f$2:J

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;-><init>(JJLjava/util/ArrayList;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
