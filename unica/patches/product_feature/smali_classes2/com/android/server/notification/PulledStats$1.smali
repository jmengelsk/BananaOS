.class public final Lcom/android/server/notification/PulledStats$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/PulledStats;

.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$report:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/PulledStats;[Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/PulledStats$1;->this$0:Lcom/android/server/notification/PulledStats;

    iput-object p2, p0, Lcom/android/server/notification/PulledStats$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/android/server/notification/PulledStats$1;->val$report:I

    const-string/jumbo p1, "NotificationManager pulled metric output"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/notification/PulledStats$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/android/server/notification/PulledStats$1;->this$0:Lcom/android/server/notification/PulledStats;

    iget p0, p0, Lcom/android/server/notification/PulledStats$1;->val$report:I

    invoke-virtual {v2, p0, v1}, Lcom/android/server/notification/PulledStats;->writeToProto(ILandroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "PulledStats"

    const-string v1, "Failure writing pipe"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
