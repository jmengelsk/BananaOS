.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 10

    iget v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_88

    check-cast p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const v0, 0x10409a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13  #0x0
    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PackageInstaller"

    const-string/jumbo v1, "writeSessions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_28
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/server/pm/PackageInstallerSession;

    const/4 v3, 0x0

    move v4, v3

    :goto_32
    if-ge v4, v1, :cond_43

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :catchall_41
    move-exception p0

    goto :goto_85

    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_41

    const/4 v0, 0x0

    :try_start_45
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_79

    :try_start_4b
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "sessions"

    invoke-interface {v5, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v6, v3

    :goto_5b
    if-ge v6, v1, :cond_69

    aget-object v7, v2, v6

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/pm/PackageInstallerSession;->write(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/io/File;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :catch_67
    move-object v0, v4

    goto :goto_79

    :cond_69
    const-string/jumbo v1, "sessions"

    invoke-interface {v5, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_77} :catch_67

    const/4 v3, 0x1

    goto :goto_80

    :catch_79
    :goto_79
    if-eqz v0, :cond_80

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_80
    :goto_80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_85
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_41

    throw p0

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_13  #00000000
    .end packed-switch
.end method
