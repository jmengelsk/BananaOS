.class public final synthetic Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryHistoryDirectory;Ljava/util/List;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryHistoryDirectory;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryHistoryDirectory$$ExternalSyntheticLambda0;->f$2:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ".bh"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v2, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryHistoryDirectory;->mDirectory:Ljava/io/File;

    invoke-direct {v2, v0, v4, v5}, Lcom/android/server/power/stats/BatteryHistoryDirectory$BatteryHistoryFile;-><init>(Ljava/io/File;J)V

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3
.end method
