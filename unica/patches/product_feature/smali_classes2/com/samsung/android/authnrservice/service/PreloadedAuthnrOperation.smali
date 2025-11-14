.class public final Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;


# instance fields
.field public final manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

.field public taID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->taID:I

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final declared-synchronized process(Ljava/lang/String;[B)[B
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "authnr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_18

    const-string/jumbo p1, "PAO"

    const-string/jumbo p2, "invalid appId"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception p1

    goto :goto_44

    :cond_18
    if-eqz p2, :cond_39

    :try_start_1a
    array-length p1, p2

    if-nez p1, :cond_1e

    goto :goto_39

    :cond_1e
    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    iget v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->taID:I

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object p1

    if-eqz p1, :cond_2e

    array-length p2, p1
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_16

    if-nez p2, :cond_2c

    goto :goto_2e

    :cond_2c
    monitor-exit p0

    return-object p1

    :cond_2e
    :goto_2e
    :try_start_2e
    const-string/jumbo p1, "PAO"

    const-string/jumbo p2, "ta result is null"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_16

    monitor-exit p0

    return-object v0

    :cond_39
    :goto_39
    :try_start_39
    const-string/jumbo p1, "PAO"

    const-string/jumbo p2, "input error"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_16

    monitor-exit p0

    return-object v0

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_16

    throw p1
.end method
