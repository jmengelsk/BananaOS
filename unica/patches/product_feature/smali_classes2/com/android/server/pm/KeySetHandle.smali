.class public final Lcom/android/server/pm/KeySetHandle;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mId:J

.field public mRefCount:I


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method
