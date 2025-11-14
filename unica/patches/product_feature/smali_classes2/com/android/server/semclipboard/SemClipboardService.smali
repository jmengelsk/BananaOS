.class public final Lcom/android/server/semclipboard/SemClipboardService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sService:Landroid/content/IClipboard;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field public final mClipboardEventListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public mEnableFormatId:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mUgm:Landroid/app/IUriGrantsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    const-string/jumbo v0, "SemClipboardService"

    const-string/jumbo v1, "SemClipboardService start"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/util/CompatabilityHelper;->migrationClipboard()V

    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string/jumbo v1, "clipboard"

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "SemUriListClipData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    const-string/jumbo v2, "startDoPDrag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData(Landroid/content/ClipData;)V

    return-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData(Landroid/content/ClipData;)V

    return-object v0

    :cond_3
    const-string/jumbo v2, "text/vnd.android.intent"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setIntent(Landroid/content/Intent;)Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData(Landroid/content/ClipData;)V

    return-object v0

    :cond_4
    const-string/jumbo v2, "text/uri-list"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_5
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setUri(Landroid/net/Uri;)Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData(Landroid/content/ClipData;)V

    return-object v0

    :cond_6
    :goto_0
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v3, v2, :cond_7

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriList(Ljava/util/ArrayList;)Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData(Landroid/content/ClipData;)V

    return-object v0

    :cond_8
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getService()Landroid/content/IClipboard;
    .locals 2

    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v0

    sput-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SemClipboardService"

    const-string/jumbo v1, "Original clipboard service is null!"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    return-object v0
.end method


# virtual methods
.method public final addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final convertSemClipToClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    const/16 v3, 0x10

    if-eq v1, v3, :cond_3

    const/16 p0, 0x20

    if-eq v1, p0, :cond_1

    return-object v0

    :cond_1
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Landroid/content/ClipData;

    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string/jumbo v3, "SemUriListClipData"

    invoke-direct {p1, v3, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    new-instance v0, Landroid/content/ClipData$Item;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_5
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_6
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/semclipboard"

    const-string/jumbo v4, "temp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->insertContentUri(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "SemImageClipData"

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v0

    :cond_a
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getFilter()I
    .locals 0

    iget p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    return p0
.end method

.method public final getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result p0

    invoke-interface {v0, p1, v1, p2, p0}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/ClipData;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/semclipboard/SemClipboardService;->convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getPrimarySemClip, Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemClipboardService"

    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final grantUriPermission(ILandroid/net/Uri;)V
    .locals 10

    const-string/jumbo v3, "com.samsung.android.honeyboard"

    if-eqz p2, :cond_1

    const-string/jumbo v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p2, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hasPrimaryClip(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result p0

    invoke-interface {v0, p1, v1, p2, p0}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "hasPrimaryClip, Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemClipboardService"

    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final pasteClipData(Landroid/content/ClipData;Ljava/lang/String;I)Z
    .locals 2

    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    const-string/jumbo p3, "SemClipboardService"

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p0, "ClipboardDataPasteEvent is null."

    invoke-static {p3, p0}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {p2, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pasteClipData, Exception : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_1
    return v0
.end method

.method public final removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final setPrimaryClip(Landroid/content/ClipData;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string/jumbo v3, "SemClipboardService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "copied from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_f

    invoke-static {v0}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "direct_clip"

    const-string/jumbo v4, "com.microsoft.appmanager"

    const-string/jumbo v5, "android.content.extra.IS_SENSITIVE"

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    const/4 v8, 0x0

    if-gtz v6, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "caller_app_uid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "clip_label"

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_1
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v15, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_2

    invoke-virtual {v12, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v15, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v12, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v12, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v8

    :goto_1
    invoke-virtual {v10}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ","

    if-ge v4, v5, :cond_4

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v10, v4}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "clip_mimetypes"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    const-string/jumbo v4, "clip_text"

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "clip_html"

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriPermission(ILandroid/net/Uri;)V

    :cond_7
    const-string/jumbo v0, "clip_uri"

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "startDoPDrag"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-nez v0, :cond_8

    if-le v6, v3, :cond_b

    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v8

    :goto_4
    if-ge v4, v6, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_9
    :goto_5
    invoke-virtual {v2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    const-string/jumbo v4, "clip_uri_list"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, v1, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "content://com.samsung.android.honeyboard.provider.RichcontentProvider/clipboard"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :goto_7
    :try_start_3
    const-string/jumbo v4, "SemClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurs in insertContentUri because "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_8
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v2, "direct_clip"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x7

    goto :goto_9

    :cond_c
    move v7, v3

    :goto_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v4, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v0, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_a
    if-ge v8, v0, :cond_e

    :try_start_6
    iget-object v5, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v8}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    iget-object v6, v1, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    iget v9, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v5, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    const/16 v10, 0x1d

    invoke-virtual {v6, v10, v9, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v6, 0x0

    :try_start_7
    invoke-interface {v5, v7, v6}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_b

    :catch_2
    :cond_d
    const/4 v6, 0x0

    goto :goto_c

    :goto_b
    :try_start_8
    iget-object v1, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_3
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_e
    iget-object v0, v1, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_f

    :goto_d
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :goto_e
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_f
    :goto_f
    return-void
.end method

.method public final setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V
    .locals 8

    const-string/jumbo v1, "SemClipboardService"

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/util/SemClipboardPolicy;->getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p2, p3}, Landroid/sec/clipboard/util/SemClipboardPolicy;->canAccessSemClipboard(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setPrimarySemClip failed : isNotSemApp"

    invoke-static {v1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertSemClipToClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;

    move-result-object v3

    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v2

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v7

    move-object v4, p2

    move v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setPrimarySemClip, Exception : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 8

    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    iget v6, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v4, v4, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    const/16 v7, 0x1d

    invoke-virtual {v5, v7, v6, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onUpdateFilter(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method
