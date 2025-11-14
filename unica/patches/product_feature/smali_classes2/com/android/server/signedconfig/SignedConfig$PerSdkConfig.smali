.class public final Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final maxSdk:I

.field public final minSdk:I

.field public final values:Ljava/util/Map;


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    iput p2, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->values:Ljava/util/Map;

    return-void
.end method
