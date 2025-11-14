.class public final Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;
.super Landroid/content/IIntentSender$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageArchiver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageArchiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p3, "android.content.pm.extra.UNARCHIVE_STATUS"

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo p1, "android.intent.extra.INTENT"

    const-class p3, Landroid/content/Intent;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string/jumbo p3, "android.intent.extra.USER"

    const-class p4, Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    iget-object p4, p3, Lcom/android/server/pm/PackageArchiver;->mAppStateHelper:Lcom/android/server/pm/AppStateHelper;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p5

    iget-object p3, p3, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iget-object p4, p4, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class p5, Landroid/app/ActivityManager;

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager;

    invoke-virtual {p4, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p3

    const/16 p4, 0x64

    if-gt p3, p4, :cond_2

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$UnarchiveIntentSender;->this$0:Lcom/android/server/pm/PackageArchiver;

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    :goto_1
    return-void
.end method
