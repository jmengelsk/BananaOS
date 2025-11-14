.class public final Lcom/samsung/android/server/hwrs/PreconditionObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final URI_CAMERASHARE:Landroid/net/Uri;

.field public final URI_STORAGESHARE:Landroid/net/Uri;

.field public final mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

.field public mCameraShareInstalled:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserHandle:Landroid/os/UserHandle;

.field public final mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

.field public mIsAddedAccountListener:Z

.field public mIsRegisteredCameraShareObserver:Z

.field public mIsRegisteredStorageShareObserver:Z

.field public mIsValidState:Z

.field public mListener:Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

.field public final mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

.field public final mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

.field public mState:I

.field public mStorageShareInstalled:Z

.field public mUserId:I

.field public settingList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "hwrs_camerashare_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    const-string/jumbo v0, "hwrs_storageshare_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_STORAGESHARE:Landroid/net/Uri;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    new-instance v0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "[HWRS_SYS]PreconditionObserver"

    const-string/jumbo v0, "PreconditionObserver entered"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/hwrs/PreconditionObserver$1;-><init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    return-void
.end method


# virtual methods
.method public final getValues(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-static {v0, p1, v1, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getValues ID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v0, "Package : "

    const-string/jumbo v1, "[HWRS_SYS]PreconditionObserver"

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "("

    const-string v4, ") installed"

    invoke-static {v0, p1, v3, p0, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSamsungAccountLogin()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p0, "com.osp.app.signin"

    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    const-string/jumbo v0, "[HWRS_SYS]PreconditionObserver"

    if-lez p0, :cond_0

    const-string/jumbo p0, "SamsungAccount login"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo p0, "SamsungAccount not login"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSettingEnabled$1()Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->settingList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v7, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-static {v3, v5, v2, v7}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isSettingEnabled - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    :goto_2
    move v3, v6

    goto :goto_0

    :cond_3
    return v3
.end method

.method public final meetConditions()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "meetConditions - current state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mListener:Lcom/samsung/android/server/hwrs/PreconditionObserver$2;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver$2;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->meetConditions()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onChanged - isValid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsValidState:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->setValues(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->setValues(I)V

    :cond_1
    return-void
.end method

.method public removeAndSendMessageDelayed(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public removeAndSendMessageDelayed(IJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mHandler:Lcom/samsung/android/server/hwrs/PreconditionObserver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setValues(I)V
    .locals 5

    const-string/jumbo v0, "setValues ID : hwrs_service, value : "

    const-string/jumbo v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x1

    iget v3, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    const-string/jumbo v4, "hwrs_service"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    invoke-static {v0, v4, p1, p0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const-string/jumbo p0, "setValues ID : hwrs_service, same value"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startUser(Landroid/os/UserHandle;)V
    .locals 3

    const-string/jumbo v0, "[HWRS_SYS]PreconditionObserver"

    const-string/jumbo v1, "startUser entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/16 v2, -0x2710

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v1

    :goto_0
    if-eq v1, v2, :cond_1

    const-string/jumbo p0, "startUser - invalid request!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startUser : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->removeAndSendMessageDelayed(IJ)V

    return-void
.end method

.method public final stopUser()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCurrentUserHandle:Landroid/os/UserHandle;

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mCameraShareInstalled:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredCameraShareObserver:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mStorageShareInstalled:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsRegisteredStorageShareObserver:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    const-string/jumbo v2, "[HWRS_SYS]PreconditionObserver"

    if-nez v0, :cond_2

    const-string/jumbo v0, "removeOnAccountsUpdatedListener - already added"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "removeOnAccountsUpdatedListener"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$2;

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    iget v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$3;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iput-boolean v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mIsAddedAccountListener:Z

    :goto_0
    iput v1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mUserId:I

    return-void
.end method

.method public final updateFlag(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateFlag - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[HWRS_SYS]PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    return-void

    :cond_0
    iget p2, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/server/hwrs/PreconditionObserver;->mState:I

    return-void
.end method
