.class public final synthetic Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingManagerPerUserService$4$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    check-cast p2, Ljava/lang/Throwable;

    const-string/jumbo v1, "WearableSensingManagerPerUserService"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Error when reading file "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/server/wearable/WearableSensingManagerPerUserService;->isReadOnly(Landroid/os/ParcelFileDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_2
    const-string/jumbo p1, "Received writable ParcelFileDescriptor from app process. To prevent arbitrary data egress, sending null to WearableSensingService instead."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
