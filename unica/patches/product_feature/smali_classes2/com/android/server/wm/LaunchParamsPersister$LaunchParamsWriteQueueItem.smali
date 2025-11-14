.class public final Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .locals 2

    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    iget v0, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final process()V
    .locals 6

    const-string/jumbo v0, "launch_params"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget v3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v5, "LaunchParamsPersister"

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "Failed to create folder for "

    invoke-static {v3, p0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to write param file for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    return-void
.end method

.method public final updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    return-void
.end method
