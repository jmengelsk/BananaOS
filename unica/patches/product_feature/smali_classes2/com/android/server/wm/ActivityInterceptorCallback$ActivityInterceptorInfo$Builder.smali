.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public final mCallingPid:I

.field public final mCallingUid:I

.field public mCheckedOptions:Landroid/app/ActivityOptions;

.field public mClearOptionsAnimation:Ljava/lang/Runnable;

.field public final mIntent:Landroid/content/Intent;

.field public final mRealCallingPid:I

.field public final mRealCallingUid:I

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public mResolvedType:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIIIILandroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    iput p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingUid:I

    iput p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPid:I

    iput p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingUid:I

    iput p4, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mRealCallingPid:I

    iput p5, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mUserId:I

    iput-object p6, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mIntent:Landroid/content/Intent;

    iput-object p7, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p8, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;
    .locals 1

    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;-><init>(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;)V

    return-object v0
.end method

.method public setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setCheckedOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mCheckedOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public setClearOptionsAnimationRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mClearOptionsAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo$Builder;->mResolvedType:Ljava/lang/String;

    return-object p0
.end method
