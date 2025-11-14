.class public abstract Lcom/samsung/android/server/util/CompatChangeableAppsService$LazyHolder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sService:Lcom/samsung/android/server/util/CompatChangeableAppsService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/server/util/CompatChangeableAppsService;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/util/CompatChangeableAppsService$LazyHolder;->sService:Lcom/samsung/android/server/util/CompatChangeableAppsService;

    return-void
.end method
