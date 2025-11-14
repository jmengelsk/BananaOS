.class public final Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;


# instance fields
.field public final manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

.field public taID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->taID:I

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;
    .locals 2

    const-class v0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;
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
