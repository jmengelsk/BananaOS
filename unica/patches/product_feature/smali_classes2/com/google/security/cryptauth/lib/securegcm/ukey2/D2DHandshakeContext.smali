.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final contextPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "ukey2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V
    .registers 5

    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;->AES_256_CBC_HMAC_SHA256:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    filled-new-array {v0}, [Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$NextProtocol;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    sget-object v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne p1, v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-static {v1, v0}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->create_context(Z[I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    return-void
.end method

.method private static native create_context(Z[I)J
.end method

.method private static native get_next_handshake_message(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native is_handshake_complete(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native parse_handshake_message(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;,
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;,
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;
        }
    .end annotation
.end method

.method private static native to_connection_context(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;
        }
    .end annotation
.end method


# virtual methods
.method public final getNextHandshakeMessage()[B
    .registers 3

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->get_next_handshake_message(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final isHandshakeComplete()Z
    .registers 3

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->is_handshake_complete(J)Z

    move-result p0

    return p0
.end method

.method public final parseHandshakeMessage([B)V
    .registers 4

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v0, v1, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parse_handshake_message(J[B)V

    return-void
.end method

.method public final toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;
    .registers 4

    new-instance v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    iget-wide v1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->contextPtr:J

    invoke-static {v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->to_connection_context(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;-><init>(J)V

    return-object v0
.end method
