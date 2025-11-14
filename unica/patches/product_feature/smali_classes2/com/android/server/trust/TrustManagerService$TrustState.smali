.class final enum Lcom/android/server/trust/TrustManagerService$TrustState;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/trust/TrustManagerService$TrustState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/trust/TrustManagerService$TrustState;

    const-string/jumbo v1, "UNTRUSTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    new-instance v1, Lcom/android/server/trust/TrustManagerService$TrustState;

    const-string/jumbo v2, "TRUSTABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    new-instance v2, Lcom/android/server/trust/TrustManagerService$TrustState;

    const-string/jumbo v3, "TRUSTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/trust/TrustManagerService$TrustState;

    move-result-object v0

    sput-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 1

    const-class v0, Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 1

    sget-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {v0}, [Lcom/android/server/trust/TrustManagerService$TrustState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/trust/TrustManagerService$TrustState;

    return-object v0
.end method
