.class public final synthetic Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryHistoryDirectory;->trim()V

    return-void
.end method
