.class public final Lcom/android/server/translation/TranslationManagerServiceImpl;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActiveTranslations:Landroid/util/ArrayMap;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mLastActivityTokens:Ljava/lang/ref/WeakReference;

.field public final mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

.field public mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

.field public final mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

.field public mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

.field public final mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "TranslationManagerServiceImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/translation/TranslationManagerService;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    new-instance p1, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    invoke-direct {p1, p0}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked$4()V

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method

.method public static createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p1, :cond_1d

    const-string/jumbo v0, "source_locale"

    invoke-virtual {p1}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo p1, "target_locale"

    invoke-virtual {p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1d
    const-string/jumbo p1, "package_name"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I
    .registers 5

    if-eqz p1, :cond_26

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_11} :catch_12

    return p0

    :catch_12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find packageManager for"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TranslationManagerServiceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 p0, -0x1

    return p0
.end method

.method public static invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V
    .registers 7

    const-string v0, "Failed to invoke UiTranslationStateCallback: "

    const-string/jumbo v1, "TranslationManagerServiceImpl"

    if-ne p0, p1, :cond_10

    :try_start_7
    invoke-interface {p2, p3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_32

    :cond_10
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, p4, :cond_14

    :try_start_2a
    invoke-interface {p2, p3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    if-eqz p1, :cond_23

    iget-object v4, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v5, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    iget-object v6, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    const/4 v3, 0x3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    goto :goto_23

    :catchall_20
    move-exception v0

    move-object p0, v0

    goto :goto_25

    :cond_23
    :goto_23
    monitor-exit v1

    return-void

    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_20

    throw p0
.end method

.method public final dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    const-string v1, "  "

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    if-nez v0, :cond_10

    goto/16 :goto_90

    :cond_10
    :try_start_10
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_3c

    :try_start_15
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    const-string v5, "--dump-dumpable"

    const-string/jumbo v6, "UiTranslationController"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_32

    :try_start_2c
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_3c

    goto :goto_5d

    :catch_30
    move-exception p1

    goto :goto_42

    :catchall_32
    move-exception p1

    :try_start_33
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    :try_start_38
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    const-string p1, "  Got a RemoteException while dumping the activity"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5d

    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "  Failure while dumping the activity: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5d

    :cond_54
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "No requested UiTranslation Activity."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5d
    iget-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_90

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "number waiting finish callback activities: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_90

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "shareableActivityToken: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_77

    :cond_90
    :goto_90
    return-void
.end method

.method public final ensureRemoteServiceLocked()Lcom/android/server/translation/RemoteTranslationService;
    .registers 12

    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    const-string/jumbo v1, "ensureRemoteServiceLocked(): isServiceAvailableForUser="

    iget-object v2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-nez v2, :cond_95

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "TranslationManagerServiceImpl"

    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    if-nez v2, :cond_22

    check-cast v5, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean p0, v5, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_21

    const-string/jumbo p0, "ensureRemoteServiceLocked(): no service component name."

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v3

    :cond_22
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_2a
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.service.translation.TranslationService"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x84

    invoke-virtual {v9, v8, v10, v0}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_4c

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_4c

    const/4 v8, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v8, 0x0

    :goto_4d
    move-object v9, v5

    check-cast v9, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v9, v9, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v9, :cond_66

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_2a .. :try_end_63} :catchall_64

    goto :goto_66

    :catchall_64
    move-exception p0

    goto :goto_91

    :cond_66
    :goto_66
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v8, :cond_83

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ensureRemoteServiceLocked(): "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not available,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_83
    new-instance v1, Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteServiceCallback:Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/server/translation/RemoteTranslationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    goto :goto_95

    :goto_91
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_95
    :goto_95
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    return-object p0
.end method

.method public final invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V
    .registers 9

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p3

    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "Invoking "

    const-string v1, " callbacks for translation state="

    const-string v2, " for app with uid="

    invoke-static {p3, p1, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p4, "TranslationManagerServiceImpl"

    invoke-static {p4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-nez p3, :cond_30

    return-void

    :cond_30
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance p4, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p5, p2, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;ILandroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {p3, p4}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 6

    new-instance v0, Landroid/service/translation/TranslationServiceInfo;

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/server/infra/ServiceNameBaseResolver;->isTemporary(I)Z

    move-result v1

    invoke-direct {v0, v2, p1, v1, v3}, Landroid/service/translation/TranslationServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {v0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mTranslationServiceInfo:Landroid/service/translation/TranslationServiceInfo;

    invoke-virtual {p0}, Landroid/service/translation/TranslationServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final registerUiTranslationStateCallbackLocked(ILandroid/os/IRemoteCallback;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const-string/jumbo v1, "New registered callback for sourceUid="

    const-string v2, " with currently "

    const-string v3, " active translations"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TranslationManagerServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_23

    goto :goto_82

    :cond_23
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    :goto_33
    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_82

    iget-object v4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    iget v5, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    sget-boolean v6, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    iget-object v7, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_64

    const-string/jumbo v6, "Triggering callback for sourceUid="

    const-string v8, " for translated app with uid="

    const-string/jumbo v9, "packageName="

    invoke-static {p1, v5, v6, v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isPaused="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    invoke-static {v2, v6, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_64
    iget-object v6, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v8, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v1, v6, v8, v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {p1, v5, p2, v6, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    iget-boolean v6, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v6, :cond_7f

    iget-object v6, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    iget-object v4, v4, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    const/4 v8, 0x1

    invoke-static {v8, v6, v4, v7}, Lcom/android/server/translation/TranslationManagerServiceImpl;->createResultForCallback(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v5, p2, v4, v0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallback(IILandroid/os/IRemoteCallback;Landroid/os/Bundle;Ljava/util/List;)V

    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :cond_82
    :goto_82
    return-void
.end method

.method public final updateLocked(Z)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/translation/TranslationManagerServiceImpl;->updateRemoteServiceLocked$4()V

    return p1
.end method

.method public final updateRemoteServiceLocked$4()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/translation/TranslationManagerService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "TranslationManagerServiceImpl"

    const-string/jumbo v1, "updateRemoteService(): destroying old remote service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    invoke-virtual {v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl;->mRemoteTranslationService:Lcom/android/server/translation/RemoteTranslationService;

    :cond_1d
    return-void
.end method

.method public final updateUiTranslationStateLocked(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;)V
    .registers 24

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object/from16 v9, p5

    move/from16 v0, p6

    iget-object v2, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v2

    const-string/jumbo v10, "TranslationManagerServiceImpl"

    if-nez v2, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown activity or it was finished to query for update translation state for token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for state= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v10}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_2f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mLastActivityTokens:Ljava/lang/ref/WeakReference;

    const/4 v11, 0x3

    if-ne v4, v11, :cond_3e

    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mWaitingFinishedCallbackActivities:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3e
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    :try_start_40
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-interface/range {v2 .. v8}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4d} :catch_4f

    move v7, v4

    goto :goto_57

    :catch_4f
    move-exception v0

    move v7, v4

    const-string/jumbo v2, "Update UiTranslationState fail: "

    invoke-static {v2, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_57
    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getActivityName(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v2, v0, v3}, Lcom/android/server/translation/TranslationManagerServiceImpl;->getAppUidByComponentName(Landroid/content/Context;Landroid/content/ComponentName;I)I

    move-result v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    const/4 v8, 0x2

    const-string v12, " packageName="

    const-string v13, " for app with uid="

    const-string/jumbo v14, "Updating to translation state="

    const/4 v15, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8f

    if-eqz v7, :cond_c9

    invoke-static {v7, v6, v14, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but no active translation was found for it"

    invoke-static {v0, v5, v3, v10}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    :goto_8c
    move v0, v2

    move v4, v7

    goto :goto_cb

    :cond_8f
    if-eqz v7, :cond_a2

    if-eq v7, v15, :cond_9d

    if-eq v7, v8, :cond_98

    if-eq v7, v11, :cond_8c

    goto :goto_c9

    :cond_98
    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-nez v0, :cond_c9

    goto :goto_8c

    :cond_9d
    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v0, :cond_c9

    goto :goto_8c

    :cond_a2
    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-object v3, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/translation/TranslationSpec;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-boolean v0, v0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    if-eqz v0, :cond_8c

    move v4, v8

    :goto_c7
    move v0, v15

    goto :goto_cb

    :cond_c9
    :goto_c9
    move v4, v7

    goto :goto_c7

    :goto_cb
    if-eqz v0, :cond_d7

    move-object/from16 v3, p2

    move v0, v2

    move v2, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    goto :goto_d8

    :cond_d7
    move v0, v2

    :goto_d8
    iget-object v2, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    if-eqz v7, :cond_fb

    if-eq v7, v15, :cond_f6

    if-eq v7, v8, :cond_f1

    if-eq v7, v11, :cond_e9

    goto :goto_12f

    :cond_e9
    if-eqz v2, :cond_12f

    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12f

    :cond_f1
    if-eqz v2, :cond_12f

    iput-boolean v0, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_12f

    :cond_f6
    if-eqz v2, :cond_12f

    iput-boolean v15, v2, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    goto :goto_12f

    :cond_fb
    if-nez v2, :cond_12f

    :try_start_fd
    invoke-interface {v9, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_100} :catch_10f

    iget-object v0, v1, Lcom/android/server/translation/TranslationManagerServiceImpl;->mActiveTranslations:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct {v1, v6, v3, v4, v5}, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;-><init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;)V

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12f

    :catch_10f
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Failed to call linkToDeath for translated app with uid="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; activity is already dead"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/translation/TranslationManagerServiceImpl;->invokeCallbacks(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/lang/String;I)V

    goto :goto_13a

    :cond_12f
    :goto_12f
    sget-boolean v0, Lcom/android/server/translation/TranslationManagerServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_13a

    invoke-static {v7, v6, v14, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13a
    :goto_13a
    return-void
.end method
