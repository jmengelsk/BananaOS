.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;Landroid/os/RemoteCallback;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    const-string/jumbo v0, "Unable to close the local parcelFileDescriptor."

    const-string/jumbo v1, "RemoteWearableSensingService"

    iget v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v4, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, v2, v3, p0}, Landroid/service/wearable/IWearableSensingService;->provideSecureConnection(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wearable/WearableSensingManagerPerUserService$4;

    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda0;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v4, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, v2, v3, p0}, Landroid/service/wearable/IWearableSensingService;->provideDataStream(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
