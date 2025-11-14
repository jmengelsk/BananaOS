.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:[Ljava/security/cert/Certificate;

.field public final synthetic f$7:Landroid/content/pm/IOnChecksumsReadyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .locals 0

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$2:Ljava/util/List;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$3:I

    iput p5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$4:I

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$6:[Ljava/security/cert/Certificate;

    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$7:Landroid/content/pm/IOnChecksumsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$2:Ljava/util/List;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$3:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$6:[Ljava/security/cert/Certificate;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$7:Landroid/content/pm/IOnChecksumsReadyListener;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    const/4 v9, 0x2

    invoke-direct {p0, v9, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(ILcom/android/server/pm/PackageManagerService;)V

    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v10, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    const/4 v11, 0x3

    invoke-direct {v1, v11, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(ILcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v8, p0, v9, v10, v1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$2:Ljava/util/List;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$3:I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$4:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$6:[Ljava/security/cert/Certificate;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda52;->f$7:Landroid/content/pm/IOnChecksumsReadyListener;

    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/android/server/pm/ApkChecksums$Injector;

    new-instance p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(ILcom/android/server/pm/PackageManagerService;)V

    new-instance v9, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v9, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda22;-><init>(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;

    invoke-direct {v10, v1}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    new-instance v1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;

    const/4 v11, 0x1

    invoke-direct {v1, v11, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda57;-><init>(ILcom/android/server/pm/PackageManagerService;)V

    invoke-direct {v8, p0, v9, v10, v1}, Lcom/android/server/pm/ApkChecksums$Injector;-><init>(Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;Lcom/android/server/pm/ApkChecksums$Injector$Producer;)V

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/ApkChecksums;->getChecksums(Ljava/util/List;IILjava/lang/String;[Ljava/security/cert/Certificate;Landroid/content/pm/IOnChecksumsReadyListener;Lcom/android/server/pm/ApkChecksums$Injector;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
