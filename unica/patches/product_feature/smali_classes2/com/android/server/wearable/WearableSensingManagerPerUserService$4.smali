.class public final Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;
.super Landroid/app/wearable/IWearableSensingCallback$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Landroid/app/wearable/IWearableSensingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;->val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;

    invoke-direct {p0}, Landroid/app/wearable/IWearableSensingCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;->val$callbackFromAppProcess:Landroid/app/wearable/IWearableSensingCallback;

    invoke-interface {p0, p1, p2}, Landroid/app/wearable/IWearableSensingCallback;->openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
