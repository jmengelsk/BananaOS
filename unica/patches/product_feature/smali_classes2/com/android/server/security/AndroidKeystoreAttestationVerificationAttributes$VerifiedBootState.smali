.class final enum Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

.field public static final enum VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string/jumbo v1, "VERIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    new-instance v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string/jumbo v2, "SELF_SIGNED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    new-instance v2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string/jumbo v3, "UNVERIFIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    new-instance v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->$VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .locals 1

    const-class v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .locals 1

    sget-object v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->$VALUES:[Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    invoke-virtual {v0}, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object v0
.end method
