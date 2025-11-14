.class public final enum Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

.field public static final enum STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

.field public static final enum WAIT_CERT_CHAIN:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

.field public static final enum WAIT_CHALLENGE_AUTH:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

.field public static final enum WAIT_DIGEST:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    const-string/jumbo v1, "STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    const-string/jumbo v2, "WAIT_DIGEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_DIGEST:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    new-instance v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    const-string/jumbo v3, "WAIT_CERT_CHAIN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_CERT_CHAIN:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    new-instance v3, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    const-string/jumbo v4, "WAIT_CHALLENGE_AUTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->WAIT_CHALLENGE_AUTH:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->$VALUES:[Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;
    .registers 2

    const-class v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;
    .registers 1

    sget-object v0, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->$VALUES:[Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    return-object v0
.end method
