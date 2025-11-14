.class public abstract Lcom/samsung/android/camera/scpm/ScpmList;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mConfigurationName:Ljava/lang/String;

.field public mItemNames:[Ljava/lang/String;

.field public mNeedToSyncNative:Z

.field public final mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

.field public mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mNeedToSyncNative:Z

    return-void
.end method


# virtual methods
.method public final setPackageList([[Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lcom/samsung/android/camera/scpm/PolicyListVO;

    aget-object v6, v3, v1

    const/4 v7, 0x1

    aget-object v7, v3, v7

    const/4 v8, 0x2

    aget-object v3, v3, v8

    invoke-direct {v5, v6, v7, v3}, Lcom/samsung/android/camera/scpm/PolicyListVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    return-void
.end method
