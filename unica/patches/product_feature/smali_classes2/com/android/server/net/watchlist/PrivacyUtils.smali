.class public abstract Lcom/android/server/net/watchlist/PrivacyUtils;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static createDpEncodedReportMap(Z[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p1, v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/android/server/net/watchlist/PrivacyUtils;->createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;

    move-result-object v5

    :goto_1
    iget-object v6, p3, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestList:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/privacy/DifferentialPrivacyEncoder;->encodeBoolean(Z)[B

    move-result-object v5

    aget-byte v5, v5, v2

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static createInsecureDPEncoderForTest(Ljava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 8

    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    const-string/jumbo v1, "watchlist_encoder:"

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fde04189374bc6aL    # 0.469

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    invoke-static {v0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createInsecureEncoderForTest(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object p0

    return-object p0
.end method

.method public static createSecureDPEncoder([BLjava/lang/String;)Landroid/privacy/DifferentialPrivacyEncoder;
    .locals 8

    new-instance v0, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;

    const-string/jumbo v1, "watchlist_encoder:"

    invoke-static {v1, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fde04189374bc6aL    # 0.469

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    invoke-direct/range {v0 .. v7}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;-><init>(Ljava/lang/String;DDD)V

    invoke-static {v0, p0}, Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;->createEncoder(Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingConfig;[B)Landroid/privacy/internal/longitudinalreporting/LongitudinalReportingEncoder;

    move-result-object p0

    return-object p0
.end method
