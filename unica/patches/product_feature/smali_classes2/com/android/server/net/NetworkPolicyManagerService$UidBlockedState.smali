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
    .registers 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_12

    sput-object v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    return-void

    nop

    :array_12
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

    :array_2c
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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    return-void
.end method

.method public static allowedReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_6f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_68

    const/4 v0, 0x4

    if-eq p0, v0, :cond_64

    const/16 v0, 0x8

    if-eq p0, v0, :cond_60

    const/16 v0, 0x10

    if-eq p0, v0, :cond_5c

    const/16 v0, 0x20

    if-eq p0, v0, :cond_58

    const/16 v0, 0x40

    if-eq p0, v0, :cond_55

    const/16 v0, 0x80

    if-eq p0, v0, :cond_51

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_4d

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_49

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_45

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

    :cond_45
    const-string/jumbo p0, "METERED_FOREGROUND"

    return-object p0

    :cond_49
    const-string/jumbo p0, "METERED_SYSTEM"

    return-object p0

    :cond_4d
    const-string/jumbo p0, "METERED_USER_EXEMPTED"

    return-object p0

    :cond_51
    const-string/jumbo p0, "NOT_IN_BACKGROUND"

    return-object p0

    :cond_55
    const-string p0, "LOW_POWER_STANDBY_ALLOWLIST"

    return-object p0

    :cond_58
    const-string/jumbo p0, "TOP"

    return-object p0

    :cond_5c
    const-string/jumbo p0, "RESTRICTED_MODE_PERMISSIONS"

    return-object p0

    :cond_60
    const-string/jumbo p0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    return-object p0

    :cond_64
    const-string/jumbo p0, "POWER_SAVE_ALLOWLIST"

    return-object p0

    :cond_68
    const-string p0, "FOREGROUND"

    return-object p0

    :cond_6b
    const-string/jumbo p0, "SYSTEM"

    return-object p0

    :cond_6f
    const-string/jumbo p0, "NONE"

    return-object p0
.end method

.method public static blockedReasonToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_69

    const/4 v0, 0x1

    if-eq p0, v0, :cond_66

    const/4 v0, 0x2

    if-eq p0, v0, :cond_63

    const/4 v0, 0x4

    if-eq p0, v0, :cond_60

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5c

    const/16 v0, 0x20

    if-eq p0, v0, :cond_59

    const/16 v0, 0x40

    if-eq p0, v0, :cond_56

    const/16 v0, 0x100

    if-eq p0, v0, :cond_53

    const/16 v0, 0x200

    if-eq p0, v0, :cond_50

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_4d

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_49

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_45

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

    :cond_45
    const-string/jumbo p0, "METERED_ADMIN_DISABLED"

    return-object p0

    :cond_49
    const-string/jumbo p0, "METERED_USER_RESTRICTED"

    return-object p0

    :cond_4d
    const-string p0, "DATA_SAVER"

    return-object p0

    :cond_50
    const-string p0, "FIREWALL_DATA"

    return-object p0

    :cond_53
    const-string p0, "FIREWALL_WIFI"

    return-object p0

    :cond_56
    const-string p0, "APP_BACKGROUND"

    return-object p0

    :cond_59
    const-string p0, "LOW_POWER_STANDBY"

    return-object p0

    :cond_5c
    const-string/jumbo p0, "RESTRICTED_MODE"

    return-object p0

    :cond_60
    const-string p0, "APP_STANDBY"

    return-object p0

    :cond_63
    const-string p0, "DOZE"

    return-object p0

    :cond_66
    const-string p0, "BATTERY_SAVER"

    return-object p0

    :cond_69
    const-string/jumbo p0, "NONE"

    return-object p0
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_8

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    :goto_f
    const-string/jumbo v3, "|"

    const-string v4, ""

    const/16 v5, 0xb

    if-ge v0, v5, :cond_34

    aget v5, v2, v0

    and-int v6, p0, v5

    if-eqz v6, :cond_31

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_25

    move-object v3, v4

    :cond_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v5

    and-int/2addr p0, v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_34
    if-eqz p0, :cond_5c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3d

    move-object v3, v4

    :cond_3d
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

    :cond_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEffectiveBlockedReasons(II)I
    .registers 3

    if-nez p0, :cond_3

    return p0

    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_a

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    :cond_a
    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_13

    const v0, 0xffff

    and-int/2addr p0, v0

    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_19

    and-int/lit8 p0, p0, -0x8

    :cond_19
    const/high16 v0, 0x40000

    and-int/2addr v0, p1

    if-eqz v0, :cond_22

    const v0, -0x30001

    and-int/2addr p0, v0

    :cond_22
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_28

    and-int/lit8 p0, p0, -0x21

    :cond_28
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2e

    and-int/lit8 p0, p0, -0x48

    :cond_2e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_34

    and-int/lit8 p0, p0, -0x46

    :cond_34
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3a

    and-int/lit8 p0, p0, -0x9

    :cond_3a
    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_43

    const v0, -0x10001

    and-int/2addr p0, v0

    :cond_43
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_49

    and-int/lit8 p0, p0, -0x21

    :cond_49
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4f

    and-int/lit8 p0, p0, -0x41

    :cond_4f
    return p0
.end method

.method public static toString(III)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{blocked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",allowed="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    if-nez p1, :cond_1c

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_74

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    :goto_23
    const/16 v3, 0xb

    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge p0, v3, :cond_48

    aget v3, v2, p0

    and-int v6, p1, v3

    if-eqz v6, :cond_45

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_39

    move-object v4, v5

    :cond_39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v3

    and-int/2addr p1, v3

    :cond_45
    add-int/lit8 p0, p0, 0x1

    goto :goto_23

    :cond_48
    if-eqz p1, :cond_70

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_51

    move-object v4, v5

    :cond_51
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

    :cond_70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_74
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
    .registers 5

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    and-int/lit8 v2, v0, 0x67

    if-eqz v2, :cond_11

    or-int/lit8 v1, v1, 0x40

    goto :goto_19

    :cond_11
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    and-int/lit8 v2, v2, 0x67

    if-eqz v2, :cond_19

    or-int/lit8 v1, v1, 0x20

    :cond_19
    :goto_19
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_1f

    or-int/lit8 v1, v1, 0x40

    :cond_1f
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_25

    or-int/lit8 v1, v1, 0x40

    :cond_25
    const/high16 v2, 0x60000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2d

    or-int/lit8 v1, v1, 0x4

    goto :goto_50

    :cond_2d
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    const/high16 v3, 0x40000

    if-eqz v2, :cond_3e

    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3e

    :goto_3b
    or-int/lit8 v1, v1, 0x2

    goto :goto_50

    :cond_3e
    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_50

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    and-int v0, p0, v2

    if-eqz v0, :cond_4c

    or-int/lit8 v1, v1, 0x20

    goto :goto_50

    :cond_4c
    and-int/2addr p0, v3

    if-eqz p0, :cond_50

    goto :goto_3b

    :cond_50
    :goto_50
    sget-boolean p0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
