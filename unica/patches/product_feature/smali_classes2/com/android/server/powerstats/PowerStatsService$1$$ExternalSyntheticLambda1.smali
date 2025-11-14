.class public final synthetic Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/powerstats/PowerStatsService$1;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/os/ResultReceiver;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService$1;[ILandroid/os/ResultReceiver;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/powerstats/PowerStatsService$1;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$1:[I

    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$2:Landroid/os/ResultReceiver;

    iput p4, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/powerstats/PowerStatsService$1;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$1:[I

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$2:Landroid/os/ResultReceiver;

    iget p0, p0, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;->f$3:I

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerMonitorReadingsImpl([ILandroid/os/ResultReceiver;I)V

    return-void
.end method
