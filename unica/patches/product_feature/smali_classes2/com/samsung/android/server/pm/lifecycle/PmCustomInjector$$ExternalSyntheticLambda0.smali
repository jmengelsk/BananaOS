.class public final synthetic Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$Producer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final produce(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;
    .registers 3

    iget p0, p0, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_70

    new-instance p0, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/pm/rescueparty/PackageManagerBackupController;-><init>(Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;)V

    return-object p0

    :pswitch_f  #0x7
    new-instance p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_17  #0x6
    new-instance p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;

    iget-object p1, p2, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    return-object p0

    :pswitch_21  #0x5
    new-instance p0, Lcom/samsung/android/server/pm/scpm/SharedUidAllowListHelper;

    invoke-direct {p0}, Lcom/samsung/android/server/pm/scpm/SharedUidAllowListHelper;-><init>()V

    return-object p0

    :pswitch_27  #0x4
    new-instance p0, Lcom/samsung/android/server/pm/scpm/SignaturePermissionAllowListHelper;

    invoke-direct {p0}, Lcom/samsung/android/server/pm/scpm/SignaturePermissionAllowListHelper;-><init>()V

    return-object p0

    :pswitch_2d  #0x3
    new-instance p0, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/scpm/SafeModeAllowListHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-object p0

    :pswitch_33  #0x2
    new-instance p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    new-instance p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    invoke-direct {p2}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    new-instance p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;-><init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V

    iput-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mAppCategoryCallback:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

    iput-boolean p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mEnabled:Z

    return-object p0

    :pswitch_53  #0x1
    new-instance p0, Landroid/os/HandlerThread;

    const-string/jumbo p1, "UserManagerHandler"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0

    :pswitch_63  #0x0
    new-instance p0, Lcom/samsung/android/server/pm/install/SkippingApks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    return-object p0

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_63  #00000000
        :pswitch_53  #00000001
        :pswitch_33  #00000002
        :pswitch_2d  #00000003
        :pswitch_27  #00000004
        :pswitch_21  #00000005
        :pswitch_17  #00000006
        :pswitch_f  #00000007
    .end packed-switch
.end method
