.class public final Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;

.field public mPref:Landroid/content/SharedPreferences;

.field public final mSharedPrefKeyTypeMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mSharedPrefKeyTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->mContext:Landroid/content/Context;

    const-string/jumbo p0, "mw_immersive_mode"

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
