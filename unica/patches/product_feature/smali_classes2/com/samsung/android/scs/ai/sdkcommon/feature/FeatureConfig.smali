.class public final Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final Companion:Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

.field public static final JSON_KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final JSON_KEY_FEATURES:Ljava/lang/String; = "features"


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->Companion:Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "appVersion"

    invoke-static {v0, p1}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "features"

    invoke-static {v0, p2}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->copy(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;"
        }
    .end annotation

    const-string/jumbo p0, "appVersion"

    invoke-static {p0, p1}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p0, "features"

    invoke-static {p0, p2}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_3

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    iget-object p1, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    if-nez p0, :cond_6

    if-nez p1, :cond_5

    move p0, v0

    goto :goto_1

    :cond_5
    move p0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    if-nez p0, :cond_7

    :goto_2
    return v2

    :cond_7
    :goto_3
    return v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final getFeatures()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeatureConfig(appVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
