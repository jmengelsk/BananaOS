.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;
.super Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

.field public final synthetic val$future:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public final onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$future:Lcom/android/internal/infra/AndroidFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;->val$featureDetailsCallback:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;->onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V

    return-void
.end method
