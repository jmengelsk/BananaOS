.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;
.super Ljava/lang/Exception;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field private final alertMessageToSend:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;->alertMessageToSend:[B

    return-void
.end method
