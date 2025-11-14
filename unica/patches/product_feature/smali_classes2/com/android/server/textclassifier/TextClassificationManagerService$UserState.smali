.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public static -$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_b
    if-ge v1, v0, :cond_1e

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v3, v2, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return-object v2

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iput p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move-object v0, v2

    goto :goto_1a

    :cond_13
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v3, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v3, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    :goto_1a
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2c

    :cond_25
    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    :goto_2c
    iput-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v0, v0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string v2, "Default"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string/jumbo v2, "System"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const-string/jumbo v2, "Untrusted"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Ljava/lang/String;)V
    .registers 5

    const-string v0, ": "

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    if-eqz p2, :cond_19

    :try_start_9
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$mdump(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_1b

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_17

    throw p1
.end method

.method public final getAllServiceStatesLocked()Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz v1, :cond_13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-eqz p0, :cond_1a

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-object v0
.end method

.method public final getServiceStateLocked(Z)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    .registers 6

    if-eqz p1, :cond_3

    goto :goto_45

    :cond_3
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v0, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSettings:Landroid/view/textclassifier/TextClassificationConstants;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;-><init>(Landroid/view/textclassifier/TextClassificationConstants;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mSystemServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-nez v1, :cond_42

    iget-object v1, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_45

    :cond_26
    iget-object v1, p1, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    return-object v2

    :cond_31
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    if-nez v1, :cond_3f

    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUserId:I

    invoke-direct {v1, p1, v3, v0, v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    :cond_3f
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object p0

    :cond_42
    if-eqz v2, :cond_45

    return-object v2

    :cond_45
    :goto_45
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mDefaultServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-object p0
.end method

.method public final onTextClassifierServicePackageOverrideChangedLocked()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->getAllServiceStatesLocked()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_b
    :goto_b
    const/4 v3, 0x0

    if-ge v2, v1, :cond_41

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    iget-object v5, v4, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unbinding "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mBoundComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mUserId:I

    const-string/jumbo v7, "TextClassificationManagerService"

    invoke-static {v5, v6, v7}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v5, v5, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;

    invoke-virtual {v5, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {v4, v3, v3}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState$TextClassifierServiceConnection;->init(Landroid/service/textclassifier/ITextClassifierService;Landroid/content/ComponentName;)V

    goto :goto_b

    :cond_41
    iput-object v3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mUntrustedServiceState:Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    return-void
.end method
