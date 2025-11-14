.class public final enum Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
.super Ljava/lang/Enum;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/stats/pull/psi/PsiData$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public static final enum CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public static final enum IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public static final enum MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    new-instance v1, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    const-string/jumbo v2, "MEMORY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    new-instance v2, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    const-string v3, "IO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->$VALUES:[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
    .registers 2

    const-class v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;
    .registers 1

    sget-object v0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->$VALUES:[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    invoke-virtual {v0}, [Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    return-object v0
.end method
