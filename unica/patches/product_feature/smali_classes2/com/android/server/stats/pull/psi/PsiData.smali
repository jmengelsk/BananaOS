.class public final Lcom/android/server/stats/pull/psi/PsiData;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

.field public final mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public final mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/psi/PsiData;->mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    iput-object p2, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    iput-object p3, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    return-void
.end method
