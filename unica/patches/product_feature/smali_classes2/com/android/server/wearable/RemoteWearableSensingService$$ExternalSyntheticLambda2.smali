.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/PersistableBundle;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/os/PersistableBundle;

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/os/PersistableBundle;

    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v2, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, v0, v1, p0}, Landroid/service/wearable/IWearableSensingService;->provideReadOnlyParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/os/PersistableBundle;Landroid/os/RemoteCallback;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "RemoteWearableSensingService"

    const-string/jumbo v0, "Unable to close the local parcelFileDescriptor."

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$0:Landroid/os/PersistableBundle;

    iget-object v1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/os/SharedMemory;

    iget-object p0, p0, Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    sget v2, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$clinit:I

    invoke-interface {p1, v0, v1, p0}, Landroid/service/wearable/IWearableSensingService;->provideData(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/RemoteCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
