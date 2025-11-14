.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public final mCallingFeatureId:Ljava/lang/String;

.field public final mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public final mCheckedOptions:Landroid/app/ActivityOptions;

.field public final mClearOptionsAnimation:Ljava/lang/Runnable;

.field public final mIntent:Landroid/content/Intent;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public final mResolvedType:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingUid:I

    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPid:I

    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingUid:I

    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingPid:I

    iget v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mUserId:I

    iput v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mUserId:I

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mIntent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolvedType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolvedType:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPackage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingFeatureId:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCheckedOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public getCallingFeatureId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getCallingPid()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingPid:I

    return p0
.end method

.method public getCallingUid()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCallingUid:I

    return p0
.end method

.method public getCheckedOptions()Landroid/app/ActivityOptions;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mCheckedOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getClearOptionsAnimationRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getRealCallingPid()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingPid:I

    return p0
.end method

.method public getRealCallingUid()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mRealCallingUid:I

    return p0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public getResolvedType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mResolvedType:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->mUserId:I

    return p0
.end method
