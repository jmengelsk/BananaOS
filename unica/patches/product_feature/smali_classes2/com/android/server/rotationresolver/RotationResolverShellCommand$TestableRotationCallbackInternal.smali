.class public final Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public mLastCallbackResultCode:I


# virtual methods
.method public final onFailure(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return-void
.end method

.method public final onSuccess(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/rotationresolver/RotationResolverShellCommand$TestableRotationCallbackInternal;->mLastCallbackResultCode:I

    return-void
.end method
