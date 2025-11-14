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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->taID:I

    invoke-static {}, Lcom/samsung/android/authenticator/AuthenticatorManager;->getInstance()Lcom/samsung/android/authenticator/AuthenticatorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->manager:Lcom/samsung/android/authenticator/AuthenticatorManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;
    .registers 2

    const-class v0, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    invoke-direct {v1}, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;-><init>()V

    sput-object v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;->sAssetAuthnrOperation:Lcom/samsung/android/authnrservice/service/AssetAuthnrOperation;
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
