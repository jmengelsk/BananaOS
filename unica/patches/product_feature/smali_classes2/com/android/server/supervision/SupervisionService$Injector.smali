.class public final Lcom/android/server/supervision/SupervisionService$Injector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_e
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method
