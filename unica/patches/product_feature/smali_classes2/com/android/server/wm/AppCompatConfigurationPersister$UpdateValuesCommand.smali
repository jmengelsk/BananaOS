.class public final Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mBookModeReachability:I

.field public final mFileToUpdate:Landroid/util/AtomicFile;

.field public final mHorizontalReachability:I

.field public final mOnComplete:Ljava/util/function/Consumer;

.field public final mTabletopModeReachability:I

.field public final mVerticalReachability:I


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    iput p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    iput p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final process()V
    .registers 5

    const-string/jumbo v0, "UpdateValuesCommand"

    new-instance v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    invoke-static {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_35
    .catchall {:try_start_1d .. :try_end_2b} :catchall_33

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_4a

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_33
    move-exception v1

    goto :goto_4b

    :catch_35
    move-exception v1

    :try_start_36
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v2, "WindowManager"

    const-string v3, "Error writing to AppCompatConfigurationPersister. Using default values!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_33

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_4a

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4a
    return-void

    :goto_4b
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_52

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_52
    throw v1
.end method
