.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    new-array v4, v1, [Ljava/io/Closeable;

    aput-object v3, v4, v0

    aput-object p0, v4, v2

    sget-object p0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object p0, v4, v0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    new-array v4, v1, [Ljava/io/Closeable;

    aput-object v3, v4, v0

    aput-object p0, v4, v2

    sget-object p0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object p0, v4, v0

    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
