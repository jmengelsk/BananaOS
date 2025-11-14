.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.super Landroid/os/Binder;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

.field public static mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field public static mIsBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/saccessory_manager/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cover_pubkey_blocklist.txt"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return-void
.end method

.method public static isThisKeyBlocklisted(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const-string v1, ","

    iget-object v2, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SAccessoryManager_CertBlocklister"

    const-string/jumbo v4, "This key is in blocklist"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    monitor-exit v2

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v2

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
