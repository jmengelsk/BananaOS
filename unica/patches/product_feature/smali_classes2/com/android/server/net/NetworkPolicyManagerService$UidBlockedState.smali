.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALLOWED_REASONS:[I

.field public static final BLOCKED_REASONS:[I


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x20
        0x40
        0x10000
        0x20000
        0x40000
        0x100
        0x200
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x20
        0x4
        0x8
        0x10
        0x40
        0x80
        0x10000
        0x20000
        0x40000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    return-void
.end method

.method public static allowedReasonToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x10

    if-eq p0, v0, :cond_6

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown allowedReason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "METERED_FOREGROUND"

    return-object p0

    :cond_1
    const-string/jumbo p0, "METERED_SYSTEM"

    return-object p0

    :cond_2
    const-string/jumbo p0, "METERED_USER_EXEMPTED"

    return-object p0

    :cond_3
    const-string/jumbo p0, "NOT_IN_BACKGROUND"

    return-object p0

    :cond_4
    const-string p0, "LOW_POWER_STANDBY_ALLOWLIST"

    return-object p0

    :cond_5
    const-string/jumbo p0, "TOP"

    return-object p0

    :cond_6
    const-string/jumbo p0, "RESTRICTED_MODE_PERMISSIONS"

    return-object p0

    :cond_7
    const-string/jumbo p0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    return-object p0

    :cond_8
    const-string/jumbo p0, "POWER_SAVE_ALLOWLIST"

    return-object p0

    :cond_9
    const-string p0, "FOREGROUND"

    return-object p0

    :cond_a
    const-string/jumbo p0, "SYSTEM"

    return-object p0

    :cond_b
    const-string/jumbo p0, "NONE"

    return-object p0
.end method

.method public static blockedReasonToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    const/16 v0, 0x40

    if-eq p0, v0, :cond_5

    const/16 v0, 0x100

    if-eq p0, v0, :cond_4

    const/16 v0, 0x200

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unknown blockedReason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "METERED_ADMIN_DISABLED"

    return-object p0

    :cond_1
    const-string/jumbo p0, "METERED_USER_RESTRICTED"

    return-object p0

    :cond_2
    const-string p0, "DATA_SAVER"

    return-object p0

    :cond_3
    const-string p0, "FIREWALL_DATA"

    return-object p0

    :cond_4
    const-string p0, "FIREWALL_WIFI"

    return-object p0

    :cond_5
    const-string p0, "APP_BACKGROUND"

    return-object p0

    :cond_6
    const-string p0, "LOW_POWER_STANDBY"

    return-object p0

    :cond_7
    const-string/jumbo p0, "RESTRICTED_MODE"

    return-object p0

    :cond_8
    const-string p0, "APP_STANDBY"

    return-object p0

    :cond_9
    const-string p0, "DOZE"

    return-object p0

    :cond_a
    const-string p0, "BATTERY_SAVER"

    return-object p0

    :cond_b
    const-string/jumbo p0, "NONE"

    return-object p0
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    :goto_0
    const-string/jumbo v3, "|"

    const-string v4, ""

    const/16 v5, 0xb

    if-ge v0, v5, :cond_3

    aget v5, v2, v0

    and-int v6, p0, v5

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v5

    and-int/2addr p0, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object v3, v4

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown blockedReasons: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "NetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEffectiveBlockedReasons(II)I
    .locals 1

    if-nez p0, :cond_0

    return p0

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    :cond_1
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const v0, 0xffff

    and-int/2addr p0, v0

    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    and-int/lit8 p0, p0, -0x8

    :cond_3
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_4

    const v0, -0x30001

    and-int/2addr p0, v0

    :cond_4
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    and-int/lit8 p0, p0, -0x21

    :cond_5
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6

    and-int/lit8 p0, p0, -0x48

    :cond_6
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7

    and-int/lit8 p0, p0, -0x46

    :cond_7
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_8

    and-int/lit8 p0, p0, -0x9

    :cond_8
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const v0, -0x10001

    and-int/2addr p0, v0

    :cond_9
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_a

    and-int/lit8 p0, p0, -0x21

    :cond_a
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_b

    and-int/lit8 p0, p0, -0x41

    :cond_b
    return p0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{blocked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",allowed="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    :goto_0
    const/16 v3, 0xb

    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge p0, v3, :cond_3

    aget v3, v2, p0

    and-int v6, p1, v3

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v3

    and-int/2addr p1, v3

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_4

    move-object v4, v5

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown allowedReasons: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",effective="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "}"

    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deriveUidRules()I
    .locals 4

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0x400

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x67

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v2, v2, 0x67

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x20

    :cond_2
    :goto_1
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x40

    :cond_3
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    const/high16 v2, 0x60000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    or-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_5
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    const/high16 v3, 0x40000

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    :goto_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_6
    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int v0, p0, v2

    if-eqz v0, :cond_7

    or-int/lit8 v1, v1, 0x20

    goto :goto_3

    :cond_7
    and-int/2addr p0, v3

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
