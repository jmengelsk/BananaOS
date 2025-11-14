.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/PowerGroup;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerGroup;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/PowerGroup;

    iput p4, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/PowerManagerService;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$1:I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/PowerGroup;

    iget v4, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$3:I

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lcom/android/server/power/PowerGroup;->mGroupId:I

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->findForegroundPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/power/PowerHistorian$WakeUpRecord;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/PowerHistorian$WakeUpRecord;-><init>(IIIZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    return-void
.end method
