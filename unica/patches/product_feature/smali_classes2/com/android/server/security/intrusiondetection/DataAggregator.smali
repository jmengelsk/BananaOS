.class public final Lcom/android/server/security/intrusiondetection/DataAggregator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataSources:Ljava/util/ArrayList;

.field public mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public final mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

.field public final mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mStoredEvents:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIsLoggingInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mStoredEvents:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mIntrusionDetectionService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mDataSources:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public setHandler(Landroid/os/Looper;Lcom/android/server/ServiceThread;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandlerThread:Lcom/android/server/ServiceThread;

    new-instance p2, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    invoke-direct {p2, p1, p0}, Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/security/intrusiondetection/DataAggregator;)V

    iput-object p2, p0, Lcom/android/server/security/intrusiondetection/DataAggregator;->mHandler:Lcom/android/server/security/intrusiondetection/DataAggregator$EventHandler;

    return-void
.end method
