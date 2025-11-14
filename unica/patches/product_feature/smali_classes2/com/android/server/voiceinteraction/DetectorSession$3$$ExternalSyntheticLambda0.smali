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
    .registers 4

    iput p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v3, :pswitch_data_34

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    new-array v4, v1, [Ljava/io/Closeable;

    aput-object v3, v4, v0

    aput-object p0, v4, v2

    sget-object p0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    :goto_14
    if-ge v0, v1, :cond_1d

    aget-object p0, v4, v0

    :try_start_18
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    add-int/2addr v0, v2

    goto :goto_14

    :cond_1d
    return-void

    :pswitch_1e  #0x0
    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/DetectorSession$3$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    new-array v4, v1, [Ljava/io/Closeable;

    aput-object v3, v4, v0

    aput-object p0, v4, v2

    sget-object p0, Lcom/android/server/voiceinteraction/DetectorSession;->MAX_UPDATE_TIMEOUT_DURATION:Ljava/time/Duration;

    :goto_2a
    if-ge v0, v1, :cond_33

    aget-object p0, v4, v0

    :try_start_2e
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    add-int/2addr v0, v2

    goto :goto_2a

    :cond_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1e  #00000000
    .end packed-switch
.end method
