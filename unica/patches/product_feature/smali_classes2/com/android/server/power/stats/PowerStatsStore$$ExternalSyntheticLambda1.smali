.class public final synthetic Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsSpan;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsSpan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/PowerStatsSpan;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/PowerStatsSpan;

    check-cast p1, Ljava/io/FileOutputStream;

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/PowerStatsSpan;->writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
