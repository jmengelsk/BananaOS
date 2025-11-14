.class public final Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$PerUserPackageMonitor;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/UserData;->deletePackageData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
