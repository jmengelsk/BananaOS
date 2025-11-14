.class public final synthetic Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wearable/WearableSensingSecureChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/server/wearable/WearableSensingSecureChannel$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wearable/WearableSensingSecureChannel;

    const-string/jumbo v0, "WearableSensingSecureChannel"

    iget-object v1, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mAssociationId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mLocalIn:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v3, "Sending message to wearable"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wearable/WearableSensingSecureChannel;->mCompanionDeviceManager:Landroid/companion/CompanionDeviceManager;

    const v5, 0x43847987

    invoke-virtual {v3, v5, v4, v1}, Landroid/companion/CompanionDeviceManager;->sendMessage(I[B[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Reached EOF when reading from remote stream. Reporting this as an error."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void

    :catch_0
    const-string v1, "IOException while reading from remote stream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingSecureChannel;->onError()V

    return-void
.end method
