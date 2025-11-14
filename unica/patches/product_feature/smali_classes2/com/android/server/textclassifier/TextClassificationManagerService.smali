.class public final Lcom/android/server/textclassifier/TextClassificationManagerService;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageMonitor:Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;

.field public final mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

.field public final mSettings:Landroid/view/textclassifier/TextClassificationConstants;

.field public final mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

.field public final mSystemTextClassifierPackage:Ljava/lang/String;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v1}, Landroid/view/textclassifier/TextClassificationConstants;-><init>()V

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettingsListener:Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-direct {p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    new-instance p1, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;

    invoke-direct {p1, p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;)V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mPackageMonitor:Lcom/android/server/textclassifier/TextClassificationManagerService$MyPackageMonitor;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "TextClassificationManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance p2, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const-string/jumbo p2, "context"

    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "defaultTextClassifierPackage"

    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo p2, "systemTextClassifierPackage"

    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const-string/jumbo v0, "Number user states: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    if-lez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    const-string/jumbo v2, "User"

    iget-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Number of active sessions: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 10

    const-string/jumbo v2, "Unable to bind TextClassifierService at "

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getUserId()I

    move-result v3

    :goto_0
    if-nez p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    if-nez p1, :cond_2

    move p1, v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->useDefaultTextClassifier()Z

    move-result p1

    :goto_2
    const/4 v6, 0x0

    if-eqz p2, :cond_5

    if-eqz v4, :cond_5

    :try_start_0
    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {p2, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-eq v7, p2, :cond_4

    const/16 p2, 0x3e8

    if-ne v7, p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v6

    goto :goto_4

    :cond_4
    :goto_3
    move p2, v5

    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid package name. callingPackage="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingUid="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :cond_5
    :goto_5
    const/16 p2, -0x2710

    if-eq v3, p2, :cond_6

    move p2, v5

    goto :goto_6

    :cond_6
    move p2, v6

    :goto_6
    const-string/jumbo v4, "Null userId"

    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-eq p2, v3, :cond_7

    iget-object v4, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid userId. UserId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", CallingUserId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v7, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object p1

    if-nez p1, :cond_8

    const-string/jumbo p0, "TextClassificationManagerService"

    const-string/jumbo p1, "No configured system TextClassifierService"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    :cond_8
    iget-boolean v3, p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mInstalled:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mEnabled:Z

    if-nez v3, :cond_a

    :cond_9
    move-object/from16 v4, p6

    goto/16 :goto_8

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->bindLocked()Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo p0, "TextClassificationManagerService"

    invoke-virtual {v2, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto/16 :goto_9

    :cond_b
    iget-object v2, p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move v5, v6

    :goto_7
    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {p1, p0, p5}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->checkRequestAcceptedLocked(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string/jumbo p0, "TextClassificationManagerService"

    const-string/jumbo p1, "UID %d is not allowed to see the %s request"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p6 .. p6}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    monitor-exit p2

    return-void

    :cond_d
    iget-object p0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p4, p0}, Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception when consume textClassifierService: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TextClassificationManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_e
    iget-object v8, p1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPendingRequests:Lcom/android/server/textclassifier/FixedSizeQueue;

    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    move-object v3, v2

    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v4, p4, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    new-instance v3, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;

    move-object/from16 v4, p6

    invoke-direct {v3, v4}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-interface {v4}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v5, p0

    move-object v6, p1

    move-object v1, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Ljava/lang/String;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda1;Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda11;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;I)V

    invoke-virtual {v8, v0}, Lcom/android/server/textclassifier/FixedSizeQueue;->add(Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;)V

    goto :goto_9

    :goto_8
    invoke-interface {v4}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    :goto_9
    monitor-exit p2

    return-void

    :goto_a
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :goto_b
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid request: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v5, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw p1
.end method

.method public final onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "onClassifyText"

    move-object v1, p0

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public final onConnectedStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 9

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->put(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v3

    new-instance v6, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {v6, p1, p2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassificationSessionId;I)V

    const-string/jumbo v7, "onCreateTextClassificationSession"

    sget-object v8, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .locals 10

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    iget v2, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->userId:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->useDefaultTextClassifier:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    new-instance v4, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    const-string v3, ""

    invoke-direct {v4, v3, v2, v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;-><init>(Ljava/lang/String;IZ)V

    new-instance v7, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    const/4 v0, 0x3

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassificationSessionId;I)V

    const-string/jumbo v8, "onDestroyTextClassificationSession"

    sget-object v9, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "onDetectLanguage"

    move-object v1, p0

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public final onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "onGenerateLinks"

    move-object v1, p0

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public final onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    sget-object v7, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    const/4 v4, 0x1

    const-string/jumbo v6, "onSelectionEvent"

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public final onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "onSuggestConversationActions"

    move-object v1, p0

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public final onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v2

    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v6, "onSuggestSelection"

    move-object v1, p0

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public final onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .locals 8

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v5, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    sget-object v7, Lcom/android/server/textclassifier/TextClassificationManagerService;->NO_OP_CALLBACK:Lcom/android/server/textclassifier/TextClassificationManagerService$1;

    const/4 v4, 0x1

    const-string/jumbo v6, "onTextClassifierEvent"

    const/4 v3, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService;->handleRequest(Landroid/view/textclassifier/SystemTextClassifierMetadata;ZZLcom/android/internal/util/FunctionalUtils$ThrowingConsumer;Ljava/lang/String;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method
