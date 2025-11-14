.class public final Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final ALLOW_PRIVILEGED:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

.field public static final BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;


# instance fields
.field public mBasedOnRealCaller:Z

.field public final mCode:I

.field public mOnlyCreatorAllows:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 v1, 0x7f

    const-string v2, "Blocked"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x1

    const-string v2, "Default"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->ALLOW_BY_DEFAULT:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 v1, 0x2

    const-string/jumbo v2, "PRIVILEGED"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    return-void
.end method


# virtual methods
.method public final allows()Z
    .locals 2

    iget p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    const/16 v0, 0x7f

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public setBasedOnRealCaller()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 1

    sget-object v0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    invoke-static {v1}, Lcom/android/server/wm/BackgroundActivityStartController;->balCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    if-eq p0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mOnlyCreatorAllows:Z

    if-eqz v1, :cond_0

    const-string p0, " [onlyCaller]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mBasedOnRealCaller:Z

    if-eqz p0, :cond_1

    const-string p0, " [realCaller]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
