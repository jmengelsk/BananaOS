.class public final enum Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

.field public static final enum AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    const-string v1, "AES_256_GCM_SIV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    const-string v2, "AES_256_CBC_HMAC_SHA256"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    filled-new-array {v0, v1}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    move-result-object v0

    sput-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;
    .registers 2

    const-class v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    return-object p0
.end method

.method public static values()[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;
    .registers 1

    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->$VALUES:[Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    invoke-virtual {v0}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    return-object v0
.end method
