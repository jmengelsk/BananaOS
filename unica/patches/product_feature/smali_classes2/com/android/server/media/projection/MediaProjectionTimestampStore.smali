.class public Lcom/android/server/media/projection/MediaProjectionTimestampStore;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mInstantSource:Ljava/time/InstantSource;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTimestampLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    return-void
.end method
