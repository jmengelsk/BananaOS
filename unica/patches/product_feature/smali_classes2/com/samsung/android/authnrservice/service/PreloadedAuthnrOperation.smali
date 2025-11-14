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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->taID:I

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    .locals 2

    const-class v0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->sPreloadedAuthnrOperation:Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized process(Ljava/lang/String;[B)[B
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "authnr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "PAO"

    const-string/jumbo p2, "invalid appId"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    array-length p1, p2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    iget v1, p0, Lcom/samsung/android/authnrservice/service/PreloadedAuthnrOperation;->taID:I

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/authenticator/AuthenticatorManager;->execute(I[B)[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length p2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object p1

    :cond_3
    :goto_0
    :try_start_2
    const-string/jumbo p1, "PAO"

    const-string/jumbo p2, "ta result is null"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :goto_1
    :try_start_3
    const-string/jumbo p1, "PAO"

    const-string/jumbo p2, "input error"

    invoke-static {p1, p2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
