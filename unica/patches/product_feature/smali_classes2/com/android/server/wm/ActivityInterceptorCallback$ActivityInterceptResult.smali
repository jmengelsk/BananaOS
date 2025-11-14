.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mActivityOptions:Landroid/app/ActivityOptions;

.field public final mActivityResolved:Z

.field public final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityOptions:Landroid/app/ActivityOptions;

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityResolved:Z

    return-void
.end method


# virtual methods
.method public getActivityOptions()Landroid/app/ActivityOptions;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public isActivityResolved()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityResolved:Z

    return p0
.end method
