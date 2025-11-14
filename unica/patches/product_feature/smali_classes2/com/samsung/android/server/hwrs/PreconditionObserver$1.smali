.class public final Lcom/samsung/android/server/hwrs/PreconditionObserver$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 10

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v0, :cond_d

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->stopUser()V

    return-void

    :cond_11
    const-string/jumbo p1, "start entered"

    const-string/jumbo v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez p1, :cond_21

    const/16 p1, -0x2710

    goto :goto_25

    :cond_21
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p1

    :goto_25
    new-instance v2, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    iput p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    iput-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mListener:Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    const-string/jumbo p1, "com.samsung.android.hwresourceshare"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    const-string/jumbo p1, "com.samsung.android.hwresourceshare.storage"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    const-string/jumbo p1, "initCheck"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->settingList:Ljava/util/List;

    iget-boolean v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    if-eqz v2, :cond_57

    const-string/jumbo v2, "hwrs_camerashare_setting"

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->settingList:Ljava/util/List;

    const-string/jumbo v2, "hwrs_storageshare_setting"

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSamsungAccountLogin()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    const/4 p1, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSettingEnabled$1()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    const/4 v3, 0x0

    if-nez p1, :cond_8e

    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    if-eqz p1, :cond_8e

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    iget v5, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    :cond_8e
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    if-nez p1, :cond_a5

    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    if-eqz p1, :cond_a5

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_STORAGESHARE:Landroid/net/Uri;

    iget v5, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-virtual {p1, v4, v3, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    :cond_a5
    iget-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    if-eqz p1, :cond_b0

    const-string/jumbo p1, "addOnAccountsUpdatedListener - already added"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    :cond_b0
    const-string/jumbo p1, "addOnAccountsUpdatedListener"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    const-string/jumbo v2, "com.osp.app.signin"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    invoke-virtual {p1, v4, v3, v0, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    if-eqz p1, :cond_e4

    const-string/jumbo p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_e4
    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    :goto_e6
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->meetConditions()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mIsValidState : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    invoke-static {v1, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method
