.class public final Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static volatile sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;


# direct methods
.method public static getInstance(Ljava/lang/String;Z)Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    sget-object v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->algorithmSet:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1a
    if-eqz p1, :cond_22

    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperSupportSign;

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_22
    sget-object p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->algorithmSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_34
    sget-object p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->algorithmSet:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    new-instance p1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;

    invoke-direct {p1, p0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_48
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v0, "Not supported algorithm "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo p1, "algorithm is empty"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
