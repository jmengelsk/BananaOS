.class public final enum Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

.field public static final enum PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;


# instance fields
.field private final mId:I

.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 6

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    sget-object v5, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v4, "ELM"

    const/4 v5, 0x0

    const-string v1, "ELM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v5, "KLM"

    const/4 v6, 0x1

    const-string v2, "KLM"

    const/4 v4, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v6, "DO"

    const/4 v7, 0x2

    const-string v3, "DO"

    const/4 v5, 0x3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string/jumbo v7, "PO"

    const/4 v8, 0x3

    const-string/jumbo v4, "PO"

    const/4 v6, 0x4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v8, "KES"

    const/4 v9, 0x4

    const-string v5, "KME"

    const/4 v7, 0x5

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v4, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    new-instance v5, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    const-string v9, "B2C"

    const/4 v10, 0x5

    const-string v6, "B2C"

    const/4 v8, 0x6

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    iput-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mId:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->mValue:I

    return p0
.end method
