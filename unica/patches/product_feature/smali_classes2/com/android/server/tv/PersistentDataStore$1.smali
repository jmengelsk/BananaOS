.class public final Lcom/android/server/tv/PersistentDataStore$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/PersistentDataStore;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/PersistentDataStore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore$1;->this$0:Lcom/android/server/tv/PersistentDataStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    iget-object v0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_25

    :try_start_b
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/PersistentDataStore;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1e

    :try_start_15
    iget-object v1, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {p0}, Lcom/android/server/tv/PersistentDataStore;->broadcastChangesIfNeeded()V

    return-void

    :catchall_1e
    move-exception v1

    iget-object p0, p0, Lcom/android/server/tv/PersistentDataStore;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_25} :catch_25

    :catch_25
    move-exception p0

    const-string/jumbo v0, "TvInputManagerService"

    const-string v1, "Failed to save tv input manager persistent store data."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
