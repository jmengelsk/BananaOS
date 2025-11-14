.class public final Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mApplicationPackageNameVersion:Ljava/util/Map;

.field public mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

.field public mAttestationHardwareBacked:Z

.field public mAttestationVersion:Ljava/lang/Integer;

.field public mKeyBootPatchLevel:Ljava/lang/Integer;

.field public mKeyOsPatchLevel:Ljava/lang/Integer;

.field public mKeyOsVersion:Ljava/lang/Integer;

.field public mKeyVendorPatchLevel:Ljava/lang/Integer;

.field public mKeymasterHardwareBacked:Z

.field public mKeymasterVersion:Ljava/lang/Integer;

.field public mVerifiedBootLocked:Ljava/lang/Boolean;

.field public mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method public static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .locals 17

    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    iput-boolean v2, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    iput-object v1, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_17

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValueExact()I

    move-result v5

    sget-object v6, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    sget-object v7, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const-string v8, "Invalid security level."

    sget-object v9, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const/4 v10, 0x2

    if-eqz v5, :cond_2

    if-eq v5, v4, :cond_1

    if-ne v5, v10, :cond_0

    move-object v5, v9

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v5, v7

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    if-ne v5, v7, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    iput-boolean v5, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v3, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValueExact()I

    move-result v11

    if-eqz v11, :cond_6

    if-eq v11, v4, :cond_5

    if-ne v11, v10, :cond_4

    move-object v6, v9

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v6, v7

    :cond_6
    :goto_2
    if-ne v6, v7, :cond_7

    move v6, v4

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    iput-boolean v6, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    array-length v7, v6

    move v8, v2

    :goto_4
    if-ge v8, v7, :cond_d

    aget-object v9, v6, v8

    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v11

    const/16 v12, 0x1fd

    if-eq v11, v12, :cond_b

    const/16 v12, 0x2c5

    if-eq v11, v12, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v9

    new-instance v11, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v11, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v9

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    array-length v13, v12

    move v14, v2

    :goto_5
    if-ge v14, v13, :cond_9

    aget-object v15, v12, v14

    check-cast v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v15, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    array-length v12, v9

    move v13, v2

    :goto_6
    if-ge v13, v12, :cond_a

    aget-object v14, v9, v13

    invoke-static {v14}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_a
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v9, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v9, :cond_c

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    :cond_c
    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v1, 0x7

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    array-length v3, v1

    move v6, v2

    :goto_8
    if-ge v6, v3, :cond_16

    aget-object v7, v1, v6

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    const/16 v9, 0x2ce

    if-eq v8, v9, :cond_14

    const/16 v9, 0x2cf

    if-eq v8, v9, :cond_13

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    goto/16 :goto_b

    :pswitch_2
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    goto/16 :goto_b

    :pswitch_5
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    instance-of v9, v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v9, :cond_e

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    :goto_9
    iput-object v8, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    invoke-virtual {v7, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValueExact()I

    move-result v8

    if-eqz v8, :cond_12

    if-eq v8, v4, :cond_11

    if-eq v8, v10, :cond_10

    if-ne v8, v5, :cond_f

    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid verified boot state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    goto :goto_a

    :cond_11
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    goto :goto_a

    :cond_12
    sget-object v8, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    :goto_a
    iput-object v8, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    iget-object v8, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v5, :cond_15

    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    goto :goto_b

    :cond_13
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    goto :goto_b

    :cond_14
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    :cond_15
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    :cond_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "No attestation extension found in certificate."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .locals 0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    return p0
.end method

.method public static getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;
    .locals 0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
