.class public final Lcom/android/server/pm/pu/PackageSummaryLogger;
.super Lcom/android/server/pm/pu/AbstractLogger;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# virtual methods
.method public final collectDataFrom(Lcom/android/server/pm/pu/ProfileUtilizationService;)V
    .registers 3

    const-string/jumbo v0, "pu_session_id"

    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mSessionId:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/pu/AbstractLogger;->appendDimension(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
