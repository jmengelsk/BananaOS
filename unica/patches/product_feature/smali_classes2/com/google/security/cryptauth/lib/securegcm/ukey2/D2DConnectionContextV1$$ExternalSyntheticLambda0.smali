.class public final synthetic Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintStream;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
