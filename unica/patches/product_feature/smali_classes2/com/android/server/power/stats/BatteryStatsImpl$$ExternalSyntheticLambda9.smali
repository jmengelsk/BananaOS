.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    check-cast p1, Lcom/android/internal/os/PowerStats;

    invoke-static {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$4oR0MyxxkPH0JSQXqVxAZgbHyhc(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/internal/os/PowerStats;)V

    return-void
.end method
