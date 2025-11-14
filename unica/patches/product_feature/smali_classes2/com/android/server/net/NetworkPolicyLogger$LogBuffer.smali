.class public final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final sDate:Ljava/util/Date;

.field public static final sFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field public mCursor:J

.field public final mDataList:Ljava/util/ArrayList;

.field public final mMaxSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    return-void
.end method


# virtual methods
.method public final getNextSlot()Lcom/android/server/net/NetworkPolicyLogger$Data;
    .locals 5

    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mCursor:J

    iget v2, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mMaxSize:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    return-object p0
.end method

.method public final reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NULL"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    iget-wide v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    sget-object v3, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v3, v1, v2}, Ljava/util/Date;->setTime(J)V

    sget-object v1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyLogger$Data;

    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    const-string v3, ": "

    const-string v4, " changed to "

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_1
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    const-string v3, "Interfaces of netId="

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    const-string/jumbo v3, "Roaming of netId="

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    const-string/jumbo v3, "metered-denylist for "

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_4
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    const-string/jumbo v3, "metered-allowlist for "

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_5
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    const-string v4, "App idle whitelist state of uid "

    invoke-static {v2, v4, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_6
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firewall chain "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyLogger;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_7
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v2, v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->getUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_8
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {v2, v4, v1, v3}, Lcom/android/server/net/NetworkPolicyLogger;->getTempPowerSaveWlChangedLog(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_9
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Parole state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_a
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    const-string v4, "App idle state of uid "

    invoke-static {v2, v4, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_b
    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeviceIdleMode enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_c
    iget-boolean v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Changed restrictBackground: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_d
    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    const-string/jumbo v2, "Remove state for u"

    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_e
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    const-string/jumbo v3, "Meteredness of netId="

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_f
    iget v2, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v2, v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->getPolicyChangedLog(III)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    sget v5, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    invoke-static {v4}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v4}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v4, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iget v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    invoke-static {v3, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_12
    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
