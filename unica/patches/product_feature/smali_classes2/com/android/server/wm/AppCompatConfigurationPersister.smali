.class public Lcom/android/server/wm/AppCompatConfigurationPersister;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mCompletionCallback:Ljava/util/function/Consumer;

.field public final mConfigurationFile:Landroid/util/AtomicFile;

.field public final mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

.field public volatile mLetterboxPositionForBookModeReachability:I

.field public volatile mLetterboxPositionForHorizontalReachability:I

.field public volatile mLetterboxPositionForTabletopModeReachability:I

.field public volatile mLetterboxPositionForVerticalReachability:I

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/File;",
            "Lcom/android/server/wm/PersisterQueue;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p5, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    const-string p1, "Error reading from AppCompatConfigurationPersister "

    const-string/jumbo p3, "WindowManager"

    invoke-virtual {p2}, Landroid/util/AtomicFile;->exists()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    return-void

    :cond_0
    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/wm/AppCompatConfigurationPersister;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object p2

    iget p5, p2, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget p5, p2, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget p5, p2, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget p2, p2, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_2
    const-string p5, "Error reading from AppCompatConfigurationPersister. Using default values!"

    invoke-static {p3, p5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    :try_start_3
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz p4, :cond_2

    :try_start_4
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p4

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    invoke-static {p3, p1, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    throw p2
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p0
.end method


# virtual methods
.method public final getLetterboxPositionForHorizontalReachability(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    return p0
.end method

.method public final getLetterboxPositionForVerticalReachability(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    return p0
.end method

.method public final setLetterboxPositionForHorizontalReachability(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    return-void

    :cond_0
    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    :cond_1
    return-void
.end method

.method public final setLetterboxPositionForVerticalReachability(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    return-void

    :cond_0
    iget p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    if-eq p2, p1, :cond_1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    :cond_1
    return-void
.end method

.method public final updateConfiguration()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    iget v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget v6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    iget-object v7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;-><init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public useDefaultValue()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return-void
.end method
