.class public final synthetic Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usage/UsageStatsService$BinderService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService$BinderService;IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsService$BinderService;

    iput p2, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usage/UsageStatsService$BinderService;

    iget v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/android/server/usage/UsageStatsService$BinderService$$ExternalSyntheticLambda0;->f$3:Z

    check-cast p1, Landroid/app/usage/AppStandbyInfo;

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, p1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-ne v3, v1, :cond_19

    goto :goto_29

    :cond_19
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return p0
.end method
