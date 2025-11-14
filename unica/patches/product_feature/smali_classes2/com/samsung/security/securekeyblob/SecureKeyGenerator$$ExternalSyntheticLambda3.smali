.class public final synthetic Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    const-string/jumbo v1, "SHA-1"

    const v2, 0x200000cb

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, [Z

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-boolean v0, p0, v3

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    aput-boolean p1, p0, v3

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    check-cast p0, [I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x20000006

    invoke-static {v6, v5}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    new-array p1, v0, [Z

    aput-boolean v3, p1, v3

    new-instance v5, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4, v0, p1}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;ILjava/lang/Object;)V

    invoke-static {p0, v5}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    aget-boolean p0, p1, v3

    if-nez p0, :cond_0

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result p0

    invoke-static {v2, p0}, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
