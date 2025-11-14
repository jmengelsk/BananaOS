.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final contextPtr:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo v0, "ukey2_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Path isn\'t set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    return-void
.end method

.method private static native decode_message_from_peer(J[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/CryptoException;
        }
    .end annotation
.end method

.method private static native encode_message_to_peer(J[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method

.method private static native get_session_unique(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException;
        }
    .end annotation
.end method


# virtual methods
.method public final decodeMessageFromPeer([B[B)[B
    .registers 5

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decode_message_from_peer(J[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final encodeMessageToPeer([B[B)[B
    .registers 5

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encode_message_to_peer(J[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSessionUnique()[B
    .registers 3

    iget-wide v0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->contextPtr:J

    invoke-static {v0, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->get_session_unique(J)[B

    move-result-object p0

    return-object p0
.end method
