.class public final Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSystemFeaturesList:Ljava/util/ArrayList;

.field public final mSystemFeaturesRepository:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesRepository:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mSystemFeaturesList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->mContext:Landroid/content/Context;

    return-void
.end method
