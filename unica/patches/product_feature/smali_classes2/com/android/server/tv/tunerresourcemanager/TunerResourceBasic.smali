.class public abstract Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mHandle:J

.field public mIsInUse:Z

.field public mOwnerClientId:I


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    iget-wide v0, p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic$Builder;->mHandle:J

    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mHandle:J

    return-void
.end method


# virtual methods
.method public final setOwner(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mIsInUse:Z

    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->mOwnerClientId:I

    return-void
.end method
